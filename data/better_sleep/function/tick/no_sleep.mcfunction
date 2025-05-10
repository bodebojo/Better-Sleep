# Enable trigger for everyone
scoreboard players enable @a better_sleep.no_sleep

# Set correct Title timings
execute as @a if score @s better_sleep.sleeptimer matches 1..100 run title @s times 0 70 20

# Send No Sleep message
execute if score &no_sleep_player_count better_sleep.values matches 1 if entity @a[scores={better_sleep.no_sleep=1}] as @a[scores={better_sleep.sleeptimer=1..100}] run title @s title [{"selector": "@a[scores={better_sleep.no_sleep=1}]"}, " doesn't want you to sleep!"]

execute if score &no_sleep_player_count better_sleep.values matches 2 if entity @a[scores={better_sleep.no_sleep=1}] as @a[scores={better_sleep.sleeptimer=1..100}] run title @s title [{"selector": "@a[scores={better_sleep.no_sleep=1}]","separator": {"color": "gray", "text": " and "}}, " don't want you to sleep!"]

execute if score &no_sleep_player_count better_sleep.values matches 3.. if entity @a[scores={better_sleep.no_sleep=1}] as @a[scores={better_sleep.sleeptimer=1..100}] run title @s title "Multiple people don't want you to sleep!"

# Reset Sleep Notifier scores
execute as @a[scores={better_sleep.no_sleep=2..}] run scoreboard players reset @s better_sleep.no_sleep