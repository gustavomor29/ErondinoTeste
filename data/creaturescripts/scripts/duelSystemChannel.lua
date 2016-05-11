local config = {
channelId1 = 11, -- Aqui você coloca-ra o id da sua primeira channel. A qual está escrito "1 Pokemon".
channelId2 = 12, -- Aqui você coloca-rá o id da sua 2° channel. A qual está escrito "2 Pokemons".
channelId3 = 13, -- Aqui você coloca-rá o id da sua 3° channel. A qual está escrito "3 Pokemons".
channelId4 = 14, -- Aqui você coloca-rá o id da sua 4° channel. A qual está escrito "4 Pokemons".
channelId5 = 15, -- Aqui você coloca-rá o id da sua 5° channel. A qual está escrito "5 Pokemons".
channelId6 = 16, -- Aqui você coloca-rá o id da sua 6° channel. A qual está escrito "6 Pokemons".
}
function onJoinChannel(cid, channelId, users, isTv)
if getPlayerVocation(cid) == 51 then
else
return true
end
   if channelId == config.channelId1 then
	  setPlayerStorageValue(cid, 12541, 0)
			setPlayerStorageValue(cid, 12542, 1)
	  setGlobalStorageValue(12542, 1)
	  doSendAnimatedText(getThingPos(cid), "1 Poke", 28)
	  doPlayerSetVocation(cid, 1)
	  return false
   elseif channelId == config.channelId2 then
	  setPlayerStorageValue(cid, 12541, 0)
			setPlayerStorageValue(cid, 12542, 1)
	  setGlobalStorageValue(12542, 2)
	  doSendAnimatedText(getThingPos(cid), "2 Pokes", 28)
	  doPlayerSetVocation(cid, 1)
	  return false
   elseif channelId == config.channelId3 then
	  setPlayerStorageValue(cid, 12541, 0)
			setPlayerStorageValue(cid, 12542, 1)
	  setGlobalStorageValue(12542, 3)
	  doSendAnimatedText(getThingPos(cid), "3 Pokes", 28)
	  doPlayerSetVocation(cid, 1)
	  return false
   elseif channelId == config.channelId4 then
	  setPlayerStorageValue(cid, 12541, 0)
			setPlayerStorageValue(cid, 12542, 1)
	  setGlobalStorageValue(12542, 4)
	  doSendAnimatedText(getThingPos(cid), "4 Pokes", 28)
	  doPlayerSetVocation(cid, 1)
	  return false
   elseif channelId == config.channelId5 then
	  setPlayerStorageValue(cid, 12541, 0)
			setPlayerStorageValue(cid, 12542, 1)
	  setGlobalStorageValue(12542, 5)
	  doSendAnimatedText(getThingPos(cid), "5 Pokes", 28)
	  doPlayerSetVocation(cid, 1)
	  return false
   elseif channelId == config.channelId6 then
	  setPlayerStorageValue(cid, 12541, 0)
			setPlayerStorageValue(cid, 12542, 1)
	  setGlobalStorageValue(12542, 6)
	  doSendAnimatedText(getThingPos(cid), "6 Pokes", 28)
	  doPlayerSetVocation(cid, 1)
   return false
   end
return true
end	  