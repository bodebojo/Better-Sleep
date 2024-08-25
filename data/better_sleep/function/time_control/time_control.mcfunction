# When not using tick warp
execute if score &use_tick_warp better_sleep.numbers matches 0 run function better_sleep:time_control/warp_time

# When using tick warp
execute if score &use_tick_warp better_sleep.numbers matches 1 run function better_sleep:time_control/warp_tick