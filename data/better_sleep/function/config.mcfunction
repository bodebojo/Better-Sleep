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
tellraw @s [{"color": "dark_gray", "text": "================="}, {"color": "dark_green", "text": " Better Sleep ", "clickEvent": {"action": "open_url", "value": "https://modrinth.com/project/better-sleep"}}, {"color": "dark_gray", "text": "=================="}]
tellraw @s [{"text":""},{"text":"EXAMPLE Configurable Variable","color":"dark_aqua"},{"text":" <","color":"dark_gray","clickEvent":{"action":"run_command","value":"/function better_sleep:config/example_configurable_variable/decrease"},"hoverEvent":{"action":"show_text","contents":[{"text":"Decrease by one","color":"gray"}]}},{"score":{"name":"&variable_name","objective":"better_sleep.values"},"color":"dark_green","hoverEvent":{"action":"show_text","contents":[{"text":"EXAMPLE Informational Hover Text","color":"gray"}]}},{"text":"> ","color":"dark_gray","clickEvent":{"action":"run_command","value":"/function better_sleep:config/example_configurable_variable/increase"},"hoverEvent":{"action":"show_text","contents":[{"text":"Increase by one","color":"gray"}]}},{"text":"[","color":"dark_gray"},{"text":"🔄","color":"gray","clickEvent":{"action":"run_command","value":"/function better_sleep:config/example_configurable_variable/reset"},"hoverEvent":{"action":"show_text","contents":[{"text":"Reset back to default value","color":"gray"}]}},{"text":"]","color":"dark_gray"}]
# EXAMPLE Configurable Boolean
# Value is currently False
execute if score &boolean_name better_sleep.values matches 0 run tellraw @s [{"text":""},{"text":"EXAMPLE Configurable Boolean","color":"dark_aqua"},{"text":" [","color":"dark_gray"},{"text":"False","color":"dark_red","clickEvent":{"action":"run_command","value":"/function better_sleep:config/example_configurable_boolean/change"},"hoverEvent":{"action":"show_text","contents":[{"text":"EXAMPLE Informational Hover Text","color":"gray"}]}},{"text":"] ","color":"dark_gray"},{"text":"[","color":"dark_gray"},{"text":"🔄","color":"gray","clickEvent":{"action":"run_command","value":"/function better_sleep:config/example_configurable_boolean/reset"},"hoverEvent":{"action":"show_text","contents":[{"text":"Reset back to default value","color":"gray"}]}},{"text":"]","color":"dark_gray"}]
# Value is currently True
execute if score &boolean_name better_sleep.values matches 1 run tellraw @s [{"text":""},{"text":"EXAMPLE Configurable Boolean","color":"dark_aqua"},{"text":" [","color":"dark_gray"},{"text":"True","color":"dark_green","clickEvent":{"action":"run_command","value":"/function better_sleep:config/example_configurable_boolean/change"},"hoverEvent":{"action":"show_text","contents":[{"text":"EXAMPLE Informational Hover Text","color":"gray"}]}},{"text":"] ","color":"dark_gray"},{"text":"[","color":"dark_gray"},{"text":"🔄","color":"gray","clickEvent":{"action":"run_command","value":"/function better_sleep:config/example_configurable_boolean/reset"},"hoverEvent":{"action":"show_text","contents":[{"text":"Reset back to default value","color":"gray"}]}},{"text":"]","color":"dark_gray"}]
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ["",{"text":"Manage Datapack","color":"dark_aqua"},{"text":" [","color":"dark_gray"},{"text":"START","bold":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/function better_sleep:control/start"},"hoverEvent":{"action":"show_text","contents":[{"text":"Start the Datapack","color":"gray"}]}},{"text":"]","color":"dark_gray"},{"text":" [","color":"dark_gray"},{"text":"RESET","bold":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/function better_sleep:control/reset"},"hoverEvent":{"action":"show_text","contents":[{"text":"Reset the Datapack","color":"gray"}]}},{"text":"]","color":"dark_gray"},{"text":" [","color":"dark_gray"},{"text":"PAUSE","bold":true,"color":"dark_blue","clickEvent":{"action":"run_command","value":"/function better_sleep:control/pause"},"hoverEvent":{"action":"show_text","contents":[{"text":"Pause the Datapack","color":"gray"}]}},{"text":"]","color":"dark_gray"},{"text":" [","color":"dark_gray"},{"text":"CONTINUE","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function better_sleep:control/continue"},"hoverEvent":{"action":"show_text","contents":[{"text":"Continue the Datapack","color":"gray"}]}},{"text":"]","color":"dark_gray"}]
# Divider Line
tellraw @s [{"color": "dark_gray", "text": "====================================================="}]