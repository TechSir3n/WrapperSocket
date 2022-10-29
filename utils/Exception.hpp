#ifndef EXCEPTION_HPP
#define EXCEPTION_HPP


#include <stdexcept>

namespace wrapper{

class socket_error:public std::exception{
public:
    socket_error():err_message("Unknow error") {  }

    virtual ~socket_error() noexcept { }

    socket_error(const char *_error):err_message(_error) {  }

    const char *what() const noexcept { return err_message ; }

protected:
    const char *err_message;
  };

}

#endif // EXCEPTION_HPP
