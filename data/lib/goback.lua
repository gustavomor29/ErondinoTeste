storages = {
         pokeName        = 650, -- Checa o nome verdadeiro do pokemon
}

gobackmsgs = {
[1] = {go = "Go, doka!", back = "Come back, doka!"},
[2] = {go = "Let's do it, doka!", back = "Thanks for helping, doka!"},
[3] = {go = "I choose you, doka!", back = "That's enough, come back!"},
[4] = {go = "I need your help, doka!", back = "You were great, doka!"},
[5] = {go = "Let's fight, doka!", back = "Excellent work, doka!"},
[6] = {go = "It's battle time, doka!", back = "Well done, doka!"},
[7] = {go = "It's your turn, doka!", back = "You need to rest, doka!"},
[8] = {go = "doka, let's battle!", back = "Hurry back, doka!"},
[9] = {go = "Show your strength, doka!", back = "You did your best, doka!"}
}

local EFFECTS = {
	--[OutfitID] = {Effect}
	["Magmar"] = 35,   
	["Jynx"] = 41,          --alterado v1.5
	["Shiny Jynx"] = 41, 
    ["Piloswine"] = 41,  --alterado v1.8
    ["Swinub"] = 41,   
}

function getPokemonName(cid)

 if getPlayerStorageValue(cid, storages.pokeName) == -1 then
    return getCreatureName(cid)
 else
    return getPlayerStorageValue(cid, storages.pokeName)
 end

end

function doReturnPokemon(cid, pokemon, pokeball, effect, hideeffects, blockevo)

 if #getCreatureSummons(cid) >= 1 then
local z = getCreatureSummons(cid)[1]
local pokename = getCreatureName(z)
	if not pokeball then
		pokeball = getPlayerSlotItem(cid, 8)
	end
doItemSetAttribute(pokeball.uid, "atualLife", getCreatureHealth(z))
local mbk = gobackmsgs[math.random(1, #gobackmsgs)].back:gsub("doka", pokename)
if getItemAttribute(pokeball.uid, "poke"):find(getCreatureName(z)) then
doTransformItem(pokeball.uid, pokeball.itemid-1)
doCreatureSay(cid, mbk, TALKTYPE_SAY)
local summom = getCreatureSummons(cid)
local maxh = pokes[getCreatureName(summom[1])].vida
local pct2 = ((getCreatureHealth(summom[1])) / (getCreatureMaxHealth(summom[1])))
local vids = ((getCreatureHealth(summom[1])) - 2)
doCreatureAddHealth(summom[1], -vids)
setCreatureMaxHealth(summom[1], maxh)
doCreatureAddHealth(summom[1], ((maxh) * (pct2)))
local pokelife = getCreatureHealth(z)
doItemSetAttribute(pokeball.uid, "hp", pokelife)
setPlayerStorageValue(cid, 61204, 0)
setPlayerStorageValue(cid, 2, 0)
doSendMagicEffect(getCreaturePosition(z), effect)
doRemoveCreature(z)
doUpdatePokemonsLifeBar(cid)
doPlayerSendCancel(cid, '12//,hide')
return true
end
end
end

function doGoPokemon(cid, item)
if item.uid ~= getPlayerSlotItem(cid, CONST_SLOT_FEET).uid then
	doPlayerSendCancel(cid, "You must put your pokeball in the correct place!")
	return TRUE
end
   local btype = getPokeballType(item.itemid)  
local effect = pokeballs[btype].effect
	if not effect then
		effect = 21
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
return TRUE
end