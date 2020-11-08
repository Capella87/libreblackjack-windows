#ifndef TTY_H
#define TTY_H
#include "blackjack.h"

class Tty : public Player {
  public:  
    Tty(Configuration &);
    ~Tty() { };
    
    int play() override;
    void info(Info = Info::None, int = 0) override;

    
  private:
    
#ifdef HAVE_LIBREADLINE
  char *input_buffer;
#else
  std::string input_buffer;
#endif

    std::string arrow;
    std::string prompt;
    
    int delay = 200;

    std::string black   = "\x1B[0m";
    std::string red     = "\x1B[31m";
    std::string green   = "\x1B[32m";
    std::string yellow  = "\x1B[33m";
    std::string blue    = "\x1B[34m";
    std::string magenta = "\x1B[35m";
    std::string cyan    = "\x1B[36m";
    std::string white   = "\x1B[37m";
    std::string reset   = "\033[0m";
      
};
#endif
