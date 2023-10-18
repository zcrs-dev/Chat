#pragma once
#include <boost/asio.hpp>
#include "tcp_connection.h"
#include <optional>
#include <unordered_set>
#include <functional>


namespace Chat {
    namespace io = boost::asio;

    enum class IPV {

        V4,
        V6
    };

    class TCPServer {
//        using boost::asio::ip::tcp;

        //can register multiple handlers for each event
        using OnJoinHandler = std::function<void(TCPConnection::pointer)>;
        using OnLeaveHandler = std::function<void(TCPConnection::pointer)>;

        //pass string message
        // using OnClientMessageHandler = std::function<void(std::string)>;
        //pass binary information unint8_t -> unsigned char
        using OnClientMessageHandler = std::function<void(const std::vector<uint8_t>&)>;

    public:
        //TCP Server constructor
        TCPServer(IPV ipv, int port);
        int Run();

        //  broadcast message string
        //void Broadcast(const std::string& message);
        //Updated to send binary info
        void Broadcast(const std::vector<uint8_t>& data);

    private:
        void startAccept();
        //receive and handle binary information
        void handledRead(TCPConnection::pointer client, const boost::system::error_code& error);


    public:
        OnJoinHandler OnJoin;
        OnLeaveHandler OnLeave;
        OnClientMessageHandler OnClientMessage;
    private:
        IPV _ipVersion;
        int _port;

        io::io_context _ioContext;
        io::ip::tcp::acceptor _acceptor;

        //optional socket object dummy socket object
        std::optional<io::ip::tcp::socket> _socket;

        //to help pointer stay
        std::unordered_set<TCPConnection::pointer> _connections {};

    };
}