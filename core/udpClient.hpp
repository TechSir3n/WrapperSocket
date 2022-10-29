#ifndef UDPCLIENT_HPP
#define UDPCLIENT_HPP

#include "Socket.hpp"

namespace wrapper{

    class udpClient:public Socket
    {
    public:
        udpClient(const char *addr_IP, uint16_t _port,domain_socket _type=domain_socket::IPv4);

        udpClient(const udpClient &udp);

        udpClient &operator=(const udpClient&udp);

        virtual ~udpClient() = default;

    public:

        int sendTo(const char *_buffer,size_t buf_len,int _flags=0)const;

        int recvFrom(char * _buffer,size_t buf_len,sockaddr * _from,int _flags=0);
    };

}

#endif // UDPCLIENT_HPP
