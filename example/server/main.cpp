#include <Exception.hpp>
#include <iostream>
#include <tcpServer.hpp>
#include <template.cpp>
#include <udpServer.hpp>

constexpr size_t buf_size = 256;

using namespace wrapper;

class Server {
public:
  Server(const char *addr_IP, uint16_t _port,
         domain_socket _type = domain_socket::IPv4) {
    serv = MakeSocketPtr<tcpServer>(addr_IP, _port, _type);

    serv->Bind();

    serv->Listen();
  }

public:
  void MessageHandle() {

    char *_buffer = new char[buf_size]();

    auto client = serv->Accept();

    if (client < 0) {
      throw socket_error("Faield to accept client !");
    } else {
      std::cout << "Client has been accepted !" << std::endl;
    }

    while (client) {

      auto resv_bytes = serv->Recv(client, _buffer, buf_size);

      if (resv_bytes <= 0) {
        std::cerr << "Failed to recevice data from socket !";
      }

      if (*_buffer == 'Q') {
        std::cout << "Client disconnected !" << std::endl;
        exit(1);
      }

      std::cout << "Message from client : " << _buffer;

      memset(_buffer, 0, buf_size);
    }
    delete[] _buffer;
  }

  ~Server() = default;

private:
  sock_template<tcpServer> serv;
};

int main() {
  try {
    Server s("127.0.0.1", 12345);
    s.MessageHandle();
  } catch (const socket_error &_error) {
    std::cerr << _error.what() << std::endl;
  }

  return 0;
}
