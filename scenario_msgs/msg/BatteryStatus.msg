# battery's charge level in percent
int8 charge_level

# battery's charge status
int8 charge_status

# charge statuses
int8 BATTERY_LOW      = -1
int8 BATTERY_CRITICAL = -2
int8 BATTERY_OK       = 0
int8 BATTERY_FULL     = 1
int8 BATTERY_CHARGING = 2

# battery voltage in V
float32 voltage

# battery current in A
float32 current