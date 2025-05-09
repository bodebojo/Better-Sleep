# Enable trigger for everyone
scoreboard players enable @a better_sleep.sleep_notifier

# Send Sleep Notifier
execute if predicate better_sleep:clear_night run tellraw @a[scores={better_sleep.sleep_notifier=1}] {"text": "Time to sleep!", "color": "gold"}

# Reset Sleep Notifier scores
execute as @a[scores={better_sleep.sleep_notifier=2..}] run scoreboard players reset @s better_sleep.sleep_notifier