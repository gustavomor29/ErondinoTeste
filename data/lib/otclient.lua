function doSetItemAttribute(item, key, value)
doItemSetAttribute(item, key, value)
end

function deTransform(cid, check)
	if not isCreature(cid) then return true end

	local m = getCreatureMaster(cid)
	local p = getPlayerSlotItem(m, 8)

	if getItemAttribute(p.uid, "transTurn") ~= check then return true end

	setPlayerStorageValue(cid, 1010, getCreatureName(cid) == "Ditto" and "Ditto" or "Shiny Ditto")        --edited
	doRemoveCondition(cid, CONDITION_OUTFIT)
	doSendMagicEffect(getThingPos(cid), 184)
	doCreatureSay(cid, "DITTO!", TALKTYPE_MONSTER)
	doItemSetAttribute(p.uid, "transBegin", 0)
	doItemSetAttribute(p.uid, "transLeft", 0)
	doItemEraseAttribute(p.uid, "transName")
end


function sendCooldown(cid)
doUpdateCooldowns(cid)
end

function onPokeHealthChange(cid)
local pokemon = getCreatureSummons(cid)[1]
if not isCreature(pokemon)then 
local ball = getPlayerSlotItem(cid, 8).uid
if not ball or ball <= 1 or not pokes[getItemAttribute(ball, 'poke')] then doPlayerSendCancel(cid, '#ph#,0,0') return true end
if ball >= 1 then
local maxhp = getItemAttribute(ball, 'maxhealth')
local hp = getItemAttribute(ball, "atualLife") or maxhp 
doPlayerSendCancel(cid, '#ph#,'..hp..","..maxhp) 
return true
end
doPlayerSendCancel(cid, '#ph#,0,0') 
return true 
end
local pokemon = getCreatureSummons(cid)[1]
doPlayerSendCancel(cid, '#ph#,'..getCreatureHealth(pokemon)..','..getCreatureMaxHealth(pokemon))
end

function pokeinfo(cid)
return onPokeHealthChange(cid)
end

function setCD(item, tipo, tempo)

	if not tempo or not tonumber(tempo) then
		doItemEraseAttribute(item, tipo)
	return true
	end

	doItemSetAttribute(item, tipo, "cd:"..(tempo + os.time()).."")
return tempo + os.time()
end

function getCD(item, tipo, limite)

	if not getItemAttribute(item, tipo) then
	return 0
	end

	local string = getItemAttribute(item, tipo):gsub("cd:", "")
	local number = tonumber(string) - os.time()

	if number <= 0 then
	return 0
	end

	if limite and limite < number then
		return 0
	end

return number
end

function getPokemonByName(cid, pokemon)
local arraypoke = {}
local container = getPlayerSlotItem(cid, 3).uid
local pokeballs = getPokeballsInContainer(container) 
for i =1, #pokeballs do
name = getItemAttribute(pokeballs[i], "poke")
if pokemon == name then
table.insert(arraypoke, pokeballs[i])
return arraypoke[1]
end
end
return false
end

function isItemPokeball(item)         --alterado v1.9 \/
if not item then return false end
for a, b in pairs (pokeballs) do
	if isInArray(b.all, item) then return true end
end
return false
end

function isPokeball(item)
return isItemPokeball(item)
end    

function getPokeballsInContainer(container) -- Function By Kydrai
	if not isContainer(container) then return {} end
	local items = {}
	if isContainer(container) and getContainerSize(container) > 0 then
		for slot=0, (getContainerSize(container)-1) do
			local item = getContainerItem(container, slot)
				if isContainer(item.uid) then
					local itemsbag = getPokeballsInContainer(item.uid)
					for i=0, #itemsbag do
						table.insert(items, itemsbag[i])
					end
				elseif isPokeball(item.itemid) then
					table.insert(items, item.uid)
				end
		end
	end
return items
end

function atualizaPokes(cid)
local item = getPlayerSlotItem(cid, 8)
if item.uid <= 0 then return true end
if not getItemAttribute(item.uid, "poke") then
return true
end    
for i, x in pairs(fotos) do
if string.lower(getItemAttribute(item.uid, "poke")) == string.lower(i) then
doTransformItem(getPlayerSlotItem(cid, 7).uid, fotos[i])
if useOTClient then
doPlayerSendCancel(cid, '12//,show')
end
if useKpdoDlls then
doUpdateMoves(cid)
end

end
end
end

function doSendPokemon(cid, pokemon)


if getPlayerStorageValue(cid, 17000) >= 1 or getPlayerStorageValue(cid, 17001) >= 1 or getPlayerStorageValue(cid, 63215) >= 1 
or getPlayerStorageValue(cid, 75846) >= 1 or getPlayerStorageValue(cid, 5700) >= 1  then    --alterado v1.9 <<
return true                                                                                                                        
end

if exhaustion.get(cid, 6666) and exhaustion.get(cid, 6666) > 0 then return true end


if #getCreatureSummons(cid) > 1 and getPlayerStorageValue(cid, 212124) <= 0 then     --alterado v1.6
if getPlayerStorageValue(cid, 637501) == -2 or getPlayerStorageValue(cid, 637501) >= 1 then  
BackTeam(cid)       
end
end   

if #getCreatureSummons(cid) > 0 then
t = getPlayerSlotItem(cid, 8)
local btype = getPokeballType(t.itemid)
local effect = pokeballs[btype].effect or 21	

doReturnPokemon(cid, getCreatureSummons(cid)[1], t,effect)
end

t = getPlayerSlotItem(cid, 8)
if t.uid ~= 0 then
pokeslot = getItemAttribute(t.uid, "poke")


if pokeslot == pokemon then
t = getPlayerSlotItem(cid, 8)
doGoPokemon(cid, t)
atualizaPokes(cid)
return true
end

if getPokemonByName(cid, pokemon) then
local poke = getPokemonByName(cid, pokemon)
local id = t.itemid
doRemoveItem(t.uid)
local id2 = getThing(poke).itemid
doRemoveItem(getPokemonByName(cid, pokemon))
t = getPlayerSlotItem(cid, 8)
doGoPokemon(cid, t)
atualizaPokes(cid)
return true
end
end


if getPokemonByName(cid, pokemon) then
local id = getThing(getPokemonByName(cid, pokemon)).itemid
doRemoveItem(getPokemonByName(cid, pokemon))
t = getPlayerSlotItem(cid, 8)
doGoPokemon(cid, t)
atualizaPokes(cid)
return true
end
return false
end

function sendPokeInfo(cid)
local activeimg = true
local poke = getPlayerSlotItem(cid, 8)
local pokeslot = getItemAttribute(poke.uid, "poke")
local pokeboost = getItemAttribute(poke.uid, "boost") or 0
local pokehappy = getPlayerStorageValue(getCreatureSummons(cid)[1], 1008) or 1 
doPlayerSendCancel(cid, "NewInfo/"..pokeslot.."/"..pokeboost.."/"..pokehappy.."")
if activeimg then
local img = "ShowPoke/"
doPlayerSendCancel(cid, img..pokeslot)
end
end

function sendAllPokemonsBarPoke(cid)
local container = getPlayerSlotItem(cid, 3).uid
local pokes = "p#"
local t = getPlayerSlotItem(cid, 8)
if t.uid ~= 0 then
pokeslot = getItemAttribute(t.uid, "poke")
pokes = pokes..","..pokeslot..""
end
local pokeballs = getPokeballsInContainer(container) 
for i =1, #pokeballs do
pokemons = getItemAttribute(pokeballs[i], "poke")
pokes = pokes..","..pokemons..","
end
doPlayerSendCancel(cid, pokes)
end