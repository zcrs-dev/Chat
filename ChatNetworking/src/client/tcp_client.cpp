#include "ChatNetworking/client/tcp_client.h"
#include <iostream>

namespace Chat {
    TCPClient::TCPClient(const std::string &address, int port) : _socket(_ioContext) {
        io::ip::tcp::resolver resolver {_ioContext};
        _endpoints = resolver.resolve(address, std::to_string(port));
    }

    void TCPClient::Run() {
        io::async_connect(_socket, _endpoints, [this](boost::system::error_code ec, io::ip::tcp::endpoint ep)
        { if (!ec)
            asyncRead();

        });

        _ioContext.run();

    }

    void TCPClient::Stop(){

        boost::system::error_code ec;

        _socket.close(ec); //silences error
        if (ec){
            //process error
        }

    }

    void TCPClient::Post(const std::vector<uint8_t>& data){
        bool queueIdle = _outgoingData.empty();
        _outgoingData.push(data);
        if (queueIdle){
            asyncWrite();
        }
    }

    void TCPClient::asyncRead(){
        io::async_read_until(_socket, _streamBuf, "\n", [this](boost::system::error_code ec, size_t bytesTransferred){
            onRead(ec, bytesTransferred);
        });
    }

    void TCPClient::onRead(boost::system::error_code ec, size_t bytesTransferred){
        if (ec) {
            Stop();
            return;
        }

        std::vector<uint8_t> data(bytesTransferred);
        io::buffer_copy(io::buffer(data), _streamBuf.data(), bytesTransferred);
        _streamBuf.consume(bytesTransferred);

        //pass the binary data to the message handler
        OnMessage(data);
//        std::stringstream message;
//        message << std::istream{&_streamBuf}.rdbuf();
//
//        OnMessage(message.str());
        asyncRead();
    }
//original async write function for just text/string
//    void TCPClient::asyncWrite() {
//        io::async_write(_socket, io::buffer(_outgoingData.front()), [this](boost::system::error_code ec, size_t bytesTransferred){
//            onWrite(ec, bytesTransferred);
//        });
//    }

    void TCPClient::asyncWrite() {
        if (!_outgoingData.empty()) {

            io::async_write(_socket, io::buffer(_outgoingData.front().data(), _outgoingData.front().size()), [this](boost::system::error_code ec, size_t bytesTransferred){
                onWrite(ec, bytesTransferred);
            });
        }

    }
    void TCPClient::onWrite(boost::system::error_code ec, size_t bytesTransferred) {
        if (ec) {
            Stop();
            return;
        }

        _outgoingData.pop();

        if (!_outgoingData.empty()){
            asyncWrite();
        }
    }
}