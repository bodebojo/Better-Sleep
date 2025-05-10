# Stop main loop
schedule clear better_sleep:tick/loop_1s
schedule clear better_sleep:tick/loop_1t

# Remove scoreboards
scoreboard objectives remove better_sleep.values
scoreboard objectives remove better_sleep.no_sleep
scoreboard objectives remove better_sleep.no_sleep_old
scoreboard objectives remove better_sleep.sleep_notifier
scoreboard objectives remove better_sleep.sleep_notifier_old
scoreboard objectives remove better_sleep.sleeptimer

# Uninstall message
say Deleted Better Sleep data. Remember to uninstall the datapack from your world folder.