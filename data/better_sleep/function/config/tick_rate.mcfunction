
execute if score &use_tick_warp better_sleep.numbers matches 1 run scoreboard players set &use_tick_warp better_sleep.numbers 2


execute if score &use_tick_warp better_sleep.numbers matches 0 run scoreboard players set &use_tick_warp better_sleep.numbers 1


execute if score &use_tick_warp better_sleep.numbers matches 2 run scoreboard players set &use_tick_warp better_sleep.numbers 0


function better_sleep:config