# Clear Chat: 10 lines
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
# Actual Config:
# Divider Line
tellraw @s [{"color": "dark_gray", "text": "================="}, {"color": "dark_green", "text": " Better Sleep ", "click_event": {"action": "open_url", "url": "https://modrinth.com/project/better-sleep"}}, {"color": "dark_gray", "text": "=================="}]
# # EXAMPLE Configurable Variable
# tellraw @s [{"text":""},{"text":"EXAMPLE Configurable Variable","color":"dark_aqua"},{"text":" <","color":"dark_gray","click_event":{"action":"run_command","command":"/function better_sleep:config/example_configurable_variable/decrease"},"hover_event":{"action":"show_text","value":[{"text":"Decrease by one","color":"gray"}]}},{"score":{"name":"&variable_name","objective":"better_sleep.values"},"color":"dark_green","hover_event":{"action":"show_text","value":[{"text":"EXAMPLE Informational Hover Text","color":"gray"}]}},{"text":"> ","color":"dark_gray","click_event":{"action":"run_command","command":"/function better_sleep:config/example_configurable_variable/increase"},"hover_event":{"action":"show_text","value":[{"text":"Increase by one","color":"gray"}]}},{"text":"[","color":"dark_gray"},{"text":"🔄","color":"gray","click_event":{"action":"run_command","command":"/function better_sleep:config/example_configurable_variable/reset"},"hover_event":{"action":"show_text","value":[{"text":"Reset back to default value","color":"gray"}]}},{"text":"]","color":"dark_gray"}]
# # EXAMPLE Configurable Boolean
# # Value is currently False
# execute if score &boolean_name better_sleep.values matches 0 run tellraw @s [{"text":""},{"text":"EXAMPLE Configurable Boolean","color":"dark_aqua"},{"text":" [","color":"dark_gray"},{"text":"False","color":"dark_red","click_event":{"action":"run_command","command":"/function better_sleep:config/example_configurable_boolean/change"},"hover_event":{"action":"show_text","value":[{"text":"EXAMPLE Informational Hover Text","color":"gray"}]}},{"text":"] ","color":"dark_gray"},{"text":"[","color":"dark_gray"},{"text":"🔄","color":"gray","click_event":{"action":"run_command","command":"/function better_sleep:config/example_configurable_boolean/reset"},"hover_event":{"action":"show_text","value":[{"text":"Reset back to default value","color":"gray"}]}},{"text":"]","color":"dark_gray"}]
# # Value is currently True
# execute if score &boolean_name better_sleep.values matches 1 run tellraw @s [{"text":""},{"text":"EXAMPLE Configurable Boolean","color":"dark_aqua"},{"text":" [","color":"dark_gray"},{"text":"True","color":"dark_green","click_event":{"action":"run_command","command":"/function better_sleep:config/example_configurable_boolean/change"},"hover_event":{"action":"show_text","value":[{"text":"EXAMPLE Informational Hover Text","color":"gray"}]}},{"text":"] ","color":"dark_gray"},{"text":"[","color":"dark_gray"},{"text":"🔄","color":"gray","click_event":{"action":"run_command","command":"/function better_sleep:config/example_configurable_boolean/reset"},"hover_event":{"action":"show_text","value":[{"text":"Reset back to default value","color":"gray"}]}},{"text":"]","color":"dark_gray"}]
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ["",{"text":"Manage Datapack","color":"dark_aqua"},{"text":" [","color":"dark_gray"},{"text":"START","color":"dark_green","click_event":{"action":"run_command","command":"/function better_sleep:control/start"},"hover_event":{"action":"show_text","value":[{"text":"Start the Datapack","color":"gray"}]}},{"text":"]","color":"dark_gray"},{"text":" [","color":"dark_gray"},{"text":"RESET","color":"dark_red","click_event":{"action":"run_command","command":"/function better_sleep:control/reset"},"hover_event":{"action":"show_text","value":[{"text":"Reset the Datapack","color":"gray"}]}},{"text":"]","color":"dark_gray"},{"text":" [","color":"dark_gray"},{"text":"PAUSE","color":"dark_blue","click_event":{"action":"run_command","command":"/function better_sleep:control/pause"},"hover_event":{"action":"show_text","value":[{"text":"Pause the Datapack","color":"gray"}]}},{"text":"]","color":"dark_gray"},{"text":" [","color":"dark_gray"},{"text":"CONTINUE","color":"gold","click_event":{"action":"run_command","command":"/function better_sleep:control/continue"},"hover_event":{"action":"show_text","value":[{"text":"Continue the Datapack","color":"gray"}]}},{"text":"]","color":"dark_gray"}]
# Divider Line
tellraw @s [{"color": "dark_gray", "text": "====================================================="}]