local EFFECTS = {
	--[OutfitID] = {Effect}
	["Magmar"] = 35,   
	["Jynx"] = 41,          --alterado v1.5
	["Shiny Jynx"] = 41, 
    ["Piloswine"] = 41,  --alterado v1.8
    ["Swinub"] = 41,   
}

function onUse(cid, item, frompos, item2, topos)
for a, b in pairs(ginasios) do
if getPlayerStorageValue(cid, b.storage) == 1 then -- GYM
doPlayerSendCancel(cid, "You can't return your pokemon during gym battles.")
return true
end
end
local ballName = getItemAttribute(item.uid, "poke")
local btype = getPokeballType(item.itemid)
local usando = pokeballs[btype].use

local effect = pokeballs[btype].effect
	if not effect then
		effect = 21
	end

if item.itemid == usando then
--doBackPokeballsInDuel(cid)
if #getCreatureSummons(cid) >= 1 then
local z = getCreatureSummons(cid)[1]
doItemSetAttribute(item.uid, "atualLife", getCreatureHealth(z))
local pokename = getCreatureName(z)
local mbk = gobackmsgs[math.random(1, #gobackmsgs)].back:gsub("doka", pokename)
if getItemAttribute(item.uid, "poke"):find(getCreatureName(z)) then
doTransformItem(item.uid, item.itemid-1)
doCreatureSay(cid, mbk, TALKTYPE_SAY)
local summom = getCreatureSummons(cid)
local maxh = pokes[getCreatureName(summom[1])].vida
local pct2 = ((getCreatureHealth(summom[1])) / (getCreatureMaxHealth(summom[1])))
local vids = ((getCreatureHealth(summom[1])) - 2)
doCreatureAddHealth(summom[1], -vids)
setCreatureMaxHealth(summom[1], maxh)
doCreatureAddHealth(summom[1], ((maxh) * (pct2)))
local pokelife = getCreatureHealth(z)
doItemSetAttribute(item.uid, "hp", pokelife)
setPlayerStorageValue(cid, 61204, 0)
setPlayerStorageValue(cid, 2, 0)
doSendMagicEffect(getCreaturePosition(z), effect)
doRemoveCreature(z)
doUpdatePokemonsLifeBar(cid)
doPlayerSendCancel(cid, '12//,hide')
return true
end
end

elseif item.itemid == pokeballs[btype].on then

--checkPokeballsInDuel(cid)
if item.uid ~= getPlayerSlotItem(cid, CONST_SLOT_FEET).uid then
	doPlayerSendCancel(cid, "You must put your pokeball in the correct place!")
	return TRUE
end


if not canSummon(cid) then
return doPlayerSendDefaultCancel(cid, RETURNVALUE_NOTENOUGHROOM)
end

if getPlayerStorageValue(cid, 63215) >= 1 then
return doPlayerSendCancel(cid, "You can't use pokeball while surfing.")
end

if getPlayerStorageValue(cid, 62314) >= 1 then
return doPlayerSendCancel(cid, "You can't use pokeball while flying.")
end

if #getCreatureSummons(cid) >= 1 then
return doPlayerSendCancel(cid, "You have already summoned a pokemon.")
end

for i,x in pairs(pokes) do
if i == getItemAttribute(item.uid, "poke") then

if getPlayerLevel(cid) < x.level then
doPlayerSendCancel(cid, "You need level "..x.level.." or higher to use this pokemon.")
return true
end
local removed = doCreateItem(1285, 1, getThingPos(cid))
doSummonMonster(cid, i)
local pk = getCreatureSummons(cid)[1]
doTeleportThing(pk, getClosestFreeTile(pk, getThingPos(cid)), false)
doRemoveItem(removed, 1)
doCreatureSetLookDir(pk, 2)
local maxh = pokes[getCreatureName(pk)].vida
local levellife = ((getPlayerLevel(cid)) * (pokes[getCreatureName(pk)].cons))
local health = tonumber(getItemAttribute(item.uid, "hp"))
doConvinceCreature(cid, pk)
doCreatureAddHealth(pk, health-maxh)
local pct = ((getCreatureHealth(pk)) / (getCreatureMaxHealth(pk)))
local vidis = (getCreatureHealth(pk))
setCreatureMaxHealth(pk, ((maxh) + (levellife)))
doCreatureAddHealth(pk, 2)
doCreatureAddHealth(pk, -vidis)
doCreatureAddHealth(pk, ((getCreatureMaxHealth(pk)) * (pct)) - 2)
doTransformItem(item.uid, item.itemid+1)
local pokename = getCreatureName(getCreatureSummons(cid)[1])
local mgo = gobackmsgs[math.random(1, #gobackmsgs)].go:gsub("doka", pokename)
if getItemAttribute(item.uid, "addon") then
local addonx = getItemAttribute(item.uid, "addon")
doCreatureChangeOutfit(pk,{lookType = addonx})
return true
end
doCreatureSay(cid, mgo, TALKTYPE_SAY)
    if EFFECTS[getCreatureName(pk)] then             
       markPosEff(pk, getThingPos(pk))
       sendMovementEffect(pk, EFFECTS[getCreatureName(pk)], getThingPos(pk))  
    end
doPlayerSendCancel(cid, '12//,show')
doUpdatePokemonsBar(cid)
doUpdateMoves(cid)
sendCooldown(cid)
doItemSetAttribute(item.uid, "maxhealth", getCreatureMaxHealth(pk))
doItemSetAttribute(item.uid, "poke", getCreatureName(pk))
doSendMagicEffect(getCreaturePosition(pk), effect)
setPlayerStorageValue(cid, 61204, 1)
registerCreatureEvent(pk, "DiePoke")
registerCreatureEvent(pk, "Exp")
break
end
end
end
return TRUE
end