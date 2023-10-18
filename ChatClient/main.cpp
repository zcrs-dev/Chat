#include "ChatNetworking/client/tcp_client.h"
#include <iostream>
#include <thread>



int main(int argc, char* argv[]) {
    Chat::TCPClient client {"localhost", 1337};

    client.OnMessage = [](const std::vector<uint8_t>& data) {
        //handle the received data here
        std::cout << "Received " << data.size() << " bytes of binary data." << std::endl;
        for (uint8_t  byte : data)
        {
            std::cout << std::hex << static_cast<int>(byte) << " ";
        }
        std::cout << std::dec << std::endl;

    };

    std::thread t{[&client] () { client.Run(); }};

    while(true) {
        std::string input;
        getline(std::cin, input);

        if (input == "\\q") break;
        input += "\n";

        //convert the input string to binary data
        std::vector<uint8_t> data(input.begin(), input.end());

        client.Post(data);

    }

    client.Stop();
    t.join();


    return 0;
}
