#ifndef TCPSERVER_HPP
#define TCPSERVER_HPP

#include "Socket.hpp"


namespace wrapper{

    class tcpServer:public Socket
    {
    public:
        tcpServer(const char *addr_IP,const uint16_t _port,
              domain_socket _type=domain_socket::IPv4);

        tcpServer(const tcpServer &tcp);

        tcpServer &operator=(tcpServer &tcp);

        virtual ~tcpServer() = default;

    public:
        void Bind()const;

        void Listen(uint32_t queue=5)const;

        int Send(const char *_buff,size_t buf_size,int _flags=0)const;

        int Recv(char *_buff,size_t buf_size,int _flags=0);

        sock Accept()const;
    };
}


#endif // TCPSERVER_HPP
