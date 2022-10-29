# SocketWrapper


\# __Simple cross-platform wrapper for TCP/UDP sockets__

***

>EXAMPLE CODE

```
using namespace wrapper;

class Server{
public:

    Server(const char *addr_IP,uint16_t _port,domain_socket _type=domain_socket::IPv4)
    {
      serv=MakeSocketPtr<tcpServer>(addr_IP,_port,_type);

      serv->Bind();

      serv->Listen();

      serv->Accept();

    }

    ~Server() = default ;

private:
    sock_template<tcpServer> serv;

};

int main()
{
    try{
      Server("127.0.0.1",12345);
    }
    catch(const socket_error &_error){
        std::cerr<<_error.what()<<std::endl;
    }

    return 0;
}

``` 

***
