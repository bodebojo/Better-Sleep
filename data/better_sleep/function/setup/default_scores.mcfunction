# Set default values for all variables
scoreboard players set &variable_name_default better_sleep.values 1
scoreboard players set &boolean_name_default better_sleep.values 0

# Check if value isn't a different value than the default value, and set the actual values to the default values
execute unless score &variable_name better_sleep.values = &variable_name better_sleep.values run scoreboard players operation &variable_name better_sleep.values = &variable_name_default better_sleep.values
execute unless score &boolean_name better_sleep.values = &boolean_name better_sleep.values run scoreboard players operation &boolean_name better_sleep.values = &boolean_name_default better_sleep.values