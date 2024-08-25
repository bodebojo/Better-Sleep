# Make scoreboards
function better_sleep:make_scoreboard

# Start loop to gather player information
function better_sleep:get_player_data

# Start loop to send sleep pings
function better_sleep:sleep_ping

# disable gamerule
gamerule playersSleepingPercentage 101

execute if score &dev_build better_sleep.numbers matches 1 run tellraw @a [{"color": "gold", "text": "Better Sleep"}, {"color": "dark_red", "text": " V0.0.8"}]