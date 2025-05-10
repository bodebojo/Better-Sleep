# Store SleepTimer in Scoreboard for further usage
execute as @a store result score @s better_sleep.sleeptimer run data get entity @s SleepTimer 1

# Store amount of sleeping players in Scoreboard
execute store result score &player_sleeping_count better_sleep.values if entity @a[scores={better_sleep.sleeptimer=1..}]

# Store amount of players with no_sleep enabled in Scoreboard
execute store result score &no_sleep_player_count better_sleep.values if entity @a[scores={better_sleep.no_sleep=1}]