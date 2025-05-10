# Change the EXAMPLE Configurable Boolean value

#Set old value to current value
scoreboard players operation &boolean_name_old better_sleep.values = &boolean_name better_sleep.values

# If the value is currently False, set it to True
execute if score &boolean_name better_sleep.values matches 0 unless score &boolean_name_old better_sleep.values matches 1 run scoreboard players set &boolean_name_old better_sleep.values 0
execute if score &boolean_name better_sleep.values matches 0 if score &boolean_name_old better_sleep.values matches 0 run scoreboard players set &boolean_name better_sleep.values 1

# If the value is currently True, set it to False
execute if score &boolean_name better_sleep.values matches 1 unless score &boolean_name_old better_sleep.values matches 0 run scoreboard players set &boolean_name_old better_sleep.values 1
execute if score &boolean_name better_sleep.values matches 1 if score &boolean_name_old better_sleep.values matches 1 run scoreboard players set &boolean_name better_sleep.values 0

# Run the config function to update the display
function better_sleep:config