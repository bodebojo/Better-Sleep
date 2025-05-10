# Enable trigger for everyone
scoreboard players enable @a better_sleep.no_sleep

# Send toggled on message
execute as @a[scores={better_sleep.no_sleep=1}] unless score @s better_sleep.no_sleep = @s better_sleep.no_sleep_old run tellraw @s {"translate": "trigger.better_sleep.no_sleep.activate", "fallback": "No Sleep Activated", "color": "gold"}

# Send toggled off message
execute as @a[scores={better_sleep.no_sleep=0}] unless score @s better_sleep.no_sleep = @s better_sleep.no_sleep_old run tellraw @s {"translate": "trigger.better_sleep.no_sleep.deactivate", "fallback": "No Sleep Deactivated", "color": "gold"}

# Set correct Title timings
execute as @a if score @s better_sleep.sleeptimer matches 1..100 run title @s times 0 70 20

# Send No Sleep message
execute if score &no_sleep_player_count better_sleep.values matches 1 if entity @a[scores={better_sleep.no_sleep=1}] as @a[scores={better_sleep.sleeptimer=1..100}] run title @s title [{"selector": "@a[scores={better_sleep.no_sleep=1}]"}, " ", {"translate": "title.better_sleep.no_sleep.one_person", "fallback": "doesn't want you to sleep!"}]

execute if score &no_sleep_player_count better_sleep.values matches 2 if entity @a[scores={better_sleep.no_sleep=1}] as @a[scores={better_sleep.sleeptimer=1..100}] run title @s title [{"selector": "@a[scores={better_sleep.no_sleep=1}]","separator": {"color": "gray", "translate": "title.better_sleep.no_sleep.two_people.seperator", "fallback": " and "}}, " ", {"translate": "title.better_sleep.no_sleep.two_people", "fallback": "dont want you to sleep!"}]

execute if score &no_sleep_player_count better_sleep.values matches 3.. if entity @a[scores={better_sleep.no_sleep=1}] as @a[scores={better_sleep.sleeptimer=1..100}] run title @s title {"translate": "title.better_sleep.no_sleep.multiple_people", "fallback": "Multiple people don't want you to sleep!"}

# Store No Sleep Old score
execute as @a run scoreboard players operation @s better_sleep.no_sleep_old = @s better_sleep.no_sleep

# Reset No Sleep scores
execute as @a[scores={better_sleep.no_sleep=2..}] run scoreboard players set @s better_sleep.no_sleep 0