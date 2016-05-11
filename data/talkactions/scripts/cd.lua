function onSay(cid)
if #getCreatureSummons(cid) == 0 then
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You need a pokemon to check.")
return 0
end
local ret = {}
table.insert(ret, "12|,")
for x = 1 ,12 do
table.insert(ret, getPokemonCooldown(cid, x)..",")
end
doPlayerSendCancel(cid, table.concat(ret))
return 0
end