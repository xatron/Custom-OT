local t = {
	-- Depot teleports
   {"Dungeons", {x=985, y=981, z=7}},
   {"Monsters", {x=987, y=981, z=7}},

   -- Monster room teleports
   {"Level 8 - 50 monsters.", {x=992, y=921, z=7}},

   -- Back to depot
   {"Back to depot", {x=1000, y=917, z=7}}, -- Monster room
   {"Back to depot", {x=1521, y=428, z=4}}
}

function onThink(cid, interval, lastExecution)
local people = getOnlinePlayers()
    if #people == 0 then
    return true
end

    for i = 1, #t do
        doCreatureSay(people[1], t[i][1], TALKTYPE_ORANGE_1, false, 0, t[i][2])
        end
    return true
end