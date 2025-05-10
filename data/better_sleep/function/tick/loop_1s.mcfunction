# This function is called every second
schedule function better_sleep:tick/loop_1s 1s

# Send Sleep Notifier
execute if score &datapack_running better_sleep.values matches 1 run function better_sleep:tick/sleep_notifier