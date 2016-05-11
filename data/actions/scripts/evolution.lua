local eevee = {'2277', '2279', '2283', '2288', '2286'}
local smeargle virgem = {'12143', '12144', '12145', '12146', '12147', '12157', '12158'}
local slowpoke = {'2277', '12156'}
local gloom = {'2276', '2278'}
local poliwhirl = {'2277', '2281'}
local tyrogue = {'12042', '12041', '2151'}
function onUse(cid, item, frompos, item2, topos)
if not isMonster(item2.uid) then
return true
end
if not isPlayer(getCreatureMaster(item2.uid)) or getCreatureMaster(item2.uid) ~= cid then
doPlayerSendCancel(cid, "You can only use stones on pokemons you own.")
return true
end
for i,x in pairs(types) do
if getPlayerSlotItem(cid, 7).itemid ~= fotos[getCreatureName(item2.uid)] then
return doPlayerSendCancel(cid, "Please, keep your pokemon's ball at the right place during evolution!")
end
if item.itemid == x.itemid then
if isPlayerSummon(cid, item2.uid) then
if table.find(x, getCreatureName(item2.uid)) then
if getCreatureName(item2.uid) == "Eevee" then
        if item.itemid == 2279 then
                if getPlayerLevel(cid) < 55 then
                return doPlayerSendCancel(cid, "Sorry, you don't have the required level to evolve this pokemon (55).")
                end
                local pokeball = getPlayerSlotItem(cid, 8)
				doItemSetAttribute(pokeball.uid, "poke", "Jolteon")
                doItemSetAttribute(pokeball.uid, "hp", "5500")
                doItemSetAttribute(pokeball.uid, "maxhealth", "5500")
                doItemSetAttribute(pokeball.uid, "description", "Contains a Jolteon.")
                doPlayerSendTextMessage(cid, 27, "Congratulations! Your "..getCreatureName(item2.uid).." evolved into a Jolteon!")
                doSendMagicEffect(topos, 18)
                doTransformItem(getPlayerSlotItem(cid, 7).uid, 2511)
                doSendMagicEffect(getThingPos(cid), 183)
                local oldpos = getThingPos(item2.uid)
                doRemoveCreature(item2.uid)
                doSummonMonster(cid, "Jolteon")
                local pk = getCreatureSummons(cid)[1]
                registerCreatureEvent(pk, "DiePoke")
                registerCreatureEvent(pk, "Exp")
                doTeleportThing(pk, oldpos, false)
                doCreatureSetLookDir(pk, 2)
                setCreatureMaxHealth(pk, getCreatureMaxHealth(pk) + (pokes[getCreatureName(pk)].cons * getPlayerLevel(cid)))
                doCreatureAddHealth(pk, getCreatureMaxHealth(pk))
                setPlayerStorageValue(cid, 2, 0)
                doPlayerRemoveItem(cid, item.itemid, 1)         
        elseif item.itemid == 2277 then
                if getPlayerLevel(cid) < 55 then
                return doPlayerSendCancel(cid, "Sorry, you don't have the required level to evolve this pokemon (55).")
                end
                local pokeball = getPlayerSlotItem(cid, 8)
				doItemSetAttribute(pokeball.uid, "poke", "Vaporeon")
                doItemSetAttribute(pokeball.uid, "hp", "5500")
                doItemSetAttribute(pokeball.uid, "maxhealth", "5500")
                doItemSetAttribute(pokeball.uid, "description", "Contains a Vaporeon.")
                doPlayerSendTextMessage(cid, 27, "Congratulations! Your "..getCreatureName(item2.uid).." evolved into a Vaporeon!")
                doSendMagicEffect(topos, 18)
                doTransformItem(getPlayerSlotItem(cid, 7).uid, 2510)
                doSendMagicEffect(getThingPos(cid), 183)
                local oldpos = getThingPos(item2.uid)
                doRemoveCreature(item2.uid)
                doSummonMonster(cid, "Vaporeon")
                local pk = getCreatureSummons(cid)[1]
                registerCreatureEvent(pk, "DiePoke")
                registerCreatureEvent(pk, "Exp")
                doTeleportThing(pk, oldpos, false)
                doCreatureSetLookDir(pk, 2)
                setCreatureMaxHealth(pk, getCreatureMaxHealth(pk) + (pokes[getCreatureName(pk)].cons * getPlayerLevel(cid)))
                doCreatureAddHealth(pk, getCreatureMaxHealth(pk))
                setPlayerStorageValue(cid, 2, 0)
                doPlayerRemoveItem(cid, item.itemid, 1)
        elseif item.itemid == 2286 then
                if getPlayerLevel(cid) < 55 then
                return doPlayerSendCancel(cid, "Sorry, you don't have the required level to evolve this pokemon (55).")
                end
                local pokeball = getPlayerSlotItem(cid, 8)
				doItemSetAttribute(pokeball.uid, "poke", "Umbreon")
                doItemSetAttribute(pokeball.uid, "hp", "5500")
                doItemSetAttribute(pokeball.uid, "maxhealth", "5500")
                doItemSetAttribute(pokeball.uid, "description", "Contains a Umbreon.")
                doPlayerSendTextMessage(cid, 27, "Congratulations! Your "..getCreatureName(item2.uid).." evolved into a Umbreon!")
                doSendMagicEffect(topos, 18)
                doTransformItem(getPlayerSlotItem(cid, 7).uid, 11610)
                doSendMagicEffect(getThingPos(cid), 183)
                local oldpos = getThingPos(item2.uid)
                doRemoveCreature(item2.uid)
                doSummonMonster(cid, "Umbreon")
                local pk = getCreatureSummons(cid)[1]
                registerCreatureEvent(pk, "DiePoke")
                registerCreatureEvent(pk, "Exp")
                doTeleportThing(pk, oldpos, false)
                doCreatureSetLookDir(pk, 2)
                setCreatureMaxHealth(pk, getCreatureMaxHealth(pk) + (pokes[getCreatureName(pk)].cons * getPlayerLevel(cid)))
                doCreatureAddHealth(pk, getCreatureMaxHealth(pk))
                setPlayerStorageValue(cid, 2, 0)
                doPlayerRemoveItem(cid, item.itemid, 1)
        elseif item.itemid == 2288 then
                if getPlayerLevel(cid) < 55 then
                return doPlayerSendCancel(cid, "Sorry, you don't have the required level to evolve this pokemon (55).")
                end
                local pokeball = getPlayerSlotItem(cid, 8)
				doItemSetAttribute(pokeball.uid, "poke", "Espeon")
                doItemSetAttribute(pokeball.uid, "hp", "5500")
                doItemSetAttribute(pokeball.uid, "maxhealth", "5500")
                doItemSetAttribute(pokeball.uid, "description", "Contains a Espeon.")
                doPlayerSendTextMessage(cid, 27, "Congratulations! Your "..getCreatureName(item2.uid).." evolved into a Espeon!")
                doSendMagicEffect(topos, 18)
                doTransformItem(getPlayerSlotItem(cid, 7).uid, 11537)
                doSendMagicEffect(getThingPos(cid), 183)
                local oldpos = getThingPos(item2.uid)
                doRemoveCreature(item2.uid)
                doSummonMonster(cid, "Espeon")
                local pk = getCreatureSummons(cid)[1]
                registerCreatureEvent(pk, "DiePoke")
                registerCreatureEvent(pk, "Exp")
                doTeleportThing(pk, oldpos, false)
                doCreatureSetLookDir(pk, 2)
                setCreatureMaxHealth(pk, getCreatureMaxHealth(pk) + (pokes[getCreatureName(pk)].cons * getPlayerLevel(cid)))
                doCreatureAddHealth(pk, getCreatureMaxHealth(pk))
                setPlayerStorageValue(cid, 2, 0)
                doPlayerRemoveItem(cid, item.itemid, 1)
        elseif item.itemid == 2283 then
                if getPlayerLevel(cid) < 55 then
                return doPlayerSendCancel(cid, "Sorry, you don't have the required level to evolve this pokemon (55).")
                end
                local pokeball = getPlayerSlotItem(cid, 8)
				doItemSetAttribute(pokeball.uid, "poke", "Flareon")
                doItemSetAttribute(pokeball.uid, "hp", "5500")
                doItemSetAttribute(pokeball.uid, "maxhealth", "5500")
                doItemSetAttribute(pokeball.uid, "description", "Contains a Flareon.")
                doPlayerSendTextMessage(cid, 27, "Congratulations! Your "..getCreatureName(item2.uid).." evolved into a Flareon!")
                doSendMagicEffect(topos, 18)
                doTransformItem(getPlayerSlotItem(cid, 7).uid, 2512)
                doSendMagicEffect(getThingPos(cid), 183)
                local oldpos = getThingPos(item2.uid)
                doRemoveCreature(item2.uid)
                doSummonMonster(cid, "Flareon")
                local pk = getCreatureSummons(cid)[1]
                registerCreatureEvent(pk, "DiePoke")
                registerCreatureEvent(pk, "Exp")
                doTeleportThing(pk, oldpos, false)
                doCreatureSetLookDir(pk, 2)
                setCreatureMaxHealth(pk, getCreatureMaxHealth(pk) + (pokes[getCreatureName(pk)].cons * getPlayerLevel(cid)))
                doCreatureAddHealth(pk, getCreatureMaxHealth(pk))
                setPlayerStorageValue(cid, 2, 0)
                doPlayerRemoveItem(cid, item.itemid, 1)
end
elseif getCreatureName(item2.uid) == "Slowpoke" then
        if item.itemid == 2277 then
                if getPlayerLevel(cid) < 45 then
                return doPlayerSendCancel(cid, "Sorry, you don't have the required level to evolve this pokemon (45).")
                end
if ((getPlayerItemCount(cid, item.itemid)>1)) then -- Se o player tiver mais q uma stone...
                local pokeball = getPlayerSlotItem(cid, 8)
				doItemSetAttribute(pokeball.uid, "poke", "Slowbro")
                doItemSetAttribute(pokeball.uid, "hp", "5500")
                doItemSetAttribute(pokeball.uid, "maxhealth", "5500")
                doItemSetAttribute(pokeball.uid, "description", "Contains a Slowbro.")
                doPlayerSendTextMessage(cid, 27, "Congratulations! Your "..getCreatureName(item2.uid).." evolved into a Slowbro!")
                doSendMagicEffect(topos, 18)
                doTransformItem(getPlayerSlotItem(cid, 7).uid, 2456)
                doSendMagicEffect(getThingPos(cid), 183)
                local oldpos = getThingPos(item2.uid)
                doRemoveCreature(item2.uid)
                doSummonMonster(cid, "Slowbro")
                local pk = getCreatureSummons(cid)[1]
                registerCreatureEvent(pk, "DiePoke")
                registerCreatureEvent(pk, "Exp")
                doTeleportThing(pk, oldpos, false)
                doCreatureSetLookDir(pk, 2)
                setCreatureMaxHealth(pk, getCreatureMaxHealth(pk) + (pokes[getCreatureName(pk)].cons * getPlayerLevel(cid)))
                doCreatureAddHealth(pk, getCreatureMaxHealth(pk))
                setPlayerStorageValue(cid, 2, 0)
                doPlayerRemoveItem(cid, item.itemid, 2)  
else
return doPlayerSendCancel(cid, "Sorry, you need at least 2 water stones to evolve this pokemon.")
end     
        elseif item.itemid == 12156 then
                if getPlayerLevel(cid) < 100 then
                return doPlayerSendCancel(cid, "Sorry, you don't have the required level to evolve this pokemon (100).")
                end
if ((getPlayerItemCount(cid, item.itemid)>1)) then -- Se o player tiver mais q uma stone...
                local pokeball = getPlayerSlotItem(cid, 8)
				doItemSetAttribute(pokeball.uid, "poke", "Slowking")
                doItemSetAttribute(pokeball.uid, "hp", "5500")
                doItemSetAttribute(pokeball.uid, "maxhealth", "5500")
                doItemSetAttribute(pokeball.uid, "description", "Contains a Slowking.")
                doPlayerSendTextMessage(cid, 27, "Congratulations! Your "..getCreatureName(item2.uid).." evolved into a Slowking!")
                doSendMagicEffect(topos, 18)
                doTransformItem(getPlayerSlotItem(cid, 7).uid, 11589)
                doSendMagicEffect(getThingPos(cid), 183)
                local oldpos = getThingPos(item2.uid)
                doRemoveCreature(item2.uid)
                doSummonMonster(cid, "Slowking")
                local pk = getCreatureSummons(cid)[1]
                registerCreatureEvent(pk, "DiePoke")
                registerCreatureEvent(pk, "Exp")
                doTeleportThing(pk, oldpos, false)
                doCreatureSetLookDir(pk, 2)
                setCreatureMaxHealth(pk, getCreatureMaxHealth(pk) + (pokes[getCreatureName(pk)].cons * getPlayerLevel(cid)))
                doCreatureAddHealth(pk, getCreatureMaxHealth(pk))
                setPlayerStorageValue(cid, 2, 0)
                doPlayerRemoveItem(cid, item.itemid, 2)
else
return doPlayerSendCancel(cid, "Sorry, you need at least 2 ancient stones to evolve this pokemon.")
end     
end
elseif getCreatureName(item2.uid) == "Poliwhirl" then
        if item.itemid == 2277 then
                if getPlayerLevel(cid) < 65 then
                return doPlayerSendCancel(cid, "Sorry, you don't have the required level to evolve this pokemon (65).")
                end
if ((getPlayerItemCount(cid, item.itemid)>1)) then -- Se o player tiver mais q uma stone...
                local pokeball = getPlayerSlotItem(cid, 8)
				doItemSetAttribute(pokeball.uid, "poke", "Politoed")
                doItemSetAttribute(pokeball.uid, "hp", "5500")
                doItemSetAttribute(pokeball.uid, "maxhealth", "5500")
                doItemSetAttribute(pokeball.uid, "description", "Contains a Politoed.")
                doPlayerSendTextMessage(cid, 27, "Congratulations! Your "..getCreatureName(item2.uid).." evolved into a Politoed!")
                doSendMagicEffect(topos, 18)
                doTransformItem(getPlayerSlotItem(cid, 7).uid, 11576)
                doSendMagicEffect(getThingPos(cid), 183)
                local oldpos = getThingPos(item2.uid)
                doRemoveCreature(item2.uid)
                doSummonMonster(cid, "Politoed")
                local pk = getCreatureSummons(cid)[1]
                registerCreatureEvent(pk, "DiePoke")
                registerCreatureEvent(pk, "Exp")
                doTeleportThing(pk, oldpos, false)
                doCreatureSetLookDir(pk, 2)
                setCreatureMaxHealth(pk, getCreatureMaxHealth(pk) + (pokes[getCreatureName(pk)].cons * getPlayerLevel(cid)))
                doCreatureAddHealth(pk, getCreatureMaxHealth(pk))
                setPlayerStorageValue(cid, 2, 0)
                doPlayerRemoveItem(cid, item.itemid, 2)     
else
return doPlayerSendCancel(cid, "Sorry, you need at least 2 water stones to evolve this pokemon.")
end         
        elseif item.itemid == 2281 then
                if getPlayerLevel(cid) < 65 then
                return doPlayerSendCancel(cid, "Sorry, you don't have the required level to evolve this pokemon (65).")
                end
if ((getPlayerItemCount(cid, item.itemid)>1)) then -- Se o player tiver mais q uma stone...
                local pokeball = getPlayerSlotItem(cid, 8)
				doItemSetAttribute(pokeball.uid, "poke", "Poliwrath")
                doItemSetAttribute(pokeball.uid, "hp", "5500")
                doItemSetAttribute(pokeball.uid, "maxhealth", "5500")
                doItemSetAttribute(pokeball.uid, "description", "Contains a Poliwrath.")
                doPlayerSendTextMessage(cid, 27, "Congratulations! Your "..getCreatureName(item2.uid).." evolved into a Poliwrath!")
                doSendMagicEffect(topos, 18)
                doTransformItem(getPlayerSlotItem(cid, 7).uid, 2438)
                doSendMagicEffect(getThingPos(cid), 183)
                local oldpos = getThingPos(item2.uid)
                doRemoveCreature(item2.uid)
                doSummonMonster(cid, "Poliwrath")
                local pk = getCreatureSummons(cid)[1]
                registerCreatureEvent(pk, "DiePoke")
                registerCreatureEvent(pk, "Exp")
                doTeleportThing(pk, oldpos, false)
                doCreatureSetLookDir(pk, 2)
                setCreatureMaxHealth(pk, getCreatureMaxHealth(pk) + (pokes[getCreatureName(pk)].cons * getPlayerLevel(cid)))
                doCreatureAddHealth(pk, getCreatureMaxHealth(pk))
                setPlayerStorageValue(cid, 2, 0)
                doPlayerRemoveItem(cid, item.itemid, 2)
else
return doPlayerSendCancel(cid, "Sorry, you need at least 2 punch stones to evolve this pokemon.")
end     
end
elseif getCreatureName(item2.uid) == "Gloom" then
        if item.itemid == 2278 then
                if getPlayerLevel(cid) < 50 then
                return doPlayerSendCancel(cid, "Sorry, you don't have the required level to evolve this pokemon (50).")
                end
if ((getPlayerItemCount(cid, item.itemid)>1)) then -- Se o player tiver mais q uma stone...
                local pokeball = getPlayerSlotItem(cid, 8)
				doItemSetAttribute(pokeball.uid, "poke", "Vileplume")
                doItemSetAttribute(pokeball.uid, "hp", "5500")
                doItemSetAttribute(pokeball.uid, "maxhealth", "5500")
                doItemSetAttribute(pokeball.uid, "description", "Contains a Vileplume.")
                doPlayerSendTextMessage(cid, 27, "Congratulations! Your "..getCreatureName(item2.uid).." evolved into a Vileplume!")
                doSendMagicEffect(topos, 18)
                doTransformItem(getPlayerSlotItem(cid, 7).uid, 2421)
                doSendMagicEffect(getThingPos(cid), 183)
                local oldpos = getThingPos(item2.uid)
                doRemoveCreature(item2.uid)
                doSummonMonster(cid, "Vileplume")
                local pk = getCreatureSummons(cid)[1]
                registerCreatureEvent(pk, "DiePoke")
                registerCreatureEvent(pk, "Exp")
                doTeleportThing(pk, oldpos, false)
                doCreatureSetLookDir(pk, 2)
                setCreatureMaxHealth(pk, getCreatureMaxHealth(pk) + (pokes[getCreatureName(pk)].cons * getPlayerLevel(cid)))
                doCreatureAddHealth(pk, getCreatureMaxHealth(pk))
                setPlayerStorageValue(cid, 2, 0)
                doPlayerRemoveItem(cid, item.itemid, 2)     
else
return doPlayerSendCancel(cid, "Sorry, you need at least 2 venom stones to evolve this pokemon.")
end        
        elseif item.itemid == 2276 then
                if getPlayerLevel(cid) < 50 then
                return doPlayerSendCancel(cid, "Sorry, you don't have the required level to evolve this pokemon (50).")
                end
if ((getPlayerItemCount(cid, item.itemid)>1)) then -- Se o player tiver mais q uma stone...
                local pokeball = getPlayerSlotItem(cid, 8)
				doItemSetAttribute(pokeball.uid, "poke", "Bellossom")
                doItemSetAttribute(pokeball.uid, "hp", "5500")
                doItemSetAttribute(pokeball.uid, "maxhealth", "5500")
                doItemSetAttribute(pokeball.uid, "description", "Contains a Bellossom.")
                doPlayerSendTextMessage(cid, 27, "Congratulations! Your "..getCreatureName(item2.uid).." evolved into a Bellossom!")
                doSendMagicEffect(topos, 18)
                doTransformItem(getPlayerSlotItem(cid, 7).uid, 11521)
                doSendMagicEffect(getThingPos(cid), 183)
                local oldpos = getThingPos(item2.uid)
                doRemoveCreature(item2.uid)
                doSummonMonster(cid, "Bellossom")
                local pk = getCreatureSummons(cid)[1]
                registerCreatureEvent(pk, "DiePoke")
                registerCreatureEvent(pk, "Exp")
                doTeleportThing(pk, oldpos, false)
                doCreatureSetLookDir(pk, 2)
                setCreatureMaxHealth(pk, getCreatureMaxHealth(pk) + (pokes[getCreatureName(pk)].cons * getPlayerLevel(cid)))
                doCreatureAddHealth(pk, getCreatureMaxHealth(pk))
                setPlayerStorageValue(cid, 2, 0)
                doPlayerRemoveItem(cid, item.itemid, 2)
else
return doPlayerSendCancel(cid, "Sorry, you need at least 2 leaf stones to evolve this pokemon.")
end    
end
elseif getCreatureName(item2.uid) == "Tyrogue" then
        if item.itemid == 12042 then
                if getPlayerLevel(cid) < 60 then
                return doPlayerSendCancel(cid, "Sorry, you don't have the required level to evolve this pokemon (60).")
                end
if ((getPlayerItemCount(cid, item.itemid)>4)) then -- Se o player tiver mais q uma stone...
                local pokeball = getPlayerSlotItem(cid, 8)
				doItemSetAttribute(pokeball.uid, "poke", "Hitmonchan")
                doItemSetAttribute(pokeball.uid, "hp", "5500")
                doItemSetAttribute(pokeball.uid, "maxhealth", "5500")
                doItemSetAttribute(pokeball.uid, "description", "Contains a Hitmonchan.")
                doPlayerSendTextMessage(cid, 27, "Congratulations! Your "..getCreatureName(item2.uid).." evolved into a Hitmonchan!")
                doSendMagicEffect(topos, 18)
                doTransformItem(getPlayerSlotItem(cid, 7).uid, 2483)
                doSendMagicEffect(getThingPos(cid), 183)
                local oldpos = getThingPos(item2.uid)
                doRemoveCreature(item2.uid)
                doSummonMonster(cid, "Hitmonchan")
                local pk = getCreatureSummons(cid)[1]
                registerCreatureEvent(pk, "DiePoke")
                registerCreatureEvent(pk, "Exp")
                doTeleportThing(pk, oldpos, false)
                doCreatureSetLookDir(pk, 2)
                setCreatureMaxHealth(pk, getCreatureMaxHealth(pk) + (pokes[getCreatureName(pk)].cons * getPlayerLevel(cid)))
                doCreatureAddHealth(pk, getCreatureMaxHealth(pk))
                setPlayerStorageValue(cid, 2, 0)
                doPlayerRemoveItem(cid, item.itemid, 5) 
else
return doPlayerSendCancel(cid, "Sorry, you need at least 5 Hitmonchan manchines to evolve this pokemon.")
end         
        elseif item.itemid == 12041 then
                if getPlayerLevel(cid) < 60 then
                return doPlayerSendCancel(cid, "Sorry, you don't have the required level to evolve this pokemon (60).")
                end
if ((getPlayerItemCount(cid, item.itemid)>4)) then -- Se o player tiver mais q uma stone...
                local pokeball = getPlayerSlotItem(cid, 8)
				doItemSetAttribute(pokeball.uid, "poke", "Hitmonlee")
                doItemSetAttribute(pokeball.uid, "hp", "5500")
                doItemSetAttribute(pokeball.uid, "maxhealth", "5500")
                doItemSetAttribute(pokeball.uid, "description", "Contains a Hitmonlee.")
                doPlayerSendTextMessage(cid, 27, "Congratulations! Your "..getCreatureName(item2.uid).." evolved into a Hitmonlee!")
                doSendMagicEffect(topos, 18)
                doTransformItem(getPlayerSlotItem(cid, 7).uid, 2482)
                doSendMagicEffect(getThingPos(cid), 183)
                local oldpos = getThingPos(item2.uid)
                doRemoveCreature(item2.uid)
                doSummonMonster(cid, "Hitmonlee")
                local pk = getCreatureSummons(cid)[1]
                registerCreatureEvent(pk, "DiePoke")
                registerCreatureEvent(pk, "Exp")
                doTeleportThing(pk, oldpos, false)
                doCreatureSetLookDir(pk, 2)
                setCreatureMaxHealth(pk, getCreatureMaxHealth(pk) + (pokes[getCreatureName(pk)].cons * getPlayerLevel(cid)))
                doCreatureAddHealth(pk, getCreatureMaxHealth(pk))
                setPlayerStorageValue(cid, 2, 0)
                doPlayerRemoveItem(cid, item.itemid, count)
else
return doPlayerSendCancel(cid, "Sorry, you need at least 5 Hitmonlee manchines to evolve this pokemon.")
end  
        elseif item.itemid == 2151 then
                if getPlayerLevel(cid) < 60 then
                return doPlayerSendCancel(cid, "Sorry, you don't have the required level to evolve this pokemon (60).")
                end
if ((getPlayerItemCount(cid, item.itemid)>4)) then -- Se o player tiver mais q uma stone...
                local pokeball = getPlayerSlotItem(cid, 8)
				doItemSetAttribute(pokeball.uid, "poke", "Hitmontop")
                doItemSetAttribute(pokeball.uid, "hp", "5500")
                doItemSetAttribute(pokeball.uid, "maxhealth", "5500")
                doItemSetAttribute(pokeball.uid, "description", "Contains a Hitmontop.")
                doPlayerSendTextMessage(cid, 27, "Congratulations! Your "..getCreatureName(item2.uid).." evolved into a Hitmontop!")
                doSendMagicEffect(topos, 18)
                doTransformItem(getPlayerSlotItem(cid, 7).uid, 11546)
                doSendMagicEffect(getThingPos(cid), 183)
                local oldpos = getThingPos(item2.uid)
                doRemoveCreature(item2.uid)
                doSummonMonster(cid, "Hitmontop")
                local pk = getCreatureSummons(cid)[1]
                registerCreatureEvent(pk, "DiePoke")
                registerCreatureEvent(pk, "Exp")
                doTeleportThing(pk, oldpos, false)
                doCreatureSetLookDir(pk, 2)
                setCreatureMaxHealth(pk, getCreatureMaxHealth(pk) + (pokes[getCreatureName(pk)].cons * getPlayerLevel(cid)))
                doCreatureAddHealth(pk, getCreatureMaxHealth(pk))
                setPlayerStorageValue(cid, 2, 0)
                doPlayerRemoveItem(cid, item.itemid, 5)
else
return doPlayerSendCancel(cid, "Sorry, you need at least 5 Hitmontop manchines to evolve this pokemon.")
end  
end
elseif getCreatureName(item2.uid) == "Smeargle Virgem" then
        if item.itemid == 12143 then
                if getPlayerLevel(cid) < 40 then
                return doPlayerSendCancel(cid, "Sorry, you don't have the required level to evolve this pokemon (40).")
                end
                local pokeball = getPlayerSlotItem(cid, 8)
                doItemSetAttribute(pokeball.uid, "poke", "Smeargle Tm 1")
                doItemSetAttribute(pokeball.uid, "hp", "5500")
                doItemSetAttribute(pokeball.uid, "maxhealth", "5500")
                doItemSetAttribute(pokeball.uid, "description", "Contains a Smeargle Tm 1.")
                doPlayerSendTextMessage(cid, 27, "Congratulations! Your "..getCreatureName(item2.uid).." evolved into a Smeargle Tm 1!")
                doSendMagicEffect(topos, 18)
                doTransformItem(getPlayerSlotItem(cid, 7).uid, 11591)
                doSendMagicEffect(getThingPos(cid), 183)
                local oldpos = getThingPos(item2.uid)
                doRemoveCreature(item2.uid)
                doSummonMonster(cid, "Smeargle Tm 1")
                local pk = getCreatureSummons(cid)[1]
                registerCreatureEvent(pk, "DiePoke")
                registerCreatureEvent(pk, "Exp")
                doTeleportThing(pk, oldpos, false)
                doCreatureSetLookDir(pk, 2)
                setCreatureMaxHealth(pk, getCreatureMaxHealth(pk) + (pokes[getCreatureName(pk)].cons * getPlayerLevel(cid)))
                doCreatureAddHealth(pk, getCreatureMaxHealth(pk))
                setPlayerStorageValue(cid, 2, 0)
                doPlayerRemoveItem(cid, item.itemid, 1)         
        elseif item.itemid == 12144 then
                if getPlayerLevel(cid) < 40 then
                return doPlayerSendCancel(cid, "Sorry, you don't have the required level to evolve this pokemon (40).")
                end
                local pokeball = getPlayerSlotItem(cid, 8)
                doItemSetAttribute(pokeball.uid, "poke", "Smeargle Tm 2")
                doItemSetAttribute(pokeball.uid, "hp", "5500")
                doItemSetAttribute(pokeball.uid, "maxhealth", "5500")
                doItemSetAttribute(pokeball.uid, "description", "Contains a Smeargle Tm 2.")
                doPlayerSendTextMessage(cid, 27, "Congratulations! Your "..getCreatureName(item2.uid).." evolved into a Smeargle Tm 2!")
                doSendMagicEffect(topos, 18)
                doTransformItem(getPlayerSlotItem(cid, 7).uid, 11591)
                doSendMagicEffect(getThingPos(cid), 183)
                local oldpos = getThingPos(item2.uid)
                doRemoveCreature(item2.uid)
                doSummonMonster(cid, "Smeargle Tm 2")
                local pk = getCreatureSummons(cid)[1]
                registerCreatureEvent(pk, "DiePoke")
                registerCreatureEvent(pk, "Exp")
                doTeleportThing(pk, oldpos, false)
                doCreatureSetLookDir(pk, 2)
                setCreatureMaxHealth(pk, getCreatureMaxHealth(pk) + (pokes[getCreatureName(pk)].cons * getPlayerLevel(cid)))
                doCreatureAddHealth(pk, getCreatureMaxHealth(pk))
                setPlayerStorageValue(cid, 2, 0)
                doPlayerRemoveItem(cid, item.itemid, 1)
        elseif item.itemid == 12145 then
                if getPlayerLevel(cid) < 40 then
                return doPlayerSendCancel(cid, "Sorry, you don't have the required level to evolve this pokemon (40).")
                end
                local pokeball = getPlayerSlotItem(cid, 8)
                doItemSetAttribute(pokeball.uid, "poke", "Smeargle Tm 3")
                doItemSetAttribute(pokeball.uid, "hp", "5500")
                doItemSetAttribute(pokeball.uid, "maxhealth", "5500")
                doItemSetAttribute(pokeball.uid, "description", "Contains a Smeargle Tm 3.")
                doPlayerSendTextMessage(cid, 27, "Congratulations! Your "..getCreatureName(item2.uid).." evolved into a Smeargle Tm 3!")
                doSendMagicEffect(topos, 18)
                doTransformItem(getPlayerSlotItem(cid, 7).uid, 11591)
                doSendMagicEffect(getThingPos(cid), 183)
                local oldpos = getThingPos(item2.uid)
                doRemoveCreature(item2.uid)
                doSummonMonster(cid, "Smeargle Tm 3")
                local pk = getCreatureSummons(cid)[1]
                registerCreatureEvent(pk, "DiePoke")
                registerCreatureEvent(pk, "Exp")
                doTeleportThing(pk, oldpos, false)
                doCreatureSetLookDir(pk, 2)
                setCreatureMaxHealth(pk, getCreatureMaxHealth(pk) + (pokes[getCreatureName(pk)].cons * getPlayerLevel(cid)))
                doCreatureAddHealth(pk, getCreatureMaxHealth(pk))
                setPlayerStorageValue(cid, 2, 0)
                doPlayerRemoveItem(cid, item.itemid, 1)
        elseif item.itemid == 12146 then
                if getPlayerLevel(cid) < 40 then
                return doPlayerSendCancel(cid, "Sorry, you don't have the required level to evolve this pokemon (40).")
                end
                local pokeball = getPlayerSlotItem(cid, 8)
                doItemSetAttribute(pokeball.uid, "poke", "Smeargle Tm 4")
                doItemSetAttribute(pokeball.uid, "hp", "5500")
                doItemSetAttribute(pokeball.uid, "maxhealth", "5500")
                doItemSetAttribute(pokeball.uid, "description", "Contains a Smeargle Tm 4.")
                doPlayerSendTextMessage(cid, 27, "Congratulations! Your "..getCreatureName(item2.uid).." evolved into a Smeargle Tm 4!")
                doSendMagicEffect(topos, 18)
                doTransformItem(getPlayerSlotItem(cid, 7).uid, 11591)
                doSendMagicEffect(getThingPos(cid), 183)
                local oldpos = getThingPos(item2.uid)
                doRemoveCreature(item2.uid)
                doSummonMonster(cid, "Smeargle Tm 4")
                local pk = getCreatureSummons(cid)[1]
                registerCreatureEvent(pk, "DiePoke")
                registerCreatureEvent(pk, "Exp")
                doTeleportThing(pk, oldpos, false)
                doCreatureSetLookDir(pk, 2)
                setCreatureMaxHealth(pk, getCreatureMaxHealth(pk) + (pokes[getCreatureName(pk)].cons * getPlayerLevel(cid)))
                doCreatureAddHealth(pk, getCreatureMaxHealth(pk))
                setPlayerStorageValue(cid, 2, 0)
                doPlayerRemoveItem(cid, item.itemid, 1)
        elseif item.itemid == 12147 then
                if getPlayerLevel(cid) < 40 then
                return doPlayerSendCancel(cid, "Sorry, you don't have the required level to evolve this pokemon (40).")
                end
                local pokeball = getPlayerSlotItem(cid, 8)
                doItemSetAttribute(pokeball.uid, "poke", "Smeargle Tm 5")
                doItemSetAttribute(pokeball.uid, "hp", "5500")
                doItemSetAttribute(pokeball.uid, "maxhealth", "5500")
                doItemSetAttribute(pokeball.uid, "description", "Contains a Smeargle Tm 5.")
                doPlayerSendTextMessage(cid, 27, "Congratulations! Your "..getCreatureName(item2.uid).." evolved into a Smeargle Tm 5!")
                doSendMagicEffect(topos, 18)
                doTransformItem(getPlayerSlotItem(cid, 7).uid, 11591)
                doSendMagicEffect(getThingPos(cid), 183)
                local oldpos = getThingPos(item2.uid)
                doRemoveCreature(item2.uid)
                doSummonMonster(cid, "Smeargle Tm 5")
                local pk = getCreatureSummons(cid)[1]
                registerCreatureEvent(pk, "DiePoke")
                registerCreatureEvent(pk, "Exp")
                doTeleportThing(pk, oldpos, false)
                doCreatureSetLookDir(pk, 2)
                setCreatureMaxHealth(pk, getCreatureMaxHealth(pk) + (pokes[getCreatureName(pk)].cons * getPlayerLevel(cid)))
                doCreatureAddHealth(pk, getCreatureMaxHealth(pk))
                setPlayerStorageValue(cid, 2, 0)
                doPlayerRemoveItem(cid, item.itemid, 1)
        elseif item.itemid == 12157 then
                if getPlayerLevel(cid) < 40 then
                return doPlayerSendCancel(cid, "Sorry, you don't have the required level to evolve this pokemon (40).")
                end
                local pokeball = getPlayerSlotItem(cid, 8)
                doItemSetAttribute(pokeball.uid, "poke", "Smeargle Tm 6")
                doItemSetAttribute(pokeball.uid, "hp", "5500")
                doItemSetAttribute(pokeball.uid, "maxhealth", "5500")
                doItemSetAttribute(pokeball.uid, "description", "Contains a Smeargle Tm 6.")
                doPlayerSendTextMessage(cid, 27, "Congratulations! Your "..getCreatureName(item2.uid).." evolved into a Smeargle Tm 6!")
                doSendMagicEffect(topos, 18)
                doTransformItem(getPlayerSlotItem(cid, 7).uid, 11591)
                doSendMagicEffect(getThingPos(cid), 183)
                local oldpos = getThingPos(item2.uid)
                doRemoveCreature(item2.uid)
                doSummonMonster(cid, "Smeargle Tm 6")
                local pk = getCreatureSummons(cid)[1]
                registerCreatureEvent(pk, "DiePoke")
                registerCreatureEvent(pk, "Exp")
                doTeleportThing(pk, oldpos, false)
                doCreatureSetLookDir(pk, 2)
                setCreatureMaxHealth(pk, getCreatureMaxHealth(pk) + (pokes[getCreatureName(pk)].cons * getPlayerLevel(cid)))
                doCreatureAddHealth(pk, getCreatureMaxHealth(pk))
                setPlayerStorageValue(cid, 2, 0)
                doPlayerRemoveItem(cid, item.itemid, 1)
        elseif item.itemid == 12158 then
                if getPlayerLevel(cid) < 40 then
                return doPlayerSendCancel(cid, "Sorry, you don't have the required level to evolve this pokemon (40).")
                end
                local pokeball = getPlayerSlotItem(cid, 8)
                doItemSetAttribute(pokeball.uid, "poke", "Smeargle Tm 7")
                doItemSetAttribute(pokeball.uid, "hp", "5500")
                doItemSetAttribute(pokeball.uid, "maxhealth", "5500")
                doItemSetAttribute(pokeball.uid, "description", "Contains a Smeargle Tm 7.")
                doPlayerSendTextMessage(cid, 27, "Congratulations! Your "..getCreatureName(item2.uid).." evolved into a Smeargle Tm 7!")
                doSendMagicEffect(topos, 18)
                doTransformItem(getPlayerSlotItem(cid, 7).uid, 11591)
                doSendMagicEffect(getThingPos(cid), 183)
                local oldpos = getThingPos(item2.uid)
                doRemoveCreature(item2.uid)
                doSummonMonster(cid, "Smeargle Tm 7")
                local pk = getCreatureSummons(cid)[1]
                registerCreatureEvent(pk, "DiePoke")
                registerCreatureEvent(pk, "Exp")
                doTeleportThing(pk, oldpos, false)
                doCreatureSetLookDir(pk, 2)
                setCreatureMaxHealth(pk, getCreatureMaxHealth(pk) + (pokes[getCreatureName(pk)].cons * getPlayerLevel(cid)))
                doCreatureAddHealth(pk, getCreatureMaxHealth(pk))
                setPlayerStorageValue(cid, 2, 0)
                doPlayerRemoveItem(cid, item.itemid, 1)
        end
local i = getCreatureName(getCreatureSummons(cid)[1])
if not string.find(getPlayerStorageValue(cid, 54842), ""..i..",") then
doPlayerAddSoul(cid, 1)
setPlayerStorageValue(cid, 54842, getPlayerStorageValue(cid, 54842)..""..i..", ")
end
        return true
        end

local count = pokevo[getCreatureName(item2.uid)].count
local stnid = pokevo[getCreatureName(item2.uid)].stoneid
local stnid2 = pokevo[getCreatureName(item2.uid)].stoneid2
local evo = pokevo[getCreatureName(item2.uid)].evolution
local levell = pokevo[getCreatureName(item2.uid)].level
if stnid2 > 1 and getPlayerItemCount(cid, stnid2) < count then
return doPlayerSendCancel(cid, "You need at least one "..getItemNameById(stnid).." and one "..getItemNameById(stnid2).." to evolve this pokemon!")
end
if stnid2 > 1 and getPlayerItemCount(cid, stnid) < count then
return doPlayerSendCancel(cid, "You need at least one "..getItemNameById(stnid).." and one "..getItemNameById(stnid2).." to evolve this pokemon!")
end
if getPlayerItemCount(cid, stnid) < count then
return doPlayerSendCancel(cid, "You need at least "..count.." "..getItemNameById(stnid).."s to evolve this pokemon!")
end
if getPlayerLevel(cid) < pokevo[getCreatureName(item2.uid)].level then
return doPlayerSendCancel(cid, "Sorry, you don't have the required level to evolve this pokemon ("..levell..").")
end
local owner = getCreatureMaster(item2.uid)
local pokeball = getPlayerSlotItem(cid, 8)
local description = "Contains a "..evo.."."

local nas = {
["%%pokesame"] = pokevo[getCreatureName(item2.uid)].evolution
}
for i,x in pairs(nas) do
if description:find(i) then
description = description:gsub(i, x)
end
end
local slo = pokevo[getCreatureName(item2.uid)].maxh
local sle = pokevo[getCreatureName(item2.uid)].evolution

doItemSetAttribute(pokeball.uid, "poke", evo)
doItemSetAttribute(pokeball.uid, "hp", pokevo[getCreatureName(item2.uid)].maxh)
doItemSetAttribute(pokeball.uid, "maxhealth", pokevo[getCreatureName(item2.uid)].maxh)
doItemSetAttribute(pokeball.uid, "description", description)
doPlayerSendTextMessage(cid, 27, "Congratulations! Your "..getCreatureName(item2.uid).." evolved into a "..evo.."!")
doSendMagicEffect(topos, 18)
doTransformItem(getPlayerSlotItem(cid, 7).uid, fotos[sle])
doSendMagicEffect(getThingPos(cid), 183)
local oldpos = getThingPos(item2.uid)
doRemoveCreature(item2.uid)
doSummonMonster(cid, sle)
local pk = getCreatureSummons(cid)[1]
registerCreatureEvent(pk, "DiePoke")
registerCreatureEvent(pk, "Exp")
doTeleportThing(pk, oldpos, false)
doCreatureSetLookDir(pk, 2)
setCreatureMaxHealth(pk, slo)
doCreatureAddHealth(pk, slo)
setCreatureMaxHealth(pk, getCreatureMaxHealth(pk) + (pokes[getCreatureName(pk)].cons * getPlayerLevel(cid)))
doCreatureAddHealth(pk, getCreatureMaxHealth(pk))
doPlayerRemoveItem(cid, stnid, count)
doPlayerRemoveItem(cid, stnid2, count)
setPlayerStorageValue(cid, 2, 0)
local i = getCreatureName(getCreatureSummons(cid)[1])
if not string.find(getPlayerStorageValue(cid, 54842), ""..i..",") then
doPlayerAddSoul(cid, 1)
setPlayerStorageValue(cid, 54842, getPlayerStorageValue(cid, 54842)..""..i..", ")
end
break
else
return doPlayerSendCancel(cid, "Sorry, this is not the required stone to evolve this pokemon!")
end
end
end
end
return TRUE
end