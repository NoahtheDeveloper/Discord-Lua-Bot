
local discordia = require('discordia')
local client = discordia.Client()




config = {}
config.token = "Bot XXXX"
config.prefix ="!"
config.color = "26e287"

config.footer = "Lua Bot"

config.title = "__**Bot Panel**__"

config.description = "Welcome to Lua Bot Panel, try out the commands below and see how you like it!"

config.name1 = "Commands"
config.name2 = "Sheesh"

config.value1 = "`.say` - Says the message that you send\n`.ban`- Bans Individual from a server"
config.value2 = "Welcome [Click Me](https://www.youtube.com/watch?v=dQw4w9WgXcQ)"



client:on('ready', function()
    print('Logged in as '.. client.user.username)
	print('Bots Prefix gonna be:'.. config.prefix)
    print('~r~ Bot created by NoahBrahim')
end)



client:on("messageCreate", function(message)

    
    if message.content:lower() == config.prefix .. 'ping' then
        message:reply("pong")
    
	
	end 	

end)



client:on("messageCreate", function(message)

	local content = message.content
	local author = message.author

	if content == config.prefix .. 'panel' then
		message:reply {
			embed = {
				title = config.title,
				description = config.description,
				author = {
					name = author.username,
					icon_url = author.avatarURL
				},
				fields = { -- array of fields
					{
						name = config.name1,
						value = config.value1,
						inline = true
					},
					{
						name = config.name2,
						value = config.value2,
						inline = false
					}
				},
				footer = {
					text = config.footer
				},
				color = 0x000000 -- hex color code
			}
		}
	end

end)



client:run(config.token)





--------------------------------------------------------------------------------------------
