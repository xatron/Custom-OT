-- The helper lib is used by passing a table value to the ModalWindow function



function onSay(player, words, param)
	local name = db.query("SELECT 1 FROM players WHERE account_id = 1")

	local window = ModalWindow {
	    title = 'Character Information',
	    message = '---- GENERAL INFORMATION ----\nName: ' .. player:getName() .. '\nLevel: ' .. player:getLevel()
	}

	window:addButton('Close')
	window:setDefaultEscapeButton('Close')

	window:sendToPlayer(player)

	result.free(name)
end