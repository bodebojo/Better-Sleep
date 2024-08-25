# SCoreboard to store all numbers neccesary for calculations and checks
scoreboard objectives add better_sleep.numbers dummy

# Trigger to set a No Sleep status
scoreboard objectives add no_sleep trigger

# Trigger to get pinged when sleepy time
scoreboard objectives add sleep_ping trigger

# Add scoreboard to track if, and how long a player has been sleeping 
scoreboard objectives add better_sleep.sleeptimer dummy

# Set default values
execute as @a unless score &amount_to_sleep better_sleep.numbers = &amount_to_sleep better_sleep.numbers run scoreboard players set &amount_to_sleep better_sleep.numbers 2
execute as @a unless score &use_tick_warp better_sleep.numbers = &use_tick_warp better_sleep.numbers run scoreboard players set &use_tick_warp better_sleep.numbers 0

execute as @a unless score &dev_build better_sleep.numbers = &dev_build better_sleep.numbers run scoreboard players set &dev_build better_sleep.numbers 1