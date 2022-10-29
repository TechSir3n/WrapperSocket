#include "Socket.hpp"


wrapper::Socket::Socket(): m_sock(0) {    }

wrapper::Socket::Socket(const char *addr_IP,const uint16_t _port,
      domain_socket _type)
{
#ifdef _WIN32
    WSADATA wsa_data;
    if(WSAStartup(MAKEWORD(1,1),&wsa_data)!=0){
         std::cerr<<"Failed init sock !";
    }
    _addr.sin_addr.S_un.S_addr=inet_addr(addr_IP);
#else
    _addr.sin_addr.s_addr=inet_addr(addr_IP);
#endif
    _addr.sin_family=AF_INET;
    _addr.sin_port=htons(_port);
}

const wrapper::sock &wrapper::Socket::operator*() const
{
    return m_sock;
}

void wrapper::Socket::operator=(const Socket &sock)
{
    if(this!=&sock){
        this->_addr=sock._addr;
        this->m_sock=sock.m_sock;
    }
}

wrapper::Socket::~Socket() noexcept
{
#ifdef _WIN32
    WSACleanup()
#else
    ::close(m_sock);
#endif
}

int wrapper::Socket::Shutdown(sock t_sock, type_shutdown _how)
{
    return ::shutdown(t_sock,int(_how));
}

void wrapper::Socket::Close(sock t_sock)
{
    ::close(t_sock);
}

