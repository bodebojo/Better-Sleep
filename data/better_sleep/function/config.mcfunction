# Clear Chat
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
# Actual Config
tellraw @s [{"color": "dark_gray", "text": "=================="}, {"color": "dark_green", "text": " Better Sleep V1.0.0 ", "clickEvent": {"action": "open_url", "value": "https://modrinth.com/project/better-sleep"}}, {"color": "dark_gray", "text": "=================="}]
# If not using tickwarp display the X otherwise display the V
execute if score &use_tick_warp better_sleep.numbers matches 0 run tellraw @s [{"color": "dark_aqua", "text": "Use Tick Rate"}, {"color": "dark_gray", "text": " ["}, {"color": "dark_red", "text": "❌", "clickEvent": {"action": "run_command", "value": "/function better_sleep:config/tick_rate"}, "hoverEvent": {"action": "show_text", "contents": [{"color": "dark_red", "text": "Can only be used if Better Sleep can run with Level 3 permissions"}]}}, {"color": "dark_gray", "text": "]"}, {"color": "dark_gray", "text": " ["}, {"color": "gray", "text": "🔄", "clickEvent": {"action": "run_command", "value": "/function better_sleep:config/tick_rate_reset"}, "hoverEvent": {"action": "show_text", "contents": [{"color": "gray", "text": "Reset back to default value"}]}}, {"color": "dark_gray", "text": "]"}]
execute if score &use_tick_warp better_sleep.numbers matches 1 run tellraw @s [{"color": "dark_aqua", "text": "Use Tick Rate"}, {"color": "dark_gray", "text": " ["}, {"color": "dark_green", "text": "✔", "clickEvent": {"action": "run_command", "value": "/function better_sleep:config/tick_rate"}, "hoverEvent": {"action": "show_text", "contents": [{"color": "dark_red", "text": "Can only be used if Better Sleep can run with Level 3 permissions"}]}}, {"color": "dark_gray", "text": "]"}, {"color": "dark_gray", "text": " ["}, {"color": "gray", "text": "🔄", "clickEvent": {"action": "run_command", "value": "/function better_sleep:config/tick_rate_reset"}, "hoverEvent": {"action": "show_text", "contents": [{"color": "gray", "text": "Reset back to default value"}]}}, {"color": "dark_gray", "text": "]"}]
tellraw @s ["",{"text":"Player Sleeping Requirement","color":"dark_aqua"},{"text":" <","color":"dark_gray","clickEvent":{"action":"run_command","value":"/function better_sleep:config/sleeping_req_lower"},"hoverEvent":{"action":"show_text","contents":[{"text":"Decrease by one","color":"gray"}]}},{"score":{"name":"&amount_to_sleep","objective":"better_sleep.numbers"},"color":"dark_green","hoverEvent":{"action":"show_text","contents":[{"text":"Amount of people that need to be sleeping in order to skip the night","color":"gray"}]}},{"text":"> ","color":"dark_gray","clickEvent":{"action":"run_command","value":"/function better_sleep:config/sleeping_req_increase"},"hoverEvent":{"action":"show_text","contents":[{"text":"Increase by one","color":"gray"}]}},{"text":"[","color":"dark_gray"},{"text":"🔄","color":"gray","clickEvent":{"action":"run_command","value":"/function better_sleep:config/sleeping_req_reset"},"hoverEvent":{"action":"show_text","contents":[{"text":"Reset back to default value","color":"gray"}]}},{"text":"]","color":"dark_gray"}]
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s [{"color": "dark_gray", "text": "====================================================="}]

# ✔ ❌ 🔄