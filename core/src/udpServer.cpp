
#include "udpServer.hpp"
#include "Definder.hpp"
#include "Exception.hpp"

wrapper::udpServer::udpServer(const char *addr_IP, const uint16_t _port, domain_socket _type)
    :Socket(addr_IP,_port,_type)
{
    m_sock=socket(AF_INET,SOCK_DGRAM,0);

    if(m_sock==ERR_INIT){
        throw socket_error("Failed init sock_dgram socket !");
    }
}

void wrapper::udpServer::Bind() const
{
    if(bind(m_sock,(const sockaddr*)&_addr,sizeof(_addr))==ERR_BIND){
        throw socket_error("Failed to bind socket !");
    }
}

int wrapper::udpServer::SendTo(const char *_buff, size_t size_buf, int _flags) const
{
    int send_bytes = sendto(m_sock,_buff,size_buf,_flags,(const sockaddr*)&_addr,sizeof(_addr));

    if(send_bytes==ERR_SEND){
        throw socket_error("Error on send !");
    }

    return send_bytes;
}

int wrapper::udpServer::RecvFrom(char *_buffer, size_t size_buf,sockaddr_in *_from, int _flags)
{
   socklen_t size_from=sizeof(*_from);

   int recv_bytes=recvfrom(m_sock,_buffer,size_buf,_flags,(sockaddr*)&_from,&size_from);

   if(recv_bytes==ERR_RECV){
       throw socket_error("Failed to receive from socket !");
   }

    return recv_bytes;
}

