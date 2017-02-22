-- The helper lib is used by passing a table value to the ModalWindow function



function onSay(player, words, param)
	local name = db.query("SELECT 1 FROM players WHERE account_id = 1")
	local simple_exp_scroll = 'Not Active        | 50%'
	local normal_exp_scroll = 'Not Active   | 50%'

	-- Simple Exp Scroll
	if player:getStorageValue(7300) >= os.time() then
	  	simple_exp_scroll = 'Active            | 20% \n'
  	else 
	  	simple_exp_scroll = 'Not active     | 20%\n'
  	end

	local window = ModalWindow {
	    title = 'Character Information',
	    message = '---- GENERAL INFORMATION ----\n\n' ..
    			  'Name: ' .. player:getName() .. '\n' ..
    			  'Level: ' .. player:getLevel() .. '\n\n' ..
    			  '---- ACTIVATED STUFF ----\n\n' ..
    			  'Simple exp scroll: ' .. simple_exp_scroll ..
    			  'Normal exp scroll: ' .. normal_exp_scroll
	}

	window:addButton('Close')
	window:setDefaultEscapeButton('Close')

	window:sendToPlayer(player)

	result.free(name)
end