# When Clear Weather
execute if predicate better_sleep:clear_night run tellraw @a[scores={sleep_ping=1}] [{"color": "gold", "text": "You can now sleep"}]

# When Raining/Thundering Weather
execute if predicate better_sleep:rainy_night run tellraw @a[scores={sleep_ping=1}] [{"color": "gold", "text": "You can now sleep"}]
execute if predicate better_sleep:thundering_night run tellraw @a[scores={sleep_ping=1}] [{"color": "gold", "text": "You can now sleep"}]

# Repeat loop
schedule function better_sleep:sleep_ping 1s