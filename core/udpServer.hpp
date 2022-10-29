#ifndef UDPSERVER_HPP
#define UDPSERVER_HPP

#include "Socket.hpp"

namespace wrapper
{
    class udpServer:public Socket{
    public:
        udpServer(const char *addr_IP,const uint16_t _port,
              domain_socket _type=domain_socket::IPv4);

        virtual ~udpServer() = default;

    public:
        void Bind() const ;

        int SendTo(const char *_buffer,size_t size_buf,int _flags=0 ) const;

        int RecvFrom(char *_buffer,size_t size_buf,sockaddr_in *_from,int _flags=0);
    };
}
#endif // UDPSERVER_HPP
