# No sleep title
execute if score &no_sleep_count better_sleep.numbers matches 1 run title @a[scores={better_sleep.sleeptimer=1..}] actionbar [{"color":"gold", "selector": "@a[scores={no_sleep=1..}]"}, {"color":"white","text": " doesn't want you to sleep"}]
execute if score &no_sleep_count better_sleep.numbers matches 2.. run title @a[scores={better_sleep.sleeptimer=1..}] actionbar [{"color": "gold", "selector": "@a[scores={no_sleep=1..}]"}, {"color": "white", "text": " dont want you to sleep"}]

# How many players are currently sleeping
execute store result score &sleep_amount better_sleep.numbers if entity @a[scores={better_sleep.sleeptimer=1..}]

# Set skipping_time if requirements are met for the skipping of night
execute if score &sleep_amount better_sleep.numbers >= &amount_to_sleep better_sleep.numbers run scoreboard players set &skipping_night better_sleep.numbers 1
execute if score &online_players better_sleep.numbers < &amount_to_sleep better_sleep.numbers if score &sleep_amount better_sleep.numbers < &amount_to_sleep better_sleep.numbers if score &sleep_amount better_sleep.numbers matches 1.. run scoreboard players set &skipping_night better_sleep.numbers 1

# Set skipping_time to 0 if no requirements are met for the skipping of night
execute if score &sleep_amount better_sleep.numbers < &amount_to_sleep better_sleep.numbers unless score &online_players better_sleep.numbers < &amount_to_sleep better_sleep.numbers run scoreboard players set &skipping_night better_sleep.numbers 0
execute if score &sleep_amount better_sleep.numbers matches 0 run scoreboard players set &skipping_night better_sleep.numbers 0

# Warp time if requirements for skipping night are met
execute if score &skipping_night better_sleep.numbers matches 1 run function better_sleep:time_control/time_control
execute if score &skipping_night better_sleep.numbers matches 0 run function better_sleep:time_control/reset_tickspeed
