#ifndef TEMPLATE_HPP
#define TEMPLATE_HPP

#include "Socket.hpp"

namespace wrapper{

    template<class _Type>
    class sock_template{
    public:
        explicit sock_template()noexcept : sock_ptr(nullptr) {   }

        template<class ...Type>
        sock_template(Type... _type):sock_ptr(new _Type(_type...))  { }


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
    sock_template<_Type>MakeSocketPtr(_Type args)
    {
        return sock_template<_Type>(args);
    }

    template<class Type,class ..._Type>
    sock_template<Type>MakeSocketPtr(_Type ...argc)
    {
        return sock_template<Type>(argc...);

    }

}

#endif // TEMPLATE_HPP
