function onSay(cid, words, param, channel)

	if #getCreatureSummons(cid) == 0 then
		doPlayerSendCancel(cid, "Voc� precisa de um pok�mon pra ver a experiencia.")
		return true
	end

exps = getPlayerStorageValue(cid,66602)
nextexp = getPlayerStorageValue(cid,66603)
totalexp = nextexp - exps
	
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Faltam "..totalexp.." para seu poke subir de n�vel.")

return true
end