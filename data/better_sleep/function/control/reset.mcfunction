# Set the datapack running score to 0
scoreboard players set &datapack_running better_sleep.values 0

# Set all variables back to default values
scoreboard players operation &variable_name better_sleep.values = &variable_name_default better_sleep.values
scoreboard players operation &boolean_name better_sleep.values = &boolean_name_default better_sleep.values
# Run the config function to update the display
function better_sleep:config