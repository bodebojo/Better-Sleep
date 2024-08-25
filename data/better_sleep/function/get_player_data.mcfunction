# Dont think i still need these but whatever
execute store result score &players_sleeping_percentage better_sleep.numbers run gamerule playersSleepingPercentage
execute store result storage better_sleep players_sleeping_percentage.value int 1 run scoreboard players get &players_sleeping_percentage better_sleep.numbers

# Store no sleep count in seperate scoreboard, to use to check for correct grammar
execute store result score &no_sleep_count better_sleep.numbers run execute if entity @a[scores={no_sleep=1..}]

# Store No Sleep Data
scoreboard players enable @a no_sleep
execute as @a[scores={no_sleep=2..}] run scoreboard players reset @s no_sleep

# Store Sleep Ping Data
scoreboard players enable @a sleep_ping
execute as @a[scores={no_sleep=2..}] run scoreboard players reset @s sleep_ping

# Store Sleeptimer NBT data in scoreboard
execute as @a store result score @s better_sleep.sleeptimer run data get entity @s SleepTimer 1

# Store online player count in scoreboard
execute store result score &online_players better_sleep.numbers run list




# Repeat loop
schedule function better_sleep:get_player_data 1s