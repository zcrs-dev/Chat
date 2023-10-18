#pragma once
#include <boost/asio.hpp>
#include <queue>
#include <vector>

namespace Chat {
    namespace io = boost::asio;

    using MessageHandler = std::function<void(std::vector<uint8_t>&)>;

    class TCPClient {
    public:
        TCPClient(const std::string& address, int port);
        void Run();
        void Stop();
        void Post(const std::vector<uint8_t>& data);

    private:
        void asyncRead();
        void onRead(boost::system::error_code ec, size_t bytesTransferred);
        void asyncWrite();
        void onWrite(boost::system::error_code ec, size_t bytesTransferred);

    public:
        MessageHandler OnMessage;

    private:
        io::io_context _ioContext {};
        io::ip::tcp::socket _socket;

        //resolver

        //store list of tcp points
        io::ip::tcp::resolver::results_type _endpoints;

        io::streambuf _streamBuf{65536};

        std::queue<std::vector<uint8_t>> _outgoingData {};
    };
}