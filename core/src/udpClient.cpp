
#include "udpClient.hpp"
#include "Exception.hpp"

wrapper::udpClient::udpClient(const char *addr_IP, uint16_t _port, domain_socket _type)
    :Socket(addr_IP,_port,_type)
{
    m_sock=socket(AF_INET,SOCK_DGRAM,0);

    if(m_sock==ERR_INIT){
        throw socket_error("Failed to init socket !");
    }
}

wrapper::udpClient::udpClient(const udpClient &udp)
{
    Socket::operator=(udp);
}

wrapper::udpClient &wrapper::udpClient::operator=(const udpClient &udp)
{
    if(this!=&udp){
        Socket::operator=(udp);
    }

    return  *this;
}

int wrapper::udpClient::sendTo(const char *_buffer, size_t buf_len, int _flags) const
{
    int bytes_send=sendto(m_sock,_buffer,buf_len,_flags,(const sockaddr*)&_addr,sizeof(_addr));

    if(bytes_send==ERR_SEND){
        throw socket_error("Failed to send");
    }

    return bytes_send;
}

int wrapper::udpClient::recvFrom(char *_buffer, size_t buf_len,sockaddr *_from, int _flags)
{
    socklen_t size_from=sizeof(*_from);

    int bytes_recv=recvfrom(m_sock,_buffer,buf_len,_flags,(sockaddr*)&_from,&size_from);

    if(bytes_recv==ERR_RECV){
        throw socket_error("Failed to receive !");
    }

    return bytes_recv;
}
