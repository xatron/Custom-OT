function onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	local position = {}

	-- To temple
	if item:getActionId() == 5500 then
		position = {x=988, y=986, z=7}
		--position = {x=1000, y=919, z=7}
	end

	-- Level 8-50 TP
	if item:getActionId() == 5501 then
		position = {x=1522, y=429, z=4}
	end

	
	player:teleportTo(position)
	doSendMagicEffect(position, CONST_ME_TELEPORT)
end
