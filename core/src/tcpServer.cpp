
#include "tcpServer.hpp"
#include "Exception.hpp"
#include "Definder.hpp"

wrapper::tcpServer::tcpServer(const char *addr_IP, const uint16_t _port, domain_socket _type)
    :Socket(addr_IP,_port,_type)
{
        m_sock=socket(AF_INET,SOCK_STREAM,0);

        if(m_sock==ERR_INIT){
             throw socket_error("Failed to init sock_stream socket !");
        }
}

wrapper::tcpServer::tcpServer(const tcpServer &tcp)
{
    Socket::operator=(tcp);
}

wrapper::tcpServer &wrapper::tcpServer::operator=(tcpServer &tcp)
{
    if(this!=&tcp){
        Socket::operator=(tcp);
    }
    return *this;
}

void wrapper::tcpServer::Bind()const
{
    if(bind(m_sock,(const sockaddr*)&_addr,sizeof(_addr))==ERR_BIND){
          throw socket_error("Failed to bind socket !");
    }
}

void wrapper::tcpServer::Listen(uint32_t queue)const
{
    if(listen(m_sock,queue)==ERR_LISTEN){
        throw socket_error("Error in listen socket !");
    }
}

int wrapper::tcpServer::Send(const char *_buff, size_t buf_size, int _flags) const
{
    return send(m_sock,_buff,buf_size,_flags);
}

int wrapper::tcpServer::Recv(char *_buff, size_t buf_size, int _flags)
{
    return recv(m_sock,_buff,buf_size,_flags);
}

wrapper::sock wrapper::tcpServer::Accept() const
{
    socklen_t size_addr=sizeof(_addr);

    return accept(m_sock,(sockaddr*)(&_addr),&size_addr);
}
