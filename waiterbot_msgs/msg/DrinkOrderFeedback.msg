# DrinkOrderFeedback. 
# Robot notifies tablet
int16 command

# Message is only used when robot is in error status
string message

int16 ACCEPTED       = 1
int16 VM_ARRIVAL     = 2
int16 EJECT_DRINK    = 3
int16 ORIGIN_ARRIVAL = 4  
int16 ERROR          = -1
