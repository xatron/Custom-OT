local config = {
    broadcast = {120, 30},
    delay = 120,
    events = 30
}

local function executeSave(seconds, iv)
    if(isInArray(config.broadcast, seconds)) then
        broadcastMessage("[Server]: Server save within " .. seconds .. " seconds!", MESSAGE_STATUS_CONSOLE_BLUE)
    end

    if(seconds > 0) then
        addEvent(executeSave, config.events * 1000, seconds - config.events, iv)
    else
        saveServer()
        broadcastMessage("[Server]: Thank you! Next round of server save in " .. math.floor(iv / 60000) .. " minutes.", MESSAGE_STATUS_CONSOLE_BLUE)
    end
end

function onThink(interval)
    if(table.maxn(config.broadcast) == 0) then
        saveServer()
    else
        executeSave(config.delay, interval)
    end
    return true
end