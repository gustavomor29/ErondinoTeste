function doHealOverTime(cid, heal, turn, effect)                     --alterado v1.6 peguem o script todo!!
if not isCreature(cid) then return true end

if turn <= 0 or (getCreatureHealth(cid) == getCreatureMaxHealth(cid)) or getPlayerStorageValue(cid, 173) <= 0 then
   setPlayerStorageValue(cid, 173, -1)
   return pokeinfo(getCreatureMaster(cid))
elseif getCreatureHealth(cid) + heal/10 >= getCreatureMaxHealth(cid) then
   doSendAnimatedText(getThingPos(cid), "+"..getCreatureMaxHealth(cid) - getCreatureHealth(cid), 65)
   doCreatureAddHealth(cid, getCreatureMaxHealth(cid) - getCreatureHealth(cid))
   doSendMagicEffect(getThingPos(cid), 12)
   return pokeinfo(getCreatureMaster(cid))
end

doSendAnimatedText(getThingPos(cid), "+"..heal/10, 65)
doCreatureAddHealth(cid, heal/10)
doSendMagicEffect(getThingPos(cid), 12)
pokeinfo(getCreatureMaster(cid))
addEvent(doHealOverTime, 1000, cid, heal, turn - 1, effect)
end

local potions = {
[2272] = {health = 400, animate = "SMALL POT", collor = 140},
[2274] = {health = 1500, animate = "GREAT POT", collor = 140},
[2271] = {health = 4000, animate = "ULTRA POT", collor = 140},
[2275] = {health = 10000, animate = "HYPER POT", collor = 140},
}

function onUse(cid, item, frompos, item2, topos)
local pid = getThingFromPosWithProtect(topos)

if not isSummon(pid) or getCreatureMaster(pid) ~= cid then
return doPlayerSendCancel(cid, "You can only use potions on your own Pokemons!")
end

if getCreatureHealth(pid) == getCreatureMaxHealth(pid) then
return doPlayerSendCancel(cid, "This pokemon is already at full health.")
end

if getPlayerStorageValue(pid, 173) >= 1 then
return doPlayerSendCancel(cid, "This pokemon is already under effects of potions.")
end

if getPlayerStorageValue(cid, 52481) >= 1 then
return doPlayerSendCancel(cid, "You can't do that while a duel.")
end

doCreatureSay(cid, "".. getCreatureName(pid)..", take this potion!", TALKTYPE_SAY)
doSendAnimatedText(getThingPos(pid), potions[item.itemid].animate, potions[item.itemid].collor)
setPlayerStorageValue(pid, 173, 1)
doRemoveItem(item.uid, 1)

doHealOverTime(pid, potions[item.itemid].health, 10, 12)

return true
end
