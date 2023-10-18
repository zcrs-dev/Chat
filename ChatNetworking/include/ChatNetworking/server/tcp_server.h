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


        using OnClientMessageHandler = std::function<void(std::string)>;

    public:
        //TCP Server constructor
        TCPServer(IPV ipv, int port);
        int Run();

        //  broadcast
        void Broadcast(const std::string& message);

    private:
        void startAccept();

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