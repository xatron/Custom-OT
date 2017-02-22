function onThink(cid, interval, lastExecution)
	local players = Game.getPlayers()

	for k, targetPlayer in ipairs(players) do
		
		targetPlayer:addItem(2160, 1)
	end

	return true
end