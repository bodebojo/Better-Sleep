# Enable trigger for everyone
scoreboard players enable @a better_sleep.sleep_notifier

# Send toggled on message
execute as @a[scores={better_sleep.sleep_notifier=1}] unless score @s better_sleep.sleep_notifier = @s better_sleep.sleep_notifier_old run tellraw @s {"translate": "trigger.better_sleep.sleep_notifier.activate", "fallback": "Sleep Notifier Activated", "color": "gold"}

# Send toggled off message
execute as @a[scores={better_sleep.sleep_notifier=0}] unless score @s better_sleep.sleep_notifier = @s better_sleep.sleep_notifier_old run tellraw @s {"translate": "trigger.better_sleep.sleep_notifier.deactivate", "fallback": "Sleep Notifier Deactivated", "color": "gold"}

# Send Sleep Notifier
execute if predicate better_sleep:clear_night run tellraw @a[scores={better_sleep.sleep_notifier=1}] {"translate": "tellraw.better_sleep.sleep_notifier", "fallback": "Time to sleep!", "color": "gold"}
execute if predicate better_sleep:rainy_night run tellraw @a[scores={better_sleep.sleep_notifier=1}] {"translate": "tellraw.better_sleep.sleep_notifier", "fallback": "Time to sleep!", "color": "gold"}
execute if predicate better_sleep:thundering_night run tellraw @a[scores={better_sleep.sleep_notifier=1}] {"translate": "tellraw.better_sleep.sleep_notifier", "fallback": "Time to sleep!", "color": "gold"}

# Store Sleep Notifier Old score
execute as @a run scoreboard players operation @s better_sleep.sleep_notifier_old = @s better_sleep.sleep_notifier

# Reset Sleep Notifier scores
execute as @a[scores={better_sleep.sleep_notifier=2..}] run scoreboard players set @s better_sleep.sleep_notifier 0