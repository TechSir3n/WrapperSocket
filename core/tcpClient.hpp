#ifndef TCPCLIENT_HPP
#define TCPCLIENT_HPP

#include "Socket.hpp"
#include "Defines.hpp"

namespace wrapper{


    class tcpClient:public Socket{
    public:
        tcpClient(const char *addr_Ip,uint16_t _port,domain_socket _type=domain_socket::IPv4);

        explicit tcpClient(const tcpClient&tcp);

        virtual ~tcpClient() = default;

        tcpClient &operator=(const tcpClient & tcp);

    public:
        int Connect()const;

        int Recv(char *_buffer,size_t len_buf,int _flags=0);

        int Send(const char*  _buffer,size_t len_buf,int _flags=0)const;

    };

}

#endif // TCPCLIENT_HPP
