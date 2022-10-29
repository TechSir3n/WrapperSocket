//#ifndef TCPCLIENT_CPP
//#define TCPCLIENT_CPP


#include "tcpClient.hpp"
#include "Exception.hpp"

wrapper::tcpClient::tcpClient(const char *addr_Ip, uint16_t _port, domain_socket _type)
    :Socket(addr_Ip,_port,_type)
{
    m_sock=socket(AF_INET,SOCK_STREAM,0);

    if(m_sock==ERR_INIT){
        throw socket_error("Failed to init socket !");
    }
}

wrapper::tcpClient::tcpClient(const tcpClient &tcp)
{
    Socket::operator=(tcp);
}

wrapper::tcpClient &wrapper::tcpClient::operator=(const tcpClient &tcp)
{
    if(this!=&tcp){
         Socket::operator=(tcp);
    }

    return *this;
}

int wrapper::tcpClient::Connect() const
{
    return connect(m_sock,(sockaddr*)&_addr,sizeof(_addr));
}

int wrapper::tcpClient::Recv(char *_buffer, size_t len_buf, int _flags)
{
    return recv(m_sock,_buffer,len_buf,_flags);
}

int wrapper::tcpClient::Send(const char *_buffer, size_t len_buf, int _flags) const
{
    return send(m_sock,_buffer,len_buf,_flags);
}


//#endif // TCPCLIENT_CPP

