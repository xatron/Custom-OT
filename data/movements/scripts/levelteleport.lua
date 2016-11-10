function onStepIn(cid, item, position, fromPosition)
	pos1 = {x=1000, y=1001, z=7}  ------- Enter the position the teleport should take you here
	pos2 = {x=1000, y=1002, z=7}  ------- Enter the position the teleport should take you if you're not level 100 here
	if getPlayerLevel(cid) >= 100 then
		doTeleportThing(cid, pos1, 1)
	else
		doTeleportThing(cid, pos2, 1)
		return TRUE
	end
end