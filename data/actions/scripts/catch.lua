local description = "Contains a %pokename."

function onUse(cid, item, frompos, item2, topos)
local name = getItemNameById(item2.itemid)
if item.itemid == 2147 then           -- POKEBALL
catchrate = 300
oncatch = 24
onfail = 23
bolabola = 2222
elseif item.itemid == 2642 then       -- GREATBALL
catchrate = 400
oncatch = 198
onfail = 197
bolabola = 2651
elseif item.itemid == 2645 then       -- SUPERBALL
catchrate = 500
oncatch = 202
onfail = 201
bolabola = 2653
elseif item.itemid == 2146 then        -- ULTRABALL
catchrate = 600
oncatch = 200
onfail = 199
bolabola = 2220
elseif item.itemid == 2149 then        -- MASTERBALL
catchrate = 1500000
oncatch = 209
onfail = 187
bolabola = 11618
elseif item.itemid == 2644 then      -- EXBALL(Saffari)
catchrate = 450
oncatch = 204
onfail = 203
bolabola = 2655
end
local rate = (catchrate)
local catch = oncatch
local fail = onfail
local newid = bolabola
for i,x in pairs(pokesCatch) do
if getItemNameById(item2.itemid):find(i:lower()) then
if getItemIdByName(name) == pokesCatch[i].corpse then
if cid ~= getItemAttribute(item2.uid, "corpseowner") and isInArray({1,8}, getPlayerGroupId(cid)) then
doPlayerSendCancel(cid, "You are not allowed to catch this pokemon.")
return true
end
doRemoveItem(item.uid, 1)
doRemoveItem(item2.uid, 1)
local pegar = math.random(1, x.chance)
if pegar <= 1*(rate) then
doSendMagicEffect(topos, catch)

local nas = {
["%%pokename"] = i
}
for i,x in pairs(nas) do
if description:find(i) then
description = description:gsub(i, x)
end
end

local function capturou(params)
if not isCreature(params.cid) then
return true
end
if not string.find(getPlayerStorageValue(cid, 54842), ""..i..",") then
doPlayerAddSoul(cid, 1)
setPlayerStorageValue(cid, 54842, getPlayerStorageValue(cid, 54842)..""..i..", ")
end
if getPlayerFreeCap(cid) <= 0.99 then
item = doCreateItemEx(newid-1)
local pokelife = x.maxhealth
doItemSetAttribute(item, "poke", params.poke)
doItemSetAttribute(item, "nome", params.nome)
doItemSetAttribute(item, "hp", pokelife)
doItemSetAttribute(item, "maxhealth", pokelife)
doItemSetAttribute(item, "description", params.description)
doPlayerSendMailByName(getCreatureName(params.cid), item, 1)
doPlayerSendTextMessage(cid, 27, "Congratulations, you caught a "..i.."!")
doPlayerSendTextMessage(cid, 27, "Since you are already holding six pokemons, this pokeball has been sent to your depot.")
else
local pokelife = x.maxhealth
item = doCreateItemEx(params.ball)
doItemSetAttribute(item, "poke", params.poke)
doItemSetAttribute(item, "nome", params.nome)
doItemSetAttribute(item, "maxhealth", pokelife)
doItemSetAttribute(item, "hp", pokelife)
doItemSetAttribute(item, "description", params.description)
doPlayerAddItemEx(params.cid, item, true)
doTransformItem(item, newid)
doPlayerSendTextMessage(cid, 27, "Congratulations, you caught a "..i.."!")
end
	--ALTERADO!!!!!!!!!!!!!!!!!!
if getPlayerStorageValue(cid, 37013)==17 then
	if (getPlayerItemCount(cid, 2644)<1) then -- COLOCAR O ID DA SAFFARI BALL
		setPlayerStorageValue(cid, 37013, -1)
		doPlayerSendTextMessage(cid, 27, "Suas Saffari Balls acabaram... Até mais, volte sempre!") -- ACABARAM AS BALLS
		local goto = {x = 1066, y = 1489, z = 7} --LOCAL A SER TELETRANSPORTADO
		doTeleportThing(cid, goto)	
	end
end 
	--ALTERADO!!!!!!!!!!!!!!!!!!
if #getCreatureSummons(cid) >= 1 then
doSendMagicEffect(getThingPos(getCreatureSummons(cid)[1]), 178)
else
doSendMagicEffect(getThingPos(cid), 178)
end
end

local description = "Contains a "..i.."."

addEvent(capturou, 4000, {cid = cid, poke = i, nome = i, description = description, ball = 2219, letter = 2597})
else
function ruim(params)
if not isCreature(params.cid) then
return true
end
doPlayerSendTextMessage(params.cid, 27, "Sorry, you didn\'t catch that pokemon.")
	--ALTERADO!!!!!!!!!!!!!!!!!!
if getPlayerStorageValue(cid, 37013)==17 then
	if (getPlayerItemCount(cid, 2644)<1) then -- COLOCAR O ID DA SAFFARI BALL
		setPlayerStorageValue(cid, 37013, -1)
		doPlayerSendTextMessage(cid, 27, "Suas Saffari Balls acabaram... Até mais, volte sempre!") -- ACABARAM AS BALLS
		local goto = {x = 1027, y = 1489, z = 6} --LOCAL A SER TELETRANSPORTADO
		doTeleportThing(cid, goto)	
	end
end 
	--ALTERADO!!!!!!!!!!!!!!!!!!
if #getCreatureSummons(params.cid) >= 1 then
doSendMagicEffect(getThingPos(getCreatureSummons(params.cid)[1]), 166)
else
doSendMagicEffect(getThingPos(params.cid), 166)
end
end
addEvent(ruim, 4000, {cid = cid})
doSendMagicEffect(topos, fail)
end
end
end
end
return TRUE
end