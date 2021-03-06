local config = {
     ['dragon'] = {amount = 10, storage = 19000, startstorage = 5010, startvalue = 1},
     ['dragon lord'] = {amount = 10, storage = 19001, startstorage = 5011, startvalue = 1},
     ['hydra'] = {amount = 10, storage = 19002, startstorage = 5012, startvalue = 1},
     ['demon'] = {amount = 10, storage = 19003, startstorage = 5013, startvalue = 1}
}
function onKill(player, target)
     local monster = config[target:getName():lower()]
     if target:isPlayer() or not monster or target:getMaster() then
         return true
     end
     local stor = player:getStorageValue(monster.storage)+1
     if stor < monster.amount and player:getStorageValue(monster.startstorage) >= monster.startvalue then
         player:setStorageValue(monster.storage, stor)
         player:sendTextMessage(MESSAGE_STATUS_CONSOLE_ORANGE, 'Task message: '..(stor +1)..' of '..monster.amount..' '..target:getName()..'s killed.')
     end
     if (stor +1) == monster.amount then
         player:sendTextMessage(MESSAGE_INFO_DESCR, 'Congratulations, you have killed '..(stor +1)..' '..target:getName()..'s and completed the '..target:getName()..'s mission.')
         player:setStorageValue(monster.storage, stor +1)
     end
     return true
end