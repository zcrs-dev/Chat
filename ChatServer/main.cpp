#include <iostream>
#include "../ChatNetworking/include/ChatNetworking/server/tcp_server.h"
#include <fstream>
#include <vector>

int main(int argc, char* argv[])
{

    Chat::TCPServer server{Chat::IPV::V4, 1337};

    server.OnJoin = [](Chat::TCPConnection::pointer server) {
        std::cout << "User has joined the server: " << server->GetUsername() << std::endl;

        //send binary data to user///
        /* but first just create the binary based on the username*/



    };
    server.OnLeave = [](Chat::TCPConnection::pointer server) {
        std::cout << "User has left the server: " << server->GetUsername() << std::endl;
    };
    server.OnClientMessage = [&server](const std::vector<uint8_t>& data) {
        // Handle binary data received from the client

        // Process the binary data here, e.g., save it to a file, send it to other clients, etc.
        // Currently, I save the binary data to a file.
        std::fstream fout;
        fout.open("../received_data.dat", std::ios::out | std::ios::binary);
        if (fout) {
//            fout.write(reinterpret_cast<const char*>(data.data()), data.size());
            fout.write(reinterpret_cast<const char*>(data.data()),data.size());
            fout.close();
        } else {
            std::cerr << "Error in opening file to save received data\n";
        }

        // Broadcast the binary data to all clients
        server.Broadcast(data);
    };


    server.Run();


    return 0;
}