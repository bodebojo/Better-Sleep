# Store no sleep count in seperate scoreboard, to use to check for correct grammar
execute store result score &better_sleep.no_sleep_count better_sleep.numbers run execute if entity @a[scores={better_sleep.no_sleep=1..}]

# Store No Sleep Data
scoreboard players enable @a better_sleep.no_sleep
execute as @a[scores={better_sleep.no_sleep=2..}] run scoreboard players reset @s better_sleep.no_sleep

# Store Sleep Ping Data
scoreboard players enable @a better_sleep.sleep_ping
execute as @a[scores={better_sleep.sleep_ping=2..}] run scoreboard players reset @s better_sleep.sleep_ping

# Store Sleeptimer NBT data in scoreboard
execute as @a store result score @s better_sleep.sleeptimer run data get entity @s SleepTimer 1

# Store online player count in scoreboard
execute store result score &online_players better_sleep.numbers run list

# Repeat loop
schedule function better_sleep:get_player_data 1s