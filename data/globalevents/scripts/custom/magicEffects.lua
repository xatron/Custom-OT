local t = {
   {"Dungeons", {x=985, y=981, z=7}, CONST_ME_TELEPORT},
   {"Monsters", {x=987, y=981, z=7}, CONST_ME_TELEPORT}
}

function onThink(cid, interval, lastExecution)
local people = getOnlinePlayers()
    if #people == 0 then
    return true
end

    for i = 1, #t do
        doSendMagicEffect(t[i][2], t[i][3])
        doCreatureSay(people[1], t[i][1], TALKTYPE_ORANGE_1, false, 0, t[i][2])
        end
    return true
end