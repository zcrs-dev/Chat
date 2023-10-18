#include <iostream>
#include "../ChatNetworking/include/ChatNetworking/server/tcp_server.h"
#include <fstream>


int main(int argc, char* argv[])
{
    /* all stuff related to binary files */

    std::fstream fout;
    char x = 'A';
    fout.open("file.dat", std::ios::out | std::ios::binary);
    if (fout)
    {
        std::cout << "file.dat found";
        fout.write(&x, sizeof(char));
        fout.close();
    } else {
        std::cout << "error in opening file\n";
    }

    Chat::TCPServer server{Chat::IPV::V4, 1337};

    server.OnJoin = [](Chat::TCPConnection::pointer server) {
        std::cout << "User has joined the server: " << server->GetUsername() << std::endl;

        //send binary data to user///
        /* but first just create the binary based on the username*/



    };
    server.OnLeave = [](Chat::TCPConnection::pointer server) {
        std::cout << "User has left the server: " << server->GetUsername() << std::endl;
    };
    server.OnClientMessage = [&server](const std::string& message) {
        //Parse the message
        //do stuff
        //send message to client
        server.Broadcast(message); //broadcast to all clients
    };


    server.Run();


    return 0;
}