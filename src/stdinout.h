#ifndef STDINOUT_H
#define STDINOUT_H
#include "blackjack.h"

class StdInOut : Player {
  public:  
    StdInOut() { };
    ~StdInOut() { };
    
    int play(Command *, int *) override;
};
#endif
