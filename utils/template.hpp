#ifndef TEMPLATE_HPP
#define TEMPLATE_HPP

#include "Socket.hpp"

namespace wrapper{

    template<class _Type>
    class sock_template{
    public:
        explicit sock_template()noexcept : sock_ptr(nullptr) {   }

        sock_template(const char *addr_IP,uint16_t _port,domain_socket _type=domain_socket::IPv4);

        sock_template(_Type *_sock)noexcept;

        sock_template(sock_template<_Type>&&sock);

        virtual ~sock_template()noexcept;

   public:
        sock_template(const sock_template&)= delete;

        sock_template & operator=(sock_template&)= delete;

    public:
        sock_template<_Type> & operator=(sock_template<_Type>&&sock)noexcept{
            if(this!=&sock){
                this->sock_ptr=std::move(sock.sock_ptr);
                sock.sock_ptr=nullptr;
            }
            return *this;
        }

        _Type * operator->()const{
            return static_cast<_Type*>(sock_ptr);
        }

        _Type &operator*()const{
            return static_cast<_Type&>(*sock_ptr);
        }

    private:
        Socket *sock_ptr;
    };

    template<class _Type>
    sock_template<_Type> MakeSocketPtr(const char *addr_IP,uint16_t _port,domain_socket _type=domain_socket::IPv4)
    {
        return sock_template<_Type>(addr_IP,_port,_type);
    }
}

#endif // TEMPLATE_HPP
