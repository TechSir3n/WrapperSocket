#include <iostream>
#include <tcpClient.hpp>
#include <template.hpp>
#include <Exception.hpp>


using namespace wrapper;


int main()
{
   try{
    tcpClient tcp("127.0.0.1",12345);

    tcp.Connect();

    tcp.Send("Hello i am client",30);
   }
    catch(const socket_error &_error){
        std::cerr<<_error.what()<<std::endl;
  }

    return 0;
}
