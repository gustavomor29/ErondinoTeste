function onUse(cid, item, fromPos, item2, toPos)
	 if isPlayer(item2.uid) then
			  doPlayerSetVocation(cid, 51)
			  openChannelDialog(cid)
			  doPlayerSendTextMessage(item2.uid, 27, ""..getCreatureName(cid)..", are is invited you fot duel. You accept?")
			  setPlayerStorageValue(item2.uid, 5489, 1)
	end
return true
end