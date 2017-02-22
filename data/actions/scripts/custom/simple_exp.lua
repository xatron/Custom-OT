function onUse(cid, item, fromPosition, itemEx, toPosition)
    local player = Player(cid)
    if player:getStorageValue(7300) >= os.time() then
        return true
    end
   
    player:setStorageValue(7300, os.time() + 3600)
    	Item(item.uid):remove(1)
    return true
end