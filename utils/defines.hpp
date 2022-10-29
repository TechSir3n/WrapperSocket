#ifndef DEFINDER_HPP
#define DEFINDER_HPP

#include <sys/socket.h>
#include <iostream>

namespace wrapper{

#define ERR_INIT -1
#define ERR_BIND -1
#define ERR_SEND -1
#define ERR_RECV -1
#define ERR_LISTEN -1
#define ERR_ACCEPT -1

#ifdef  _WIN32
    SOCKET sock;
    typedef int socklen_t;

#else
    typedef  int32_t sock;
    typedef unsigned int  socklen_t;

#endif

    enum class type_socket : unsigned int{
        TCP=SOCK_STREAM,
        UDP=SOCK_DGRAM,
        RAW=SOCK_RAW
    };

    enum class domain_socket : unsigned int{
        IPv4=AF_INET,
        IPv6=AF_INET6
    };

    enum class type_shutdown:int{
        BAN_READ=0, /* Prohibit reading from socket */
        BAN_WRITE=1, /* Prohibit WRITING to the socket */
        BAN_BOTH=2  /* Prohibit both */
    };

}
#endif // DEFINDER_HPP
