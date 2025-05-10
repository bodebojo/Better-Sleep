# This function is called every second
schedule function better_sleep:tick/loop_1t 1t

# Update Scoreboards
execute if score &datapack_running better_sleep.values matches 1 run function better_sleep:tick/scoreboards

# Send No Sleep message
execute if score &datapack_running better_sleep.values matches 1 run function better_sleep:tick/no_sleep

# Skip night
execute if score &datapack_running better_sleep.values matches 1 run function better_sleep:tick/night_skip