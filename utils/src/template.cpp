
#include "template.hpp"

namespace wrapper
{

        template<class _Type>
        sock_template<_Type>::sock_template(const char *addr_IP, uint16_t _port, domain_socket _type)
            :sock_ptr(new _Type(addr_IP,_port,_type)) {     }

        template<class _Type>
        sock_template<_Type>::sock_template(_Type *_sock) noexcept
        {
            sock_ptr=_sock;
            _sock=nullptr;
        }

        template<class _Type>
        sock_template<_Type>::sock_template(sock_template<_Type> &&sock)
        {
            this->sock_ptr=std::move(sock.sock_ptr);
            sock.sock_ptr=nullptr;
        }

        template<class _Type>
        sock_template<_Type>::~sock_template() noexcept
        {
           delete sock_ptr;
        }

}
