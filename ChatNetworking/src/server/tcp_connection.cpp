#include "ChatNetworking/server/tcp_connection.h"
#include <iostream>

namespace Chat
{
    //constructor is to initialize the ioContext socket
    TCPConnection::TCPConnection(io::ip::tcp::socket&& socket) : _socket(std::move(socket))
    {

        //keep username in connection
        boost::system::error_code ec;
        std::stringstream name;

        name << _socket.remote_endpoint();

        _username = name.str();

    }

    void TCPConnection::Start(MessageHandler&& messageHandler, ErrorHandler&& errorHandler)
    {
        _messageHandler = std::move(messageHandler);
        _errorHandler = std::move(errorHandler);

        asyncRead();
    }

    void TCPConnection::Post(const std::string &message){
        //is the queue empty?
        bool queueIdle = _outgoingMessages.empty();

        _outgoingMessages.push(message);

        if(queueIdle) {
            asyncWrite();
        }

    }

    void TCPConnection::asyncRead() {

        //reads one line at a time
        io::async_read_until(_socket, _streamBuf, "\n",
                             [self = shared_from_this()](boost::system::error_code ec, size_t bytesTransferred) {
                                 self->onRead(ec, bytesTransferred);
                             });
    }

    void TCPConnection::onRead(boost::system::error_code ec, size_t bytesTransferred){

        if (ec) {
            _socket.close(ec);

            //add error handler
            _errorHandler();

            return;
        }

        //once there is no error
        std::stringstream message;
        message << _username << ": " << std::istream(&_streamBuf).rdbuf();

        // rdbuf() consumes bytes on the buffer or if you want to do different things then do something else than rdbuf
        _streamBuf.consume(bytesTransferred);

//        std::cout << message.str();

        //add message handler
        _messageHandler(message.str());

        asyncRead();


    }
    void TCPConnection::asyncWrite() {

        io::async_write(_socket, io::buffer(_outgoingMessages.front()),
                        [self = shared_from_this()](boost::system::error_code ec, size_t bytesTransferred){
                            self->onWrite(ec, bytesTransferred);
                        });
    }
    void TCPConnection::onWrite(boost::system::error_code ec, size_t bytesTransferred){
        //check to see if there is an error
        if (ec){
            _socket.close(ec);

            //add error handler
            _errorHandler();

            return;
        }

        //remove message from queue
        _outgoingMessages.pop();

        if(!_outgoingMessages.empty()){
            asyncWrite();
        }
    }
}