function onSay(cid, words, param, channel)
if getPlayerStorageValue(cid, 5489) &gt;= 1 then
	setPlayerStorageValue(cid, 12541, 0)
	setPlayerStorageValue(cid, 6598755, 1)
	doSendAnimatedText(getThingPos(cid), "BATTLE", math.random(20, 60))
	   for _, sid in ipairs(getPlayersOnline()) do
		   if getPlayerStorageValue(sid, 12542) &gt;= 1 then  
			  setPlayerStorageValue(sid, 6598754, 1)
						doSendAnimatedText(getThingPos(sid), "BATTLE", math.random(20, 60))
		   end
	   end
setGlobalStorageValue(1203, 1)
else
return false
end
end