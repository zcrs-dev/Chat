#include "ChatNetworking/server/tcp_server.h"
#include <iostream>

namespace Chat {
    using boost::asio::ip::tcp;
    //port is never used though -- no default constructor on acceptor so it's built out
    TCPServer::TCPServer(IPV ipv, int port) : _ipVersion(ipv), _port(port),
                                              _acceptor(_ioContext, tcp::endpoint(_ipVersion == IPV::V4 ? tcp::v4() : tcp::v6(), _port))
    {
    }

    int TCPServer::Run()
    {
        try{
            startAccept();
            _ioContext.run(); //blocking method until run exits it's always going to work

        } catch (std::exception& e) {
            std::cerr << e.what() << std::endl;
            return -1;
        }
        return 0;
    }

    void TCPServer::Broadcast(const std::string &message) {

        for (auto& connection : _connections){Thank
            connection->Post(message);
        }
    }

    void TCPServer::startAccept()
    {
        //create a new socket object waiting on that io content
        _socket.emplace(_ioContext);

        //asynchronously accept the connection -- create a dummy socket that's idle and waiting for a connection and once it gets it
        //it'll move into the connection itself to handle the connection

        _acceptor.async_accept(*_socket,
                               [this](const boost::system::error_code& error){

                                   //start a connection move clears the optional into wherever you set it.
                                   auto connection = TCPConnection::Create(std::move(*_socket));/home/olsson/devel/CLion/Chat

                                   if (OnJoin) {
                                       OnJoin(connection);
                                   }


                                   //to have the session persist pushing it back into the array/vector

                                   _connections.insert(connection);


                                   if(!error) {
                                       connection->Start([this](const std::string& message){
                                                             if (OnClientMessage) OnClientMessage(message);},
                                                         [&, weak = std::weak_ptr(connection)] {
                                                             //locking pointer to make sure it's correct and if it was properly locked, and we found the same connection obj
                                                             //within our connection set, then we check if onLeave is defined and we call it
                                                             if (auto shared = weak.lock(); shared && _connections.erase(shared)) {
                                                                 if (OnLeave) OnLeave(shared);
                                                             }
                                                         }

                                       );
                                   }
                                   startAccept();
                               });




    }
}


