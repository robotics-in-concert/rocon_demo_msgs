# Status of the navigation controller
int16 status_code

# Message is only used when robot is in error status
string status_message

int16 ACCEPTED       = 1
int16 VM_ARRIVAL     = 2
int16 EJECT_DRINK    = 3
int16 ORIGIN_ARRIVAL = 4  
int16 CANCEL         = 5

int16 ERROR          = -1
