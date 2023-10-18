#pragma once //this file glorified socket
#include <boost/asio.hpp>
#include <memory> //where std pter is
#include <queue>
#include <vector>


namespace Chat
{
    using boost::asio::ip::tcp;
    namespace io = boost::asio;
    //can pass a string too
    //using MessageHandler = std::function<void(std::string)>;

    //pass binary data
    using MessageHandler = std::function<void(const std::vector<uint8_t>&)>;

    using ErrorHandler = std::function<void()>;

    //template that doesn't do anything for now
    using ErrorHandler = std::function<void()>;

    class TCPConnection : public std::enable_shared_from_this<TCPConnection>{
    public:
        //to create a factory method first we define a factory type
        using pointer = std::shared_ptr<TCPConnection>;

        //take a right hand value socket
        static pointer Create(io::ip::tcp::socket&& socket) {
            return pointer(new TCPConnection(std::move(socket)));
        }

        inline const std::string& GetUsername() const { return _username;}

        tcp::socket& Socket() {
            return _socket;
        }

        //kickoff an asynchronous function so we are always waiting for a new message from the client


        void Start(MessageHandler&& messageHandler, ErrorHandler&& errorHandler);

        //be able to send the client new messages; post message to client
//        void Post(const std::string& message);
        void Post(const std::vector<uint8_t>& data);

    private:
        //tcp connection constructor; provide a factory method specifically so that these are all shared pointers fall out of ioContext
        explicit TCPConnection(io::ip::tcp::socket&& socket);

        //asynchronous function that waits for a new message from client
        void asyncRead();

        //once a message is received
        void onRead(boost::system::error_code ec, size_t bytesTransferred);

        //similarly when POST is called, we are going to queue messages so that only one gets sent at a time 
        void asyncWrite();
        void onWrite(boost::system::error_code ec, size_t bytesTransferred);



    private:
        tcp::socket _socket;
        std::string _username;

        std::queue<std::vector<uint8_t>> _outgoingData;

        //with max so it doesn't go on forever
        io::streambuf _streamBuf {65536};

        MessageHandler _messageHandler;
        ErrorHandler _errorHandler;


    };
}