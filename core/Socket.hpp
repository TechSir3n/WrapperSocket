#ifndef SOCKET_HPP
#define SOCKET_HPP

#ifdef  __linux__

#include <arpa/inet.h>
#include <errno.h>
#include <netinet/in.h>
#include <netdb.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <string.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <unistd.h>

#elif

#include <winsock2.h>
#include <ws2tcpip.h>

#pragma comment(lib,"WS2_32.lib")

#else
    #error OS is not supported

#endif

#include "Definder.hpp"

namespace wrapper{

    class Socket
    {
     public:
        Socket();

        Socket(const char *addr_IP,const uint16_t _port,
              domain_socket _type=domain_socket::IPv4);

        virtual ~Socket()noexcept;

        const sock & operator*()const;

    protected:
        void operator=(const Socket &sock);


    public:
        int Shutdown(sock t_sock,type_shutdown _how=type_shutdown::BAN_READ);

        void Close(sock t_sock);

    protected:
        sock m_sock;
        sockaddr_in _addr = { };
    };

}

#endif // SOCKET_HPP
