--
function onUse(cid, item, frompos, item2, topos)
 
tele = {x=1597, y=888, z=4}
if item.uid ==2719 then
vocation = getPlayerVocation(cid)
if vocation == 2 and getPlayerLevel(cid) > 75 then
doTeleportThing(cid,tele)
doPlayerSendTextMessage(cid,22,"Bem-vindo ao 4 andar.")
elseif vocation == 2 and getPlayerLevel(cid) > 75 then
doTeleportThing(cid,tele)
doPlayerSendTextMessage(cid,22,"Bem-vindo ao 4 andar.")
elseif vocation == 2 and getPlayerLevel(cid) > 75 then
doTeleportThing(cid,tele)
doPlayerSendTextMessage(cid,22,"Bem-vindo ao 4 andar.")
elseif vocation == 2 and getPlayerLevel(cid) > 75 then
doTeleportThing(cid,tele)
doPlayerSendTextMessage(cid,22,"Bem-vindo ao 4 andar.")

else
doPlayerSendTextMessage(cid,22,"Somente membros desse team lvl 75+ pode entrar")
end
return 0
end
return 1
end