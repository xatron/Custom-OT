-- The helper lib is used by passing a table value to the ModalWindow function
local window = ModalWindow {
    title = 'Character Information',
    message = 'test\ntest'
}

function onSay(player, words, param)
	window:sendToPlayer(player)
end