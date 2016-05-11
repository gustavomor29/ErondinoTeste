--O projeto kpdo é um projeto open source ,uma instituiçao sem fins lucrativo,esse codigo pode ser utilizado e modificado a gosto sendo distribuido a cada modificação de prefencia para colaborar para a evolução do projeto.
--site do jogo: www.exaioros.com
--forum: forum.exaioros.com/forum
--a area em que se encontra para debater o desenvolvimento do jogo e do projeto é:
--http://forum.exaioros.com/f20-open-sourcedesenvolvedores-anjo
--The kpdo project is an open source and free project, a non-profit institution, this code can be used and modified to taste being distributed to each Preference modification to contribute to the evolution of the project.
--site of the game is www.exaioros.com
--the forum is forum.exaioros.com/forum
--the area in which it is to discuss the development of the game and the project is
--Forum Open Source: http://forum.exaioros.com/f20-open-sourcedesenvolvedores-anjo
--Contact mail:exaioros@gmail.com
--MY name:Renan
--Staff Exaioros kpdo
--[kpdo]Cater (forum)
---=-=-=-==-=-www.exaioros.com-=-=-=-==-=-=-=
--=-=-=-=-=-=-=-=forum.exaioros.com-=-=-=-=-=-=


	local cdtec = {
["cold"] = {
		["m1"] = { cd= 31000},
		["m2"]= { cd= 31001},
		["m3"]= { cd= 31002},
		["m4"]= { cd= 31003},
		["m5"]={ cd=  31004},
                ["m6"]={ cd=  31005},
		["m7"]={ cd=  31006},
		["m8"]={  cd= 31007},
		["m9"]= {  cd= 31008},
		["m10"]={ cd=  31009}, 
                ["m11"]={ cd=  31010},
		["m12"]={ cd=  31011},
}
	}

	local cdtec2 = {
["cold"] = {
		["m1"] = { cd= 30015},
		["m2"]= { cd= 30016},
		["m3"]= { cd= 30017},
		["m4"]= { cd= 30018},
		["m5"]={ cd=  30019},
                                ["m6"]={ cd=  30020},
		["m7"]={ cd=  30021},
		["m8"]={  cd= 30022},
		["m9"]= {  cd= 30023},
		["m10"]={ cd=  30024}, 
                                ["m11"]={ cd=  30025},
		["m12"]={ cd=  30026},
}
	}





function isPlayerInParty(uid1, uid2)
if getTileInfo(getThingPos(uid1)).pvp and getTileInfo(getThingPos(uid2)).pvp then 
return true
end

        --if getPlayerParty(uid1) then
               -- if getPlayerParty(uid1) == getPlayerParty(uid2) then
                       -- return true
               -- end
        --end

        return false
end



		
		




local config = {
                jumps = 10,
                walktime = 500
}

combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TARGETCASTERORTOPMOST, true)
setCombatParam(combat, COMBAT_PARAM_TYPE, PSYCHICDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 134)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -1, -10, -1, -15, 5, 5, 1.8, 3, -20, -40)

    function movesx(cid, pos, n,dmg,dmg2)


        local n = n or 0

        if (n < config.jumps) then
            if (isCreature(cid)) then
local dmg = getPlayerStorageValue(cid, 985)
local dmg2 = getPlayerStorageValue(cid, 986)
                local pos = pos or getCreaturePosition(cid)
                local target = getCreatureTarget(cid)

                local dir = (target ~= 0) and getDirectionTo(pos, getCreaturePosition(target)) or getCreatureLookDirection(cid)
                local tpos = (target ~= 0) and getCreaturePosition(target)

                local newPos

                if ((target ~= 0) and ((pos.x == tpos.x) and (pos.y == tpos.y))) then
                    newPos = tpos
                else
                    newPos = getPosByDir(pos, dir)
                end

                --if ((getTopCreature(newPos).uid == 0) and doTileQueryAdd(cid, newPos) ~= 1) then return false end
doAreaCombatHealth(cid, PSYCHICDAMAGE, newPos, 0, -dmg, -dmg2, 182)
                --doCombat(cid, combat, {
                   -- pos = newPos,
                  --  type = 2
               -- })

                addEvent(movesx, config.walktime, cid, newPos, n + 1)
            end
        end
    end

local config = {
                jumps = 10,
                walktime = 500
}

combatx = createCombatObject()
setCombatParam(combatx, COMBAT_PARAM_TARGETCASTERORTOPMOST, true)
setCombatParam(combatx, COMBAT_PARAM_TYPE, GHOSTDAMAGE)
setCombatParam(combatx, COMBAT_PARAM_EFFECT, 38)
setCombatFormula(combatx, COMBAT_FORMULA_LEVELMAGIC, -1, -10, -1, -15, 5, 5, 1.8, 3, -20, -40)

    function ghostmew(cid, pos, n,dmg,dmg2)

        local n = n or 0

        if (n < config.jumps) then
            if (isCreature(cid)) then
local dmg = getPlayerStorageValue(cid, 985)
local dmg2 = getPlayerStorageValue(cid, 986)
                local pos = pos or getCreaturePosition(cid)
                local target = getCreatureTarget(cid)

                local dir = (target ~= 0) and getDirectionTo(pos, getCreaturePosition(target)) or getCreatureLookDirection(cid)
                local tpos = (target ~= 0) and getCreaturePosition(target)

                local newPos

                if ((target ~= 0) and ((pos.x == tpos.x) and (pos.y == tpos.y))) then
                    newPos = tpos
                else
                    newPos = getPosByDir(pos, dir)
                end

                --if ((getTopCreature(newPos).uid == 0) and doTileQueryAdd(cid, newPos) ~= 1) then return false end
doSendMagicEffect(newPos, 187)
                doAreaCombatHealth(cid, GHOSTDAMAGE, newPos, 0, -dmg, -dmg2, 186)

                addEvent(ghostmew, config.walktime, cid, newPos, n + 1)
            end
        end
    end

    

    
	
	
		
	

function Poison(inpoison, ef, rounds)
        if rounds == 0 then return false end
        if not inpoison then return false end
if isMonster(inpoison) then
        local p = getCreaturePosition(inpoison)
        doAreaCombatHealth(pet, POISONDAMAGE, p, 0, -10, -10, ef)
        return addEvent(Poison, 800, inpoison, ef, rounds-1)
end
end

local naotemcd = {''}
local pokeis = {'Bulbasaur','Ivysaur','Venusaur','Charmander','Charmeleon','Charizard','Squirtle','Wartortle','Blastoise','Caterpie',
'Metapod','Butterfree','Weedle','Kakuna','Beedrill','Pidgey','Pidgeotto','Pidgeot','Rattata','Raticate','Spearow','Fearow','Ekans','Arbok',
'Pikachu','Raichu','Sandshrew','Sandslash','Nidoran Female','Nidorina','Nidoqueen','Nidoran Male','Nidorino','Nidoking','Clefairy',
'Clefable','Vulpix','Ninetales','Jigglypuff','Wigglytuff','Zubat','Golbat','Oddish','Gloom','Vileplume','Paras','Parasect','Venonat',
'Venomoth','Diglett','Dugtrio','Meowth','Persian','Psyduck','Golduck','Mankey','Primeape','Growlithe','Arcanine','Poliwag','Poliwhirl',
'Poliwrath','Abra','Kadabra','Alakazam','Machop','Machoke','Machamp','Bellsprout','Weepinbell','Victreebel','Tentacool','Tentacruel',
'Geodude','Graveler','Golem','Ponyta','Rapidash','Slowpoke','Slowbro','Magnemite','Magneton','Farfetchd','Doduo','Dodrio','Seel',
'Dewgong','Grimer','Muk','Shellder','Cloyster','Gastly','Haunter','Gengar','Onix','Drowzee','Hypno','Krabby','Kingler','Voltorb',
'Electrode','Exeggcute','Exeggutor','Cubone','Marowak','Hitmonlee','Hitmonchan','Lickitung','Koffing','Weezing','Rhyhorn','Rhydon',
'Chansey','Tangela','Kangaskhan','Horsea','Seadra','Goldeen','Seaking','Staryu','Starmie','Mr. Mime','Scyther','Jynx','Electabuzz',
'Magmar','Pinsir','Tauros','Magikarp','Gyarados','Lapras','Ditto','Eevee','Vaporeon','Jolteon','Flareon','Porygon','Omanyte','Omastar',
'Kabuto','Kabutops','Aerodactyl','Snorlax','Articuno','Zapdos','Moltres','Dratini','Dragonair','Dragonite','Mewtwo','Mew','Elder Charizard','Crystal Onix'}



function onSay(cid, words, param)

	
local sumomdonego = getCreatureSummons(cid)[1]
if not  sumomdonego then
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You need a pokemos to  moves.")
	return 0
end

 local  pokemon = cp[getCreatureName(sumomdonego)][words]
		if isInArray({"Ditto","Smeargle"}, getCreatureName(sumomdonego)) then
		if isInArray({"28"}, getCreatureOutfit(sumomdonego).lookType) then
	doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You need a transform to use moves.")
	return 0
	end

if exhaustion.get(cid, 548798) then
dittocold = math.floor(((exhaustion.get(cid, 548798)) )) 
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "ths pokemon needs "..dittocold.." seconds to learn the moves")
return 0
end
local ditto = getPlayerSlotItem(cid, 8)
local ropax = getItemAttribute(ditto.uid, "nomepoke")
        


if words == "!cd" then
pokemon = cp[ropax][words]
if not pokemon then
if getPlayerStorageValue(sumomdonego, 1236) <= 0 then
   return true
end
	end
pokemon.pokenome = "Ditto"
if ropax == "Smeargle" then
pokemon.pokenome = "Smeargle"
end



else
pokemon = cp[ropax][words]
if not pokemon  then
if getPlayerStorageValue(sumomdonego, 1236) <= 0 then
                 return true
end

	end

end



else
      
if not pokemon then
if getPlayerStorageValue(sumomdonego, 1236) <= 0 then
                   return true
end

	end
end

 local tmitem = getPlayerSlotItem(cid, 8)
local leveldopoke = 0

if pokemon then
leveldopoke = pokemon.minLv
end

if words ~= "!cd" then

if isTM(tmitem.uid) and  getPlayerStorageValue(cid, 888) <= 0 then



local idtm = words:gsub("m", "T")

local tmspell = ""

if getTM(tmitem.uid,idtm) then

tmspell = TM[getTM(tmitem.uid,idtm)]
pokemon = tmspell
leveldopoke =  getPlayerStorageValue(sumomdonego, 1236)
elseif not pokemon then
return true

end

end
end

if words == "!cd" then
if getPlayerStorageValue(cid, 888) >= 1 then
return true

end
local numerodamsg = 25

if pokemon.nmoves == 1 then
local tmspell = ""
if isTM(tmitem.uid) then
if getTM(tmitem.uid,"T1") then
tmspell = TM[getTM(tmitem.uid,"T1")]
pokemon.spellm1 = tmspell.spell
end
end
if exhaustion.get(cid, 31000) then
seconds1 = math.floor(((exhaustion.get(cid, 31000)) + 1))  
frasename = "Pokemon: "..pokemon.pokenome.."" 
frasecd = ""..pokemon.spellm1.." - m1: wait "..seconds1.." seconds."


else
frasename = "Pokemon: "..pokemon.pokenome.." "
frasecd = ""..pokemon.spellm1.." - m1: ready."
end
doPlayerSendTextMessage(cid, numerodamsg, ""..frasename.."\n"..frasecd.."")
end
if pokemon.nmoves == 2 then
if isTM(tmitem.uid) then
if getTM(tmitem.uid,"T1") then
tmspell = TM[getTM(tmitem.uid,"T1")]
pokemon.spellm1 = tmspell.spell
end
if getTM(tmitem.uid,"T2") then
tmspell = TM[getTM(tmitem.uid,"T2")]
pokemon.spellm2 = tmspell.spell
end
end
if exhaustion.get(cid, 31000) then
seconds1 = math.floor(((exhaustion.get(cid, 31000)) + 1))  
frasename = "Pokemon: "..pokemon.pokenome.."" 
frasecd = ""..pokemon.spellm1.." - m1: wait "..seconds1.." seconds."


else
frasename = "Pokemon: "..pokemon.pokenome.." "
frasecd = ""..pokemon.spellm1.." - m1: ready."
end
if exhaustion.get(cid, 31001) then
seconds2 = math.floor(((exhaustion.get(cid, 31001)) + 1))  
frasecd2 = ""..pokemon.spellm2.." - m2: wait "..seconds2.." seconds."


else
frasecd2 = ""..pokemon.spellm2.." - m2: ready."
end
doPlayerSendTextMessage(cid, numerodamsg, ""..frasename.."\n"..frasecd.."\n"..frasecd2.."")
end
if pokemon.nmoves == 3 then
if isTM(tmitem.uid) then
if getTM(tmitem.uid,"T1") then
tmspell = TM[getTM(tmitem.uid,"T1")]
pokemon.spellm1 = tmspell.spell
end
if getTM(tmitem.uid,"T2") then
tmspell = TM[getTM(tmitem.uid,"T2")]
pokemon.spellm2 = tmspell.spell
end
if getTM(tmitem.uid,"T3") then
tmspell = TM[getTM(tmitem.uid,"T3")]
pokemon.spellm3 = tmspell.spell
end
end
if exhaustion.get(cid, 31000) then
seconds1 = math.floor(((exhaustion.get(cid, 31000)) + 1))  
frasename = "Pokemon: "..pokemon.pokenome.."" 
frasecd = ""..pokemon.spellm1.." - m1: wait "..seconds1.." seconds."


else
frasename = "Pokemon: "..pokemon.pokenome.." "
frasecd = ""..pokemon.spellm1.." - m1: ready."
end
if exhaustion.get(cid, 31001) then
seconds2 = math.floor(((exhaustion.get(cid, 31001)) + 1))  
frasecd2 = ""..pokemon.spellm2.." - m2: wait "..seconds2.." seconds."


else
frasecd2 = ""..pokemon.spellm2.." - m2: ready."
end
if exhaustion.get(cid, 31002) then
seconds3 = math.floor(((exhaustion.get(cid, 31002)) + 1))  
frasecd3 = ""..pokemon.spellm3.." - m3: wait "..seconds3.." seconds."


else
frasecd3 = ""..pokemon.spellm3.." - m3: ready."
end
doPlayerSendTextMessage(cid, numerodamsg, ""..frasename.."\n"..frasecd.."\n"..frasecd2.."\n"..frasecd3.."")
end
if pokemon.nmoves == 4 then
if isTM(tmitem.uid) then
if getTM(tmitem.uid,"T1") then
tmspell = TM[getTM(tmitem.uid,"T1")]
pokemon.spellm1 = tmspell.spell
end
if getTM(tmitem.uid,"T2") then
tmspell = TM[getTM(tmitem.uid,"T2")]
pokemon.spellm2 = tmspell.spell
end
if getTM(tmitem.uid,"T3") then
tmspell = TM[getTM(tmitem.uid,"T3")]
pokemon.spellm3 = tmspell.spell
end
if getTM(tmitem.uid,"T4") then
tmspell = TM[getTM(tmitem.uid,"T4")]
pokemon.spellm4 = tmspell.spell
end
end
if exhaustion.get(cid, 31000) then
seconds1 = math.floor(((exhaustion.get(cid, 31000)) + 1))  
frasename = "Pokemon: "..pokemon.pokenome.."" 
frasecd = ""..pokemon.spellm1.." - m1: wait "..seconds1.." seconds."


else
frasename = "Pokemon: "..pokemon.pokenome.." "
frasecd = ""..pokemon.spellm1.." - m1: ready."
end
if exhaustion.get(cid, 31001) then
seconds2 = math.floor(((exhaustion.get(cid, 31001)) + 1))  
frasecd2 = ""..pokemon.spellm2.." - m2: wait "..seconds2.." seconds."


else
frasecd2 = ""..pokemon.spellm2.." - m2: ready."
end
if exhaustion.get(cid, 31002) then
seconds3 = math.floor(((exhaustion.get(cid, 31002)) + 1))  
frasecd3 = ""..pokemon.spellm3.." - m3: wait "..seconds3.." seconds."


else
frasecd3 = ""..pokemon.spellm3.." - m3: ready."
end
if exhaustion.get(cid, 31003) then
seconds4 = math.floor(((exhaustion.get(cid, 31003)) + 1))  
frasecd4 = ""..pokemon.spellm4.." - m4: wait "..seconds4.." seconds."


else
frasecd4 = ""..pokemon.spellm4.." - m4: ready."
end
doPlayerSendTextMessage(cid, numerodamsg, ""..frasename.."\n"..frasecd.."\n"..frasecd2.."\n"..frasecd3.."\n"..frasecd4.."")
end
if pokemon.nmoves == 5 then
if isTM(tmitem.uid) then
if getTM(tmitem.uid,"T1") then
tmspell = TM[getTM(tmitem.uid,"T1")]
pokemon.spellm1 = tmspell.spell
end
if getTM(tmitem.uid,"T2") then
tmspell = TM[getTM(tmitem.uid,"T2")]
pokemon.spellm2 = tmspell.spell
end
if getTM(tmitem.uid,"T3") then
tmspell = TM[getTM(tmitem.uid,"T3")]
pokemon.spellm3 = tmspell.spell
end
if getTM(tmitem.uid,"T4") then
tmspell = TM[getTM(tmitem.uid,"T4")]
pokemon.spellm4 = tmspell.spell
end
if getTM(tmitem.uid,"T5") then
tmspell = TM[getTM(tmitem.uid,"T5")]
pokemon.spellm5 = tmspell.spell
end
end
if exhaustion.get(cid, 31000) then
seconds1 = math.floor(((exhaustion.get(cid, 31000)) + 1))  
frasename = "Pokemon: "..pokemon.pokenome.."" 
frasecd = ""..pokemon.spellm1.." - m1: wait "..seconds1.." seconds."


else
frasename = "Pokemon: "..pokemon.pokenome.." "
frasecd = ""..pokemon.spellm1.." - m1: ready."
end
if exhaustion.get(cid, 31001) then
seconds2 = math.floor(((exhaustion.get(cid, 31001)) + 1))  
frasecd2 = ""..pokemon.spellm2.." - m2: wait "..seconds2.." seconds."


else
frasecd2 = ""..pokemon.spellm2.." - m2: ready."
end
if exhaustion.get(cid, 31002) then
seconds3 = math.floor(((exhaustion.get(cid, 31002)) + 1))  
frasecd3 = ""..pokemon.spellm3.." - m3: wait "..seconds3.." seconds."


else
frasecd3 = ""..pokemon.spellm3.." - m3: ready."
end
if exhaustion.get(cid, 31003) then
seconds4 = math.floor(((exhaustion.get(cid, 31003)) + 1))  
frasecd4 = ""..pokemon.spellm4.." - m4: wait "..seconds4.." seconds."


else
frasecd4 = ""..pokemon.spellm4.." - m4: ready."
end
if exhaustion.get(cid, 31004) then
seconds5 = math.floor(((exhaustion.get(cid, 31004)) + 1))  
frasecd5 = ""..pokemon.spellm5.." - m5: wait "..seconds5.." seconds."


else
frasecd5 = ""..pokemon.spellm5.." - m5: ready."
end
doPlayerSendTextMessage(cid, numerodamsg, ""..frasename.."\n"..frasecd.."\n"..frasecd2.."\n"..frasecd3.."\n"..frasecd4.."\n"..frasecd5.."")
end
if pokemon.nmoves == 6 then
if isTM(tmitem.uid) then
if getTM(tmitem.uid,"T1") then
tmspell = TM[getTM(tmitem.uid,"T1")]
pokemon.spellm1 = tmspell.spell
end
if getTM(tmitem.uid,"T2") then
tmspell = TM[getTM(tmitem.uid,"T2")]
pokemon.spellm2 = tmspell.spell
end
if getTM(tmitem.uid,"T3") then
tmspell = TM[getTM(tmitem.uid,"T3")]
pokemon.spellm3 = tmspell.spell
end
if getTM(tmitem.uid,"T4") then
tmspell = TM[getTM(tmitem.uid,"T4")]
pokemon.spellm4 = tmspell.spell
end
if getTM(tmitem.uid,"T5") then
tmspell = TM[getTM(tmitem.uid,"T5")]
pokemon.spellm5 = tmspell.spell
end
if getTM(tmitem.uid,"T6") then
tmspell = TM[getTM(tmitem.uid,"T6")]
pokemon.spellm6 = tmspell.spell
end
end
if exhaustion.get(cid, 31000) then
seconds1 = math.floor(((exhaustion.get(cid, 31000)) + 1))  
frasename = "Pokemon: "..pokemon.pokenome.."" 
frasecd = ""..pokemon.spellm1.." - m1: wait "..seconds1.." seconds."


else
frasename = "Pokemon: "..pokemon.pokenome.." "
frasecd = ""..pokemon.spellm1.." - m1: ready."
end
if exhaustion.get(cid, 31001) then
seconds2 = math.floor(((exhaustion.get(cid, 31001)) + 1))  
frasecd2 = ""..pokemon.spellm2.." - m2: wait "..seconds2.." seconds."


else
frasecd2 = ""..pokemon.spellm2.." - m2: ready."
end
if exhaustion.get(cid, 31002) then
seconds3 = math.floor(((exhaustion.get(cid, 31002)) + 1))  
frasecd3 = ""..pokemon.spellm3.." - m3: wait "..seconds3.." seconds."


else
frasecd3 = ""..pokemon.spellm3.." - m3: ready."
end
if exhaustion.get(cid, 31003) then
seconds4 = math.floor(((exhaustion.get(cid, 31003)) + 1))  
frasecd4 = ""..pokemon.spellm4.." - m4: wait "..seconds4.." seconds."


else
frasecd4 = ""..pokemon.spellm4.." - m4: ready."
end
if exhaustion.get(cid, 31004) then
seconds5 = math.floor(((exhaustion.get(cid, 31004)) + 1))  
frasecd5 = ""..pokemon.spellm5.." - m5: wait "..seconds5.." seconds."


else
frasecd5 = ""..pokemon.spellm5.." - m5: ready."
end
if exhaustion.get(cid, 31005) then
seconds6 = math.floor(((exhaustion.get(cid, 31005)) + 1))  
frasecd6 = ""..pokemon.spellm6.." - m6: wait "..seconds6.." seconds."


else
frasecd6 = ""..pokemon.spellm6.." - m6: ready."
end
doPlayerSendTextMessage(cid, numerodamsg, ""..frasename.."\n"..frasecd.."\n"..frasecd2.."\n"..frasecd3.."\n"..frasecd4.."\n"..frasecd5.."\n"..frasecd6.."")
end
if pokemon.nmoves == 7 then
if isTM(tmitem.uid) then
if getTM(tmitem.uid,"T1") then
tmspell = TM[getTM(tmitem.uid,"T1")]
pokemon.spellm1 = tmspell.spell
end
if getTM(tmitem.uid,"T2") then
tmspell = TM[getTM(tmitem.uid,"T2")]
pokemon.spellm2 = tmspell.spell
end
if getTM(tmitem.uid,"T3") then
tmspell = TM[getTM(tmitem.uid,"T3")]
pokemon.spellm3 = tmspell.spell
end
if getTM(tmitem.uid,"T4") then
tmspell = TM[getTM(tmitem.uid,"T4")]
pokemon.spellm4 = tmspell.spell
end
if getTM(tmitem.uid,"T5") then
tmspell = TM[getTM(tmitem.uid,"T5")]
pokemon.spellm5 = tmspell.spell
end
if getTM(tmitem.uid,"T6") then
tmspell = TM[getTM(tmitem.uid,"T6")]
pokemon.spellm6 = tmspell.spell
end
if getTM(tmitem.uid,"T7") then
tmspell = TM[getTM(tmitem.uid,"T7")]
pokemon.spellm7 = tmspell.spell
end
end
if exhaustion.get(cid, 31000) then
seconds1 = math.floor(((exhaustion.get(cid, 31000)) + 1))  
frasename = "Pokemon: "..pokemon.pokenome.."" 
frasecd = ""..pokemon.spellm1.." - m1: wait "..seconds1.." seconds."


else
frasename = "Pokemon: "..pokemon.pokenome.." "
frasecd = ""..pokemon.spellm1.." - m1: ready."
end
if exhaustion.get(cid, 31001) then
seconds2 = math.floor(((exhaustion.get(cid, 31001)) + 1))  
frasecd2 = ""..pokemon.spellm2.." - m2: wait "..seconds2.." seconds."


else
frasecd2 = ""..pokemon.spellm2.." - m2: ready."
end
if exhaustion.get(cid, 31002) then
seconds3 = math.floor(((exhaustion.get(cid, 31002)) + 1))  
frasecd3 = ""..pokemon.spellm3.." - m3: wait "..seconds3.." seconds."


else
frasecd3 = ""..pokemon.spellm3.." - m3: ready."
end
if exhaustion.get(cid, 31003) then
seconds4 = math.floor(((exhaustion.get(cid, 31003)) + 1))  
frasecd4 = ""..pokemon.spellm4.." - m4: wait "..seconds4.." seconds."


else
frasecd4 = ""..pokemon.spellm4.." - m4: ready."
end
if exhaustion.get(cid, 31004) then
seconds5 = math.floor(((exhaustion.get(cid, 31004)) + 1))  
frasecd5 = ""..pokemon.spellm5.." - m5: wait "..seconds5.." seconds."


else
frasecd5 = ""..pokemon.spellm5.." - m5: ready."
end
if exhaustion.get(cid, 31005) then
seconds6 = math.floor(((exhaustion.get(cid, 31005)) + 1))  
frasecd6 = ""..pokemon.spellm6.." - m6: wait "..seconds6.." seconds."


else
frasecd6 = ""..pokemon.spellm6.." - m6: ready."
end
if exhaustion.get(cid, 31006) then
seconds7 = math.floor(((exhaustion.get(cid, 31006)) + 1))  
frasecd7 = ""..pokemon.spellm7.." - m7: wait "..seconds7.." seconds."


else
frasecd7 = ""..pokemon.spellm7.." - m7: ready."
end
doPlayerSendTextMessage(cid, numerodamsg, ""..frasename.."\n"..frasecd.."\n"..frasecd2.."\n"..frasecd3.."\n"..frasecd4.."\n"..frasecd5.."\n"..frasecd6.."\n"..frasecd7.."")
end
if pokemon.nmoves == 8 then
if isTM(tmitem.uid) then
if getTM(tmitem.uid,"T1") then
tmspell = TM[getTM(tmitem.uid,"T1")]
pokemon.spellm1 = tmspell.spell
end
if getTM(tmitem.uid,"T2") then
tmspell = TM[getTM(tmitem.uid,"T2")]
pokemon.spellm2 = tmspell.spell
end
if getTM(tmitem.uid,"T3") then
tmspell = TM[getTM(tmitem.uid,"T3")]
pokemon.spellm3 = tmspell.spell
end
if getTM(tmitem.uid,"T4") then
tmspell = TM[getTM(tmitem.uid,"T4")]
pokemon.spellm4 = tmspell.spell
end
if getTM(tmitem.uid,"T5") then
tmspell = TM[getTM(tmitem.uid,"T5")]
pokemon.spellm5 = tmspell.spell
end
if getTM(tmitem.uid,"T6") then
tmspell = TM[getTM(tmitem.uid,"T6")]
pokemon.spellm6 = tmspell.spell
end
if getTM(tmitem.uid,"T7") then
tmspell = TM[getTM(tmitem.uid,"T7")]
pokemon.spellm7 = tmspell.spell
end
if getTM(tmitem.uid,"T8") then
tmspell = TM[getTM(tmitem.uid,"T8")]
pokemon.spellm8 = tmspell.spell
end
end
if isTM(tmitem.uid) then
if getTM(tmitem.uid,"T1") then
tmspell = TM[getTM(tmitem.uid,"T1")]
pokemon.spellm1 = tmspell.spell
end
end
if exhaustion.get(cid, 31000) then
seconds1 = math.floor(((exhaustion.get(cid, 31000)) + 1))  
frasename = "Pokemon: "..pokemon.pokenome.."" 
frasecd = ""..pokemon.spellm1.." - m1: wait "..seconds1.." seconds."


else
frasename = "Pokemon: "..pokemon.pokenome.." "
frasecd = ""..pokemon.spellm1.." - m1: ready."
end
if exhaustion.get(cid, 31001) then
seconds2 = math.floor(((exhaustion.get(cid, 31001)) + 1))  
frasecd2 = ""..pokemon.spellm2.." - m2: wait "..seconds2.." seconds."


else
frasecd2 = ""..pokemon.spellm2.." - m2: ready."
end
if exhaustion.get(cid, 31002) then
seconds3 = math.floor(((exhaustion.get(cid, 31002)) + 1))  
frasecd3 = ""..pokemon.spellm3.." - m3: wait "..seconds3.." seconds."


else
frasecd3 = ""..pokemon.spellm3.." - m3: ready."
end
if exhaustion.get(cid, 31003) then
seconds4 = math.floor(((exhaustion.get(cid, 31003)) + 1))  
frasecd4 = ""..pokemon.spellm4.." - m4: wait "..seconds4.." seconds."


else
frasecd4 = ""..pokemon.spellm4.." - m4: ready."
end
if exhaustion.get(cid, 31004) then
seconds5 = math.floor(((exhaustion.get(cid, 31004)) + 1))  
frasecd5 = ""..pokemon.spellm5.." - m5: wait "..seconds5.." seconds."


else
frasecd5 = ""..pokemon.spellm5.." - m5: ready."
end
if exhaustion.get(cid, 31005) then
seconds6 = math.floor(((exhaustion.get(cid, 31005)) + 1))  
frasecd6 = ""..pokemon.spellm6.." - m6: wait "..seconds6.." seconds."


else
frasecd6 = ""..pokemon.spellm6.." - m6: ready."
end
if exhaustion.get(cid, 31006) then
seconds7 = math.floor(((exhaustion.get(cid, 31006)) + 1))  
frasecd7 = ""..pokemon.spellm7.." - m7: wait "..seconds7.." seconds."


else
frasecd7 = ""..pokemon.spellm7.." - m7: ready."
end
if exhaustion.get(cid, 31007) then
seconds8 = math.floor(((exhaustion.get(cid, 31007)) + 1))  
frasecd8 = ""..pokemon.spellm8.." - m8: wait "..seconds8.." seconds."


else
frasecd8 = ""..pokemon.spellm8.." - m8: ready."
end
doPlayerSendTextMessage(cid, numerodamsg, ""..frasename.."\n"..frasecd.."\n"..frasecd2.."\n"..frasecd3.."\n"..frasecd4.."\n"..frasecd5.."\n"..frasecd6.."\n"..frasecd7.."\n"..frasecd8.."")
end
if pokemon.nmoves == 9 then
if isTM(tmitem.uid) then
if getTM(tmitem.uid,"T1") then
tmspell = TM[getTM(tmitem.uid,"T1")]
pokemon.spellm1 = tmspell.spell
end
if getTM(tmitem.uid,"T2") then
tmspell = TM[getTM(tmitem.uid,"T2")]
pokemon.spellm2 = tmspell.spell
end
if getTM(tmitem.uid,"T3") then
tmspell = TM[getTM(tmitem.uid,"T3")]
pokemon.spellm3 = tmspell.spell
end
if getTM(tmitem.uid,"T4") then
tmspell = TM[getTM(tmitem.uid,"T4")]
pokemon.spellm4 = tmspell.spell
end
if getTM(tmitem.uid,"T5") then
tmspell = TM[getTM(tmitem.uid,"T5")]
pokemon.spellm5 = tmspell.spell
end
if getTM(tmitem.uid,"T6") then
tmspell = TM[getTM(tmitem.uid,"T6")]
pokemon.spellm6 = tmspell.spell
end
if getTM(tmitem.uid,"T7") then
tmspell = TM[getTM(tmitem.uid,"T7")]
pokemon.spellm7 = tmspell.spell
end
if getTM(tmitem.uid,"T8") then
tmspell = TM[getTM(tmitem.uid,"T8")]
pokemon.spellm8 = tmspell.spell
end
if getTM(tmitem.uid,"T9") then
tmspell = TM[getTM(tmitem.uid,"T9")]
pokemon.spellm9 = tmspell.spell
end
end
if exhaustion.get(cid, 31000) then
seconds1 = math.floor(((exhaustion.get(cid, 31000)) + 1))  
frasename = "Pokemon: "..pokemon.pokenome.."" 
frasecd = ""..pokemon.spellm1.." - m1: wait "..seconds1.." seconds."


else
frasename = "Pokemon: "..pokemon.pokenome.." "
frasecd = ""..pokemon.spellm1.." - m1: ready."
end
if exhaustion.get(cid, 31001) then
seconds2 = math.floor(((exhaustion.get(cid, 31001)) + 1))  
frasecd2 = ""..pokemon.spellm2.." - m2: wait "..seconds2.." seconds."


else
frasecd2 = ""..pokemon.spellm2.." - m2: ready."
end
if exhaustion.get(cid, 31002) then
seconds3 = math.floor(((exhaustion.get(cid, 31002)) + 1))  
frasecd3 = ""..pokemon.spellm3.." - m3: wait "..seconds3.." seconds."


else
frasecd3 = ""..pokemon.spellm3.." - m3: ready."
end
if exhaustion.get(cid, 31003) then
seconds4 = math.floor(((exhaustion.get(cid, 31003)) + 1))  
frasecd4 = ""..pokemon.spellm4.." - m4: wait "..seconds4.." seconds."


else
frasecd4 = ""..pokemon.spellm4.." - m4: ready."
end
if exhaustion.get(cid, 31004) then
seconds5 = math.floor(((exhaustion.get(cid, 31004)) + 1))  
frasecd5 = ""..pokemon.spellm5.." - m5: wait "..seconds5.." seconds."


else
frasecd5 = ""..pokemon.spellm5.." - m5: ready."
end
if exhaustion.get(cid, 31005) then
seconds6 = math.floor(((exhaustion.get(cid, 31005)) + 1))  
frasecd6 = ""..pokemon.spellm6.." - m6: wait "..seconds6.." seconds."


else
frasecd6 = ""..pokemon.spellm6.." - m6: ready."
end
if exhaustion.get(cid, 31006) then
seconds7 = math.floor(((exhaustion.get(cid, 31006)) + 1))  
frasecd7 = ""..pokemon.spellm7.." - m7: wait "..seconds7.." seconds."


else
frasecd7 = ""..pokemon.spellm7.." - m7: ready."
end
if exhaustion.get(cid, 31007) then
seconds8 = math.floor(((exhaustion.get(cid, 31007)) + 1))  
frasecd8 = ""..pokemon.spellm8.." - m8: wait "..seconds8.." seconds."


else
frasecd8 = ""..pokemon.spellm8.." - m8: ready."
end
if exhaustion.get(cid, 31008) then
seconds9 = math.floor(((exhaustion.get(cid, 31008)) + 1))  
frasecd9 = ""..pokemon.spellm9.." - m9: wait "..seconds9.." seconds."


else
frasecd9 = ""..pokemon.spellm9.." - m9: ready."
end
doPlayerSendTextMessage(cid, numerodamsg, ""..frasename.."\n"..frasecd.."\n"..frasecd2.."\n"..frasecd3.."\n"..frasecd4.."\n"..frasecd5.."\n"..frasecd6.."\n"..frasecd7.."\n"..frasecd8.."\n"..frasecd9.."")

end
if pokemon.nmoves == 10 then
if isTM(tmitem.uid) then
if getTM(tmitem.uid,"T1") then
tmspell = TM[getTM(tmitem.uid,"T1")]
pokemon.spellm1 = tmspell.spell
end
if getTM(tmitem.uid,"T2") then
tmspell = TM[getTM(tmitem.uid,"T2")]
pokemon.spellm2 = tmspell.spell
end
if getTM(tmitem.uid,"T3") then
tmspell = TM[getTM(tmitem.uid,"T3")]
pokemon.spellm3 = tmspell.spell
end
if getTM(tmitem.uid,"T4") then
tmspell = TM[getTM(tmitem.uid,"T4")]
pokemon.spellm4 = tmspell.spell
end
if getTM(tmitem.uid,"T5") then
tmspell = TM[getTM(tmitem.uid,"T5")]
pokemon.spellm5 = tmspell.spell
end
if getTM(tmitem.uid,"T6") then
tmspell = TM[getTM(tmitem.uid,"T6")]
pokemon.spellm6 = tmspell.spell
end
if getTM(tmitem.uid,"T7") then
tmspell = TM[getTM(tmitem.uid,"T7")]
pokemon.spellm7 = tmspell.spell
end
if getTM(tmitem.uid,"T8") then
tmspell = TM[getTM(tmitem.uid,"T8")]
pokemon.spellm8 = tmspell.spell
end
if getTM(tmitem.uid,"T9") then
tmspell = TM[getTM(tmitem.uid,"T9")]
pokemon.spellm9 = tmspell.spell
end
if getTM(tmitem.uid,"T10") then
tmspell = TM[getTM(tmitem.uid,"T10")]
pokemon.spellm10 = tmspell.spell
end
end
if exhaustion.get(cid, 31000) then
seconds1 = math.floor(((exhaustion.get(cid, 31000)) + 1))  
frasename = "Pokemon: "..pokemon.pokenome.."" 
frasecd = ""..pokemon.spellm1.." - m1: wait "..seconds1.." seconds."


else
frasename = "Pokemon: "..pokemon.pokenome.." "
frasecd = ""..pokemon.spellm1.." - m1: ready."
end
if exhaustion.get(cid, 31001) then
seconds2 = math.floor(((exhaustion.get(cid, 31001)) + 1))  
frasecd2 = ""..pokemon.spellm2.." - m2: wait "..seconds2.." seconds."


else
frasecd2 = ""..pokemon.spellm2.." - m2: ready."
end
if exhaustion.get(cid, 31002) then
seconds3 = math.floor(((exhaustion.get(cid, 31002)) + 1))  
frasecd3 = ""..pokemon.spellm3.." - m3: wait "..seconds3.." seconds."


else
frasecd3 = ""..pokemon.spellm3.." - m3: ready."
end
if exhaustion.get(cid, 31003) then
seconds4 = math.floor(((exhaustion.get(cid, 31003)) + 1))  
frasecd4 = ""..pokemon.spellm4.." - m4: wait "..seconds4.." seconds."


else
frasecd4 = ""..pokemon.spellm4.." - m4: ready."
end
if exhaustion.get(cid, 31004) then
seconds5 = math.floor(((exhaustion.get(cid, 31004)) + 1))  
frasecd5 = ""..pokemon.spellm5.." - m5: wait "..seconds5.." seconds."


else
frasecd5 = ""..pokemon.spellm5.." - m5: ready."
end
if exhaustion.get(cid, 31005) then
seconds6 = math.floor(((exhaustion.get(cid, 31005)) + 1))  
frasecd6 = ""..pokemon.spellm6.." - m6: wait "..seconds6.." seconds."


else
frasecd6 = ""..pokemon.spellm6.." - m6: ready."
end
if exhaustion.get(cid, 31006) then
seconds7 = math.floor(((exhaustion.get(cid, 31006)) + 1))  
frasecd7 = ""..pokemon.spellm7.." - m7: wait "..seconds7.." seconds."


else
frasecd7 = ""..pokemon.spellm7.." - m7: ready."
end
if exhaustion.get(cid, 31007) then
seconds8 = math.floor(((exhaustion.get(cid, 31007)) + 1))  
frasecd8 = ""..pokemon.spellm8.." - m8: wait "..seconds8.." seconds."


else
frasecd8 = ""..pokemon.spellm8.." - m8: ready."
end
if exhaustion.get(cid, 31008) then
seconds9 = math.floor(((exhaustion.get(cid, 31008)) + 1))  
frasecd9 = ""..pokemon.spellm9.." - m9: wait "..seconds9.." seconds."


else
frasecd9 = ""..pokemon.spellm9.." - m9: ready."
end
if exhaustion.get(cid, 31009) then
seconds10 = math.floor(((exhaustion.get(cid, 31009)) + 1))  
frasecd10 = ""..pokemon.spellm10.." - m10: wait "..seconds10.." seconds."


else
frasecd10 = ""..pokemon.spellm10.." - m10: ready."
end

doPlayerSendTextMessage(cid, numerodamsg, ""..frasename.."\n"..frasecd.."\n"..frasecd2.."\n"..frasecd3.."\n"..frasecd4.."\n"..frasecd5.."\n"..frasecd6.."\n"..frasecd7.."\n"..frasecd8.."\n"..frasecd9.."\n"..frasecd10.."")
end
if pokemon.nmoves == 11 then
if isTM(tmitem.uid) then
if getTM(tmitem.uid,"T1") then
tmspell = TM[getTM(tmitem.uid,"T1")]
pokemon.spellm1 = tmspell.spell
end
if getTM(tmitem.uid,"T2") then
tmspell = TM[getTM(tmitem.uid,"T2")]
pokemon.spellm2 = tmspell.spell
end
if getTM(tmitem.uid,"T3") then
tmspell = TM[getTM(tmitem.uid,"T3")]
pokemon.spellm3 = tmspell.spell
end
if getTM(tmitem.uid,"T4") then
tmspell = TM[getTM(tmitem.uid,"T4")]
pokemon.spellm4 = tmspell.spell
end
if getTM(tmitem.uid,"T5") then
tmspell = TM[getTM(tmitem.uid,"T5")]
pokemon.spellm5 = tmspell.spell
end
if getTM(tmitem.uid,"T6") then
tmspell = TM[getTM(tmitem.uid,"T6")]
pokemon.spellm6 = tmspell.spell
end
if getTM(tmitem.uid,"T7") then
tmspell = TM[getTM(tmitem.uid,"T7")]
pokemon.spellm7 = tmspell.spell
end
if getTM(tmitem.uid,"T8") then
tmspell = TM[getTM(tmitem.uid,"T8")]
pokemon.spellm8 = tmspell.spell
end
if getTM(tmitem.uid,"T9") then
tmspell = TM[getTM(tmitem.uid,"T9")]
pokemon.spellm9 = tmspell.spell
end
if getTM(tmitem.uid,"T10") then
tmspell = TM[getTM(tmitem.uid,"T10")]
pokemon.spellm10 = tmspell.spell
end
if getTM(tmitem.uid,"T11") then
tmspell = TM[getTM(tmitem.uid,"T11")]
pokemon.spellm11 = tmspell.spell
end
end
if exhaustion.get(cid, 31000) then
seconds1 = math.floor(((exhaustion.get(cid, 31000)) + 1))  
frasename = "Pokemon: "..pokemon.pokenome.."" 
frasecd = ""..pokemon.spellm1.." - m1: wait "..seconds1.." seconds."


else
frasename = "Pokemon: "..pokemon.pokenome.." "
frasecd = ""..pokemon.spellm1.." - m1: ready."
end
if exhaustion.get(cid, 31001) then
seconds2 = math.floor(((exhaustion.get(cid, 31001)) + 1))  
frasecd2 = ""..pokemon.spellm2.." - m2: wait "..seconds2.." seconds."


else
frasecd2 = ""..pokemon.spellm2.." - m2: ready."
end
if exhaustion.get(cid, 31002) then
seconds3 = math.floor(((exhaustion.get(cid, 31002)) + 1))  
frasecd3 = ""..pokemon.spellm3.." - m3: wait "..seconds3.." seconds."


else
frasecd3 = ""..pokemon.spellm3.." - m3: ready."
end
if exhaustion.get(cid, 31003) then
seconds4 = math.floor(((exhaustion.get(cid, 31003)) + 1))  
frasecd4 = ""..pokemon.spellm4.." - m4: wait "..seconds4.." seconds."


else
frasecd4 = ""..pokemon.spellm4.." - m4: ready."
end
if exhaustion.get(cid, 31004) then
seconds5 = math.floor(((exhaustion.get(cid, 31004)) + 1))  
frasecd5 = ""..pokemon.spellm5.." - m5: wait "..seconds5.." seconds."


else
frasecd5 = ""..pokemon.spellm5.." - m5: ready."
end
if exhaustion.get(cid, 31005) then
seconds6 = math.floor(((exhaustion.get(cid, 31005)) + 1))  
frasecd6 = ""..pokemon.spellm6.." - m6: wait "..seconds6.." seconds."


else
frasecd6 = ""..pokemon.spellm6.." - m6: ready."
end
if exhaustion.get(cid, 31006) then
seconds7 = math.floor(((exhaustion.get(cid, 31006)) + 1))  
frasecd7 = ""..pokemon.spellm7.." - m7: wait "..seconds7.." seconds."


else
frasecd7 = ""..pokemon.spellm7.." - m7: ready."
end
if exhaustion.get(cid, 31007) then
seconds8 = math.floor(((exhaustion.get(cid, 31007)) + 1))  
frasecd8 = ""..pokemon.spellm8.." - m8: wait "..seconds8.." seconds."


else
frasecd8 = ""..pokemon.spellm8.." - m8: ready."
end
if exhaustion.get(cid, 31008) then
seconds9 = math.floor(((exhaustion.get(cid, 31008)) + 1))  
frasecd9 = ""..pokemon.spellm9.." - m9: wait "..seconds9.." seconds."


else
frasecd9 = ""..pokemon.spellm9.." - m9: ready."
end
if exhaustion.get(cid, 31009) then
seconds10 = math.floor(((exhaustion.get(cid, 31009)) + 1))  
frasecd10 = ""..pokemon.spellm10.." - m10: wait "..seconds10.." seconds."


else
frasecd10 = ""..pokemon.spellm10.." - m10: ready."
end
if exhaustion.get(cid, 31010) then
seconds11 = math.floor(((exhaustion.get(cid, 31010)) + 1))  
frasecd11 = ""..pokemon.spellm11.." - m11: wait "..seconds11.." seconds."


else
frasecd11 = ""..pokemon.spellm11.." - m11: ready."
end
doPlayerSendTextMessage(cid, numerodamsg, ""..frasename.."\n"..frasecd.."\n"..frasecd2.."\n"..frasecd3.."\n"..frasecd4.."\n"..frasecd5.."\n"..frasecd6.."\n"..frasecd7.."\n"..frasecd8.."\n"..frasecd9.."\n"..frasecd10.."\n"..frasecd11.."")
end
if pokemon.nmoves == 12 then
if isTM(tmitem.uid) then
if getTM(tmitem.uid,"T1") then
tmspell = TM[getTM(tmitem.uid,"T1")]
pokemon.spellm1 = tmspell.spell
end
if getTM(tmitem.uid,"T2") then
tmspell = TM[getTM(tmitem.uid,"T2")]
pokemon.spellm2 = tmspell.spell
end
if getTM(tmitem.uid,"T3") then
tmspell = TM[getTM(tmitem.uid,"T3")]
pokemon.spellm3 = tmspell.spell
end
if getTM(tmitem.uid,"T4") then
tmspell = TM[getTM(tmitem.uid,"T4")]
pokemon.spellm4 = tmspell.spell
end
if getTM(tmitem.uid,"T5") then
tmspell = TM[getTM(tmitem.uid,"T5")]
pokemon.spellm5 = tmspell.spell
end
if getTM(tmitem.uid,"T6") then
tmspell = TM[getTM(tmitem.uid,"T6")]
pokemon.spellm6 = tmspell.spell
end
if getTM(tmitem.uid,"T7") then
tmspell = TM[getTM(tmitem.uid,"T7")]
pokemon.spellm7 = tmspell.spell
end
if getTM(tmitem.uid,"T8") then
tmspell = TM[getTM(tmitem.uid,"T8")]
pokemon.spellm8 = tmspell.spell
end
if getTM(tmitem.uid,"T9") then
tmspell = TM[getTM(tmitem.uid,"T9")]
pokemon.spellm9 = tmspell.spell
end
if getTM(tmitem.uid,"T10") then
tmspell = TM[getTM(tmitem.uid,"T10")]
pokemon.spellm10 = tmspell.spell
end
if getTM(tmitem.uid,"T11") then
tmspell = TM[getTM(tmitem.uid,"T11")]
pokemon.spellm11 = tmspell.spell
end
if getTM(tmitem.uid,"T12") then
tmspell = TM[getTM(tmitem.uid,"T12")]
pokemon.spellm12 = tmspell.spell
end
end
if exhaustion.get(cid, 31000) then
seconds1 = math.floor(((exhaustion.get(cid, 31000)) + 1))  
frasename = "Pokemon: "..pokemon.pokenome.."" 
frasecd = ""..pokemon.spellm1.." - m1: wait "..seconds1.." seconds."


else
frasename = "Pokemon: "..pokemon.pokenome.." "
frasecd = ""..pokemon.spellm1.." - m1: ready."
end
if exhaustion.get(cid, 31001) then
seconds2 = math.floor(((exhaustion.get(cid, 31001)) + 1))  
frasecd2 = ""..pokemon.spellm2.." - m2: wait "..seconds2.." seconds."


else
frasecd2 = ""..pokemon.spellm2.." - m2: ready."
end
if exhaustion.get(cid, 31002) then
seconds3 = math.floor(((exhaustion.get(cid, 31002)) + 1))  
frasecd3 = ""..pokemon.spellm3.." - m3: wait "..seconds3.." seconds."


else
frasecd3 = ""..pokemon.spellm3.." - m3: ready."
end
if exhaustion.get(cid, 31003) then
seconds4 = math.floor(((exhaustion.get(cid, 31003)) + 1))  
frasecd4 = ""..pokemon.spellm4.." - m4: wait "..seconds4.." seconds."


else
frasecd4 = ""..pokemon.spellm4.." - m4: ready."
end
if exhaustion.get(cid, 31004) then
seconds5 = math.floor(((exhaustion.get(cid, 31004)) + 1))  
frasecd5 = ""..pokemon.spellm5.." - m5: wait "..seconds5.." seconds."


else
frasecd5 = ""..pokemon.spellm5.." - m5: ready."
end
if exhaustion.get(cid, 31005) then
seconds6 = math.floor(((exhaustion.get(cid, 31005)) + 1))  
frasecd6 = ""..pokemon.spellm6.." - m6: wait "..seconds6.." seconds."


else
frasecd6 = ""..pokemon.spellm6.." - m6: ready."
end
if exhaustion.get(cid, 31006) then
seconds7 = math.floor(((exhaustion.get(cid, 31006)) + 1))  
frasecd7 = ""..pokemon.spellm7.." - m7: wait "..seconds7.." seconds."


else
frasecd7 = ""..pokemon.spellm7.." - m7: ready."
end
if exhaustion.get(cid, 31007) then
seconds8 = math.floor(((exhaustion.get(cid, 31007)) + 1))  
frasecd8 = ""..pokemon.spellm8.." - m8: wait "..seconds8.." seconds."


else
frasecd8 = ""..pokemon.spellm8.." - m8: ready."
end
if exhaustion.get(cid, 31008) then
seconds9 = math.floor(((exhaustion.get(cid, 31008)) + 1))  
frasecd9 = ""..pokemon.spellm9.." - m9: wait "..seconds9.." seconds."


else
frasecd9 = ""..pokemon.spellm9.." - m9: ready."
end
if exhaustion.get(cid, 31009) then
seconds10 = math.floor(((exhaustion.get(cid, 31009)) + 1))  
frasecd10 = ""..pokemon.spellm10.." - m10: wait "..seconds10.." seconds."


else
frasecd10 = ""..pokemon.spellm10.." - m10: ready."
end
if exhaustion.get(cid, 31010) then
seconds11 = math.floor(((exhaustion.get(cid, 31010)) + 1))  
frasecd11 = ""..pokemon.spellm11.." - m11: wait "..seconds11.." seconds."


else
frasecd11 = ""..pokemon.spellm11.." - m11: ready."
end
if exhaustion.get(cid, 31011) then
seconds12 = math.floor(((exhaustion.get(cid, 31011)) + 1))  
frasecd12 = ""..pokemon.spellm12.." - m12: wait "..seconds12.." seconds."


else
frasecd12 = ""..pokemon.spellm12.." - m12: ready."
end
doPlayerSendTextMessage(cid, numerodamsg, ""..frasename.."\n"..frasecd.."\n"..frasecd2.."\n"..frasecd3.."\n"..frasecd4.."\n"..frasecd5.."\n"..frasecd6.."\n"..frasecd7.."\n"..frasecd8.."\n"..frasecd9.."\n"..frasecd10.."\n"..frasecd11.."\n"..frasecd12.."")
end

return 0
end 


	

	
	
	
if getTileInfo(getCreaturePosition(sumomdonego)).protection or getTileInfo(getCreaturePosition(cid)).protection  then
	doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You cant use moves in protection zone")
	return true
end	
	if getPlayerLevel(cid) < leveldopoke then
	doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You don\'t have enough level ,need "..leveldopoke.." to  this move.")
	return 0
	end

	

 if getPlayerStorageValue(sumomdonego, 8) >= 1 then
 doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Sorry You pokemon sleeping.")

	
	return true
	end
 if getPlayerStorageValue(sumomdonego, 10) >= 1 then
 
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Sorry your pokemon scared to battle")
	
	return true
	end

 if getPlayerStorageValue(sumomdonego, 9) >= 1 then
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Sorry your pokemon dont have target ,evasive pokemon")
setPlayerStorageValue(sumomdonego, 9,0)	
	return true
	end

if exhaustion.get(cid, 5545789) then	
--doPlayerSendCancel(cid, "You Pokemon are Exausted!")
	return true
end

exhaustion.set(cid, 5545789, 0.3)

local exaustcd = cdtec["cold"][words]
if getPlayerStorageValue(cid, 888) >= 1 then
exaustcd = cdtec2["cold"][words]
end
	if exhaustion.get(cid, exaustcd.cd) then
		seconds = math.floor(((exhaustion.get(cid, exaustcd.cd))))+1
                spell = pokemon.spell
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have to wait "..seconds.." seconds to "..spell..".")
		return 0
		end


if pokemon.target ~= "no" then
if not isMonster(getCreatureTarget(cid)) and not isPlayer(getCreatureTarget(cid)) then
	doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You don\'t have any targets.")
	return 0
	end
		if getDistanceBetween(getThingPos(sumomdonego), getThingPos(getCreatureTarget(cid))) > pokemon.dista then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Get closer to the target to  this move.")
		return 0
		end
		if not isSightClear(getThingPos(sumomdonego), getThingPos(getCreatureTarget(cid)), false) then
		return 0
		end
end
local leveldoplayer = getPlayerLevel(cid)
local multvoc = 1
if getPlayerStorageValue(cid, 9340) == 1 then
multvoc = 2
end
	if pokemon.type == "flying" then
if getPlayerVocation(cid) == 15 then
leveldoplayer = getPlayerLevel(cid)+30*multvoc
end
elementa = FLYDAMAGE
	elseif pokemon.type == "ground" then
if getPlayerVocation(cid) == 8 then
leveldoplayer = getPlayerLevel(cid)+30*multvoc
end

		elementa = GROUNDDAMAGE
	elseif pokemon.type == "electric" then
if getPlayerVocation(cid) == 16 then
leveldoplayer = getPlayerLevel(cid)+30*multvoc
	
end
--if getPlayerStorageValue(cid, 9359) == 1 then	
--leveldoplayer = leveldoplayer+25
--end
		elementa = ELECTRICDAMAGE
	elseif pokemon.type == "ghost" then
if getPlayerVocation(cid) == 4 then
leveldoplayer = getPlayerLevel(cid)+30*multvoc
	end

		elementa = GHOSTDAMAGE
	elseif pokemon.type == "normal" then
if getPlayerVocation(cid) == 7 then
leveldoplayer = getPlayerLevel(cid)+30*multvoc
	end
--if getPlayerStorageValue(cid, 9360) == 1 then	
--leveldoplayer = leveldoplayer+30
--end
		elementa = NORMALDAMAGE
	elseif pokemon.type == "fighting" then
if getPlayerVocation(cid) == 14 then
leveldoplayer = getPlayerLevel(cid)+30*multvoc
		end
		elementa = FIGHTDAMAGE
	elseif pokemon.type == "poison" then
if getPlayerVocation(cid) == 13 then
leveldoplayer = getPlayerLevel(cid)+30*multvoc
	end
--if getPlayerStorageValue(cid, 9356) == 1 then	
--leveldoplayer = leveldoplayer+25
--end
		elementa = POISONDAMAGE
	elseif pokemon.type == "rock" then
if getPlayerVocation(cid) == 10 then
leveldoplayer = getPlayerLevel(cid)+30*multvoc
	end
--if getPlayerStorageValue(cid, 9353) == 1 then	
--leveldoplayer = leveldoplayer+20
--end
		elementa = ROCKDAMAGE
	elseif pokemon.type == "bug" then
if getPlayerVocation(cid) == 17 then
leveldoplayer = getPlayerLevel(cid)+30*multvoc		
end

		elementa = BUGDAMAGE
	elseif pokemon.type == "fire" then
if getPlayerVocation(cid) == 6 then
leveldoplayer = getPlayerLevel(cid)+30*multvoc

	end

--if getPlayerStorageValue(cid, 9354) == 1 then	
--leveldoplayer = leveldoplayer+20
--end
		elementa = FIREDAMAGE
	elseif pokemon.type == "water" then
if getPlayerVocation(cid) == 11 then
leveldoplayer = getPlayerLevel(cid)+30*multvoc
	end
--if getPlayerStorageValue(cid, 9355) == 1 then	
--leveldoplayer = leveldoplayer+20
--end
		elementa = WATERDAMAGE
	elseif pokemon.type == "grass" then
if getPlayerVocation(cid) == 5 then
leveldoplayer = getPlayerLevel(cid)+30*multvoc
		end
--if getPlayerStorageValue(cid, 9358) == 1 then	
--leveldoplayer = leveldoplayer+25
--end
		elementa = GRASSDAMAGE
	elseif pokemon.type == "psychic" then
if getPlayerVocation(cid) == 9 then
leveldoplayer = getPlayerLevel(cid)+30*multvoc
		end

--if getPlayerStorageValue(cid, 9357) == 1 then	
--leveldoplayer = leveldoplayer+20
--end
		elementa = PSYCHICDAMAGE
	elseif pokemon.type == "ice" then
if getPlayerVocation(cid) == 12 then
leveldoplayer = getPlayerLevel(cid)+30*multvoc
		end
		elementa = ICEDAMAGE
	elseif pokemon.type == "dragon" then
if getPlayerVocation(cid) == 3 then
leveldoplayer = getPlayerLevel(cid)+30*multvoc
	end
		elementa = DRAGONDAMAGE
		elseif pokemon.type == "dark" then

		elementa = DARKDAMAGE
			elseif pokemon.type == "steel" then

		elementa = STEELDAMAGE
	end

	local element = elementa

local num1 = (leveldopoke*1.5)
local num2 = (leveldopoke*2)


local item2 = getPlayerSlotItem(cid, 8)

if getItemAttribute(item2.uid, "boost") then
boost = getItemAttribute(item2.uid, "boost")/3
else
boost = 0
end

local candy = getItemAttribute(item2.uid, "candy")

local num3 = (pokemon.bonus)
if isShiny(getItemAttribute(item2.uid, "nome")) then
num3 = (pokemon.bonus)*1.5
end
local lvpokemon = boost+leveldoplayer
if candy then
lvpokemon = boost+leveldoplayer+candy
end

leveldoplayer = 0
local modeFight = getPlayerLevel(cid)
if modeFight  >= 1 then
num3 = num3 * 1.2
elseif modeFight <= 0 then
num3 = num3 * 0.8
end
local apelidoounome = getItemAttribute(item2.uid, "apelido")
if pokemon.spell == "Selfdestruct" then
if exhaustion.get(cid, 31015) then
		seconds = math.floor(((exhaustion.get(cid, 31015))))+1
                spell = pokemon.spell
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have to wait "..seconds.." seconds to "..spell..".")
		return 0
		end
		
exhaustion.set(cid, 31015, 200)
end
if apelidoounome then
doPlayerSay(cid, apelidoounome.." , "..pokemon.spell..".", 1)
else
doPlayerSay(cid, getCreatureName(sumomdonego).." , "..pokemon.spell..".", 1)
end
--doCreatureSay(sumomdonego, pokemon.spell.."!!!",TALKTYPE_MONSTER)
--if isPremium(cid) then 
--exhaustion.set(cid, exaustcd.cd, pokemon.cd*0.7)
--else

exhaustion.set(cid, exaustcd.cd, pokemon.cd)


local mypoke = getCreatureSummons(cid)[1]
local name = getCreatureName(mypoke)

if words == "m1" then
local it = "1"
local cdzin = "move"..it..""
local move = movestable[name].move1
setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)

elseif words == "m2" then
local it = "2"
local cdzin = "move"..it..""
local move = movestable[name].move2
setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)

elseif words == "m3" then

local it = "3"
local cdzin = "move"..it..""
local move = movestable[name].move3
setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)

elseif words == "m4" then
local it = "4"
local cdzin = "move"..it..""
local move = movestable[name].move4
setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)


elseif words == "m5" then

local it = "5"
local cdzin = "move"..it..""
local move = movestable[name].move5
setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)

elseif words == "m6" then

local it = "6"
local cdzin = "move"..it..""
local move = movestable[name].move6
setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)

elseif words == "m7" then

local it = "7"
local cdzin = "move"..it..""
local move = movestable[name].move7
setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)

elseif words == "m8" then
local it = "8"
local cdzin = "move"..it..""
local move = movestable[name].move8
setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)

elseif words == "m9" then

local it = "9"
local cdzin = "move"..it..""
local move = movestable[name].move9
setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)

elseif words == "m10" then

local it = "10"
local cdzin = "move"..it..""
local move = movestable[name].move10
setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)

elseif words == "m11" then
local it = "11"
local cdzin = "move"..it..""
local move = movestable[name].move11
setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)

elseif words == "m12" then

local it = "12"
local cdzin = "move"..it..""
local move = movestable[name].move12
setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)

end

sendCooldown(cid)

--end
setPlayerStorageValue(cid,31020,1)
	if (hasCondition(sumomdonego, CONDITION_HASTE)) then
		if math.random(1,100) <= 33 then
  local soundenabled2 = soundskpdo[string.lower(pokemon.spell)]
if soundenabled2 then
local d2 = getCreaturesInRange(getThingPos(sumomdonego), 5, 5, 0, 1)

                        for _,pid in pairs(d2) do
if isSound(pid) then
doPlayerSendCancel(pid,"sounds/236.wav")
end
end

end 
	doSendAnimatedText(getThingPos(sumomdonego), "MISS", 215)


	
	return true
end
	end
  if (hasCondition(sumomdonego, CONDITION_DRUNK)) then
		if math.random(1,100) <= 33 then
  local soundenabled2 = soundskpdo[string.lower(pokemon.spell)]
if soundenabled2 then
local d2 = getCreaturesInRange(getThingPos(sumomdonego), 5, 5, 0, 1)

                        for _,pid in pairs(d2) do
if isSound(pid) then
doPlayerSendCancel(pid,"sounds/236.wav")
end
end

end      
		doSendAnimatedText(getThingPos(sumomdonego), "SELF HIT", 180)
		local levels = getPlayerLevel(cid)
		doTargetCombatHealth(cid, sumomdonego, COMBAT_PHYSICALDAMAGE, -(math.random((levels*3),(levels*5))), -((math.random((levels*3),(levels*5))+10)), 3)

		

		return true
		end
	end
  local soundenabled = soundskpdo[string.lower(pokemon.spell)]
if soundenabled then
local d = getCreaturesInRange(getThingPos(sumomdonego), 5, 5, 0, 1)

                        for _,pid in pairs(d) do
if isSound(pid) then
doPlayerSendCancel(pid,"sounds/"..soundenabled.file)
end
end

end      
        
	if getPlayerStorageValue(sumomdonego, 254) >= 1 then
	num3 = num3 * 1.8
	setPlayerStorageValue(sumomdonego, 254, 0)
	end

if getPlayerStorageValue(sumomdonego, 255) >= 1 then
if math.random(1,100) <= 50 then
doSendMagicEffect(getThingPos(sumomdonego), 239)
	num3 = num3 * 1.8
end
	
	end

if getItemAttribute(item2.uid, "sexy")  == 5 then
num3 = num3 * 1.1
end
local aura = getItemAttribute(item2.uid, "aura")
if aura and aura >= 1 then
if math.random(1,100) <= 20 then
	num3 = num3 * 2
local nada = 0
	if pokemon.spell == "Rest" then
	nada = 1
	else
doSendAnimatedText(getThingPos(sumomdonego), "Critical", 215)
end 
end
end
	
	if pokemon.spell == "Dynamic Punch" then


		
local function throw(params)
			if isCreature(params.cid) then
                        if isCreature(params.target) then
			doSendDistanceShoot(getThingPos(params.cid), getThingPos(params.target),26)
end
			end
			end
			local function damage(params)
			if isCreature(params.cid) then
                        if isCreature(params.target) then
			doAreaCombatHealth(params.cid, element, getThingPos(params.target), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 112)
			end
			end
			end
local sumonado = sumomdonego 
local target = getCreatureTarget(cid)
addEvent(throw, 0, {cid = sumonado})
		addEvent(throw, 150, {cid = sumonado,target = target})
addEvent(throw, 250, {cid = sumonado,target = target})
addEvent(throw, 350, {cid = sumonado,target = target})
addEvent(throw, 550, {cid = sumonado,target = target})
		addEvent(damage, 0, {cid = sumonado,target = target})
		addEvent(damage, 150, {cid = sumonado,target = target})
	addEvent(damage, 250, {cid = sumonado,target = target})
addEvent(damage, 350, {cid = sumonado,target = target})
addEvent(damage, 550, {cid = sumonado,target = target})
		
		


	return 0	
elseif pokemon.spell == "Iron Head" then


		
local target = getCreatureTarget(cid)
local monsterpos = getCreatureLookDir(target)
local monstertp = getCreaturePosition(target)
local evasiontp = getCreaturePosition(sumomdonego)
if monsterpos == 0 then

monstertp.z = monstertp.z 
monstertp.x = monstertp.x
monstertp.y = monstertp.y+1
if isWalkable(monstertp,true,true,cid) then
doSendMagicEffect(evasiontp, 211)
doTeleportThing(sumomdonego,monstertp)
setPlayerStorageValue(target, 9,1)
	
 
end
elseif monsterpos == 2 then

monstertp.z = monstertp.z 
monstertp.x = monstertp.x
monstertp.y = monstertp.y-1
if isWalkable(monstertp,true,true,cid) then
doSendMagicEffect(evasiontp, 211)
doTeleportThing(sumomdonego,monstertp)
setPlayerStorageValue(target, 9,1)

 
end
elseif monsterpos == 1 then

monstertp.z = monstertp.z 
monstertp.x = monstertp.x-1
monstertp.y = monstertp.y
if isWalkable(monstertp,true,true,cid) then
doSendMagicEffect(evasiontp, 211)
doTeleportThing(sumomdonego,monstertp)
setPlayerStorageValue(target, 9,1)

 
end
elseif monsterpos == 3 then

monstertp.z = monstertp.z 
monstertp.x = monstertp.x+1
monstertp.y = monstertp.y
if isWalkable(monstertp,true,true,cid) then
doSendMagicEffect(evasiontp, 211)
doTeleportThing(sumomdonego,monstertp)
setPlayerStorageValue(target, 9,1)

 
end

end
		doAreaCombatHealth(sumomdonego, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 160)
		return 0
elseif pokemon.spell == "Metal Claw" then


		
--doSetCreatureOutfit(sumomdonego, {lookType = 660}, 1000)

		doAreaCombatHealth(sumomdonego, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 160)
		return 0
elseif pokemon.spell == "Fury Splinter" then
		


		
				local function spark(params)
				if isCreature(params.cid) then
				if isCreature(getCreatureSummons(params.cid)[1]) then
				doSendDistanceShoot(getThingPos(getCreatureSummons(params.cid)[1]), params.cidpos, 13)
				doAreaCombatHealth(sumomdonego, element, params.cidpos, 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 3)
				end
				end
				end
		for a = -5, 5 do
			for b = -5, 5 do
			cidpos = getThingPos(sumomdonego)
			cidpos.x = cidpos.x+a
			cidpos.y = cidpos.y+b
			addEvent(spark, math.abs(a)*350 + math.abs(b)*650, {cid = cid, cidpos = cidpos})
			end
		end		
		return 0
elseif pokemon.spell == "Quick Attack" then


		
local target = getCreatureTarget(cid)
local monsterpos = getCreatureLookDir(target)
local monstertp = getCreaturePosition(target)
local evasiontp = getCreaturePosition(sumomdonego)
if monsterpos == 0 then

monstertp.z = monstertp.z 
monstertp.x = monstertp.x
monstertp.y = monstertp.y+1
if isWalkable(monstertp,true,true,cid) then
doSendMagicEffect(evasiontp, 211)
doTeleportThing(sumomdonego,monstertp)
setPlayerStorageValue(target, 9,1)
	
 
end
elseif monsterpos == 2 then

monstertp.z = monstertp.z 
monstertp.x = monstertp.x
monstertp.y = monstertp.y-1
if isWalkable(monstertp,true,true,cid) then
doSendMagicEffect(evasiontp, 211)
doTeleportThing(sumomdonego,monstertp)
setPlayerStorageValue(target, 9,1)

 
end
elseif monsterpos == 1 then

monstertp.z = monstertp.z 
monstertp.x = monstertp.x-1
monstertp.y = monstertp.y
if isWalkable(monstertp,true,true,cid) then
doSendMagicEffect(evasiontp, 211)
doTeleportThing(sumomdonego,monstertp)
setPlayerStorageValue(target, 9,1)

 
end
elseif monsterpos == 3 then

monstertp.z = monstertp.z 
monstertp.x = monstertp.x+1
monstertp.y = monstertp.y
if isWalkable(monstertp,true,true,cid) then
doSendMagicEffect(evasiontp, 211)
doTeleportThing(sumomdonego,monstertp)
setPlayerStorageValue(target, 9,1)

 
end

end
		doAreaCombatHealth(sumomdonego, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 111)
		return 0
elseif pokemon.spell == "Pluck" then


		
		doAreaCombatHealth(sumomdonego, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 111)
		return 0

elseif pokemon.spell == "Slam" then


		
		doAreaCombatHealth(sumomdonego, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 3)
		return 0
elseif pokemon.spell == "Body Slam" then


		
		doAreaCombatHealth(sumomdonego, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 3)
		return 0
elseif pokemon.spell == "Rapid Hit" then


		
		doAreaCombatHealth(sumomdonego, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 3)
		local hitalvo = getCreatureTarget(cid)
		local function hit(params)
		if isCreature(getCreatureSummons(params.cid)[1]) then
		if isCreature(getCreatureTarget(params.cid)) then
		if getCreatureTarget(params.cid) == params.hitalvo then
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], NORMALDAMAGE, getThingPos(getCreatureTarget(params.cid)), 0, -0, -0, 3)
		end
		end
		end
		end

		addEvent(hit, 80, {cid = cid, hitalvo = hitalvo})
		addEvent(hit, 280, {cid = cid, hitalvo = hitalvo})
		addEvent(hit, 480, {cid = cid, hitalvo = hitalvo})
		addEvent(hit, 680, {cid = cid, hitalvo = hitalvo})
		return 0
elseif pokemon.spell == "Drill Peck" then


		
		doAreaCombatHealth(sumomdonego, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 110)
		local hitalvo = getCreatureTarget(cid)
		local function hit(params)
		if isCreature(getCreatureSummons(params.cid)[1]) then
		if isCreature(getCreatureTarget(params.cid)) then
		if getCreatureTarget(params.cid) == params.hitalvo then
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, getThingPos(getCreatureTarget(params.cid)),0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 110)
		end
		end
		end
		end


		addEvent(hit, 380, {cid = cid, hitalvo = hitalvo})
		addEvent(hit, 680, {cid = cid, hitalvo = hitalvo})
	

		return 0
elseif pokemon.spell == "Triple Kick" then


		
		doAreaCombatHealth(sumomdonego, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 110)
		local hitalvo = getCreatureTarget(cid)
		local function hit(params)
		if isCreature(getCreatureSummons(params.cid)[1]) then
		if isCreature(getCreatureTarget(params.cid)) then
		if getCreatureTarget(params.cid) == params.hitalvo then
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, getThingPos(getCreatureTarget(params.cid)),0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 113)
		end
		end
		end
		end


		addEvent(hit, 380, {cid = cid, hitalvo = hitalvo})
		addEvent(hit, 680, {cid = cid, hitalvo = hitalvo})
	

		return 0
elseif pokemon.spell == "Multi-Kick" then


		

		local hitalvo = getCreatureTarget(cid)
		local function hit(params)
		if isCreature(getCreatureSummons(params.cid)[1]) then
		if isCreature(getCreatureTarget(params.cid)) then
		if getCreatureTarget(params.cid) == params.hitalvo then
local outfitx = {lookType = 527}
if isInArray({"Elite Hitmonlee"}, getCreatureName(getCreatureSummons(params.cid)[1])) then
doSetCreatureOutfit(getCreatureSummons(params.cid)[1], outfitx, 800)
elseif isInArray({"Hitmonlee"}, getCreatureName(getCreatureSummons(params.cid)[1])) then
doSetCreatureOutfit(getCreatureSummons(params.cid)[1], lee, 800)
elseif isInArray({"Hitmontop"}, getCreatureName(getCreatureSummons(params.cid)[1])) then
doSetCreatureOutfit(getCreatureSummons(params.cid)[1], {lookType = 436}, 800)
end

		doAreaCombatHealth(sumomdonego, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 110)
		end
		end
		end
		end

		local hitalvo = getCreatureTarget(cid)
		local function hit2(params)
		if isCreature(getCreatureSummons(params.cid)[1]) then
		if isCreature(getCreatureTarget(params.cid)) then
		if getCreatureTarget(params.cid) == params.hitalvo then
local outfitx = {lookType = 527}
if isInArray({"Elite Hitmonlee"}, getCreatureName(getCreatureSummons(params.cid)[1])) then
doSetCreatureOutfit(getCreatureSummons(params.cid)[1], outfitx, 800)
elseif isInArray({"Hitmonlee"}, getCreatureName(getCreatureSummons(params.cid)[1])) then
doSetCreatureOutfit(getCreatureSummons(params.cid)[1], lee, 800)
elseif isInArray({"Hitmontop"}, getCreatureName(getCreatureSummons(params.cid)[1])) then
doSetCreatureOutfit(getCreatureSummons(params.cid)[1], {lookType = 436}, 800)
end

		doAreaCombatHealth(sumomdonego, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 113)
		end
		end
		end
		end

		
		addEvent(hit, 380, {cid = cid, hitalvo = hitalvo})
		addEvent(hit2, 680, {cid = cid, hitalvo = hitalvo})
addEvent(hit, 980, {cid = cid, hitalvo = hitalvo})
		addEvent(hit2, 1180, {cid = cid, hitalvo = hitalvo})
	

		return 0
elseif pokemon.spell == "Triple Kick Lee" then


		

		local hitalvo = getCreatureTarget(cid)
		local function hit(params)
		if isCreature(getCreatureSummons(params.cid)[1]) then
		if isCreature(getCreatureTarget(params.cid)) then
		if getCreatureTarget(params.cid) == params.hitalvo then
local outfitx = {lookType = 527}
if isInArray({"Elite Hitmonlee"}, getCreatureName(getCreatureSummons(params.cid)[1])) then
doSetCreatureOutfit(getCreatureSummons(params.cid)[1], outfitx, 800)
elseif isInArray({"Hitmonlee"}, getCreatureName(getCreatureSummons(params.cid)[1])) then
doSetCreatureOutfit(getCreatureSummons(params.cid)[1], lee, 800)
elseif isInArray({"Hitmontop"}, getCreatureName(getCreatureSummons(params.cid)[1])) then
doSetCreatureOutfit(getCreatureSummons(params.cid)[1], {lookType = 436}, 800)
end
		doAreaCombatHealth(sumomdonego, element, getThingPos(getCreatureTarget(cid)), 0, 0, 0, 110)
		end
		end
		end
		end

local hitalvo = getCreatureTarget(cid)
		local function hit2(params)
		if isCreature(getCreatureSummons(params.cid)[1]) then
		if isCreature(getCreatureTarget(params.cid)) then
		if getCreatureTarget(params.cid) == params.hitalvo then


		doAreaCombatHealth(sumomdonego, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 113)
		end
		end
		end
		end



	

		
		addEvent(hit, 380, {cid = cid, hitalvo = hitalvo})
	addEvent(hit2, 480, {cid = cid, hitalvo = hitalvo})
	addEvent(hit2, 680, {cid = cid, hitalvo = hitalvo})
	addEvent(hit2, 780, {cid = cid, hitalvo = hitalvo})
	
	

		return 0
elseif pokemon.spell == "Triple Punch" then


		
		doAreaCombatHealth(sumomdonego, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 110)
		local hitalvo = getCreatureTarget(cid)
		local function hit(params)
		if isCreature(getCreatureSummons(params.cid)[1]) then
		if isCreature(getCreatureTarget(params.cid)) then
		if getCreatureTarget(params.cid) == params.hitalvo then
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, getThingPos(getCreatureTarget(params.cid)),0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 112)
		end
		end
		end
		end


		addEvent(hit, 380, {cid = cid, hitalvo = hitalvo})
		addEvent(hit, 680, {cid = cid, hitalvo = hitalvo})
	

		return 0
elseif pokemon.spell == "Punch-Machine" then


		
		
		local hitalvo = getCreatureTarget(cid)
		local function hit(params)
		if isCreature(getCreatureSummons(params.cid)[1]) then
		if isCreature(getCreatureTarget(params.cid)) then
		if getCreatureTarget(params.cid) == params.hitalvo then
doSendMagicEffect(getThingPos(getCreatureTarget(params.cid)), 224)

		end
		end
		end
		end
	local function hit2(params)
		if isCreature(getCreatureSummons(params.cid)[1]) then
		if isCreature(getCreatureTarget(params.cid)) then
		if getCreatureTarget(params.cid) == params.hitalvo then
		doAreaCombatHealth(sumomdonego, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 112)
		end
		end
		end
		end


		addEvent(hit, 500, {cid = cid, hitalvo = hitalvo})
		addEvent(hit2, 1000, {cid = cid, hitalvo = hitalvo})
addEvent(hit, 1500, {cid = cid, hitalvo = hitalvo})
		addEvent(hit2, 2000, {cid = cid, hitalvo = hitalvo})
addEvent(hit, 2500, {cid = cid, hitalvo = hitalvo})
		addEvent(hit2, 3000, {cid = cid, hitalvo = hitalvo})
addEvent(hit, 3500, {cid = cid, hitalvo = hitalvo})
		addEvent(hit2, 4000, {cid = cid, hitalvo = hitalvo})
addEvent(hit, 4500, {cid = cid, hitalvo = hitalvo})
		addEvent(hit2, 5000, {cid = cid, hitalvo = hitalvo})
addEvent(hit, 5500, {cid = cid, hitalvo = hitalvo})
		addEvent(hit2, 6000, {cid = cid, hitalvo = hitalvo})
	

		return 0
elseif pokemon.spell == "Karate Chop" then


		
		doAreaCombatHealth(sumomdonego, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 112)
	
		

	

		return 0

elseif pokemon.spell == "Bite" then


		
		doAreaCombatHealth(sumomdonego, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 146)
		return 0
elseif pokemon.spell == "Slash" then


		
		doAreaCombatHealth(sumomdonego, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 160)
		return 0
elseif pokemon.spell == "StickSlash" then


		
		doAreaCombatHealth(sumomdonego, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 212)
		return 0
elseif pokemon.spell == "Splash" then


		
		doSendMagicEffect(getThingPos(sumomdonego), 53)
doAreaCombatHealth(sumomdonego, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 53)
		return 0
elseif pokemon.spell == "Doubleslap" then


		
		local function slap(params)
					if isCreature(getCreatureSummons(params.cid)[1]) then
                        if isCreature(getCreatureTarget(params.cid)) then
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, getThingPos(getCreatureTarget(params.cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 3)
	end
end
		end
		addEvent(slap, 0, {cid = cid})
		addEvent(slap, 600, {cid = cid})
		return 0
elseif pokemon.spell == "Earth Punch" then


				local function slap(params)
					if isCreature(getCreatureSummons(params.cid)[1]) then
                        if isCreature(getCreatureTarget(params.cid)) then
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, getThingPos(getCreatureTarget(params.cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 112)
	end
end
		end
		addEvent(slap, 200, {cid = cid})
		doAreaCombatHealth(sumonado, element, getThingPos(getCreatureTarget(cid)), 0, 0, 0 ,161)
doSendMagicEffect(getThingPos(getCreatureTarget(cid)), 180)

		return 0
elseif pokemon.spell == "Mega Punch" then


				local function slap(params)
					if isCreature(getCreatureSummons(params.cid)[1]) then
                        if isCreature(getCreatureTarget(params.cid)) then
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, getThingPos(getCreatureTarget(params.cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 112)
	end
end
		end
		addEvent(slap, 200, {cid = cid})

doSendMagicEffect(getThingPos(getCreatureTarget(cid)), 180)

		return 0
elseif pokemon.spell == "Comet Punch" then


				local function slap(params)
					if isCreature(getCreatureSummons(params.cid)[1]) then
                        if isCreature(getCreatureTarget(params.cid)) then
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, getThingPos(getCreatureTarget(params.cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 112)
	end
end
		end
		addEvent(slap, 200, {cid = cid})
doSendMagicEffect(getThingPos(getCreatureTarget(cid)), 180)

		return 0
elseif pokemon.spell == "Toxic Spikes" then


		
doSendDistanceShoot(getThingPos(sumomdonego), getThingPos(getCreatureTarget(cid)), 15)
		doAreaCombatHealth(sumomdonego, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 114)
		return 0
elseif pokemon.spell == "Mega Kick" then


		
		doAreaCombatHealth(sumomdonego, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 112)
		local hitalvo = getCreatureTarget(cid)
		local function hit(params)
		if isCreature(getCreatureSummons(params.cid)[1]) then
		if isCreature(getCreatureTarget(params.cid)) then
		if getCreatureTarget(params.cid) == params.hitalvo then
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, getThingPos(getCreatureTarget(params.cid)),0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 112)
		end
		end
		end
		end


		addEvent(hit, 380, {cid = cid, hitalvo = hitalvo})
		addEvent(hit, 680, {cid = cid, hitalvo = hitalvo})
		return 0
elseif pokemon.spell == "Thunder Punch" then


		
doSendDistanceShoot(getThingPos(sumomdonego), getThingPos(getCreatureTarget(cid)), 40)
		doAreaCombatHealth(sumomdonego, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 11)
		return 0
elseif pokemon.spell == "Fire Punch" then



doSendMagicEffect(getThingPos(getCreatureTarget(cid)), 230)
		doAreaCombatHealth(sumomdonego, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 229)
		return 0

elseif pokemon.spell == "Thunder Fang" then


		
doSendMagicEffect(getThingPos(getCreatureTarget(cid)), 146)
doSendDistanceShoot(getThingPos(sumomdonego), getThingPos(getCreatureTarget(cid)), 40)
		doAreaCombatHealth(sumomdonego, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 11)
		return 0

elseif pokemon.spell == "Shadow Punch" then


		
doSendDistanceShoot(getThingPos(sumomdonego), getThingPos(getCreatureTarget(cid)), 18)
doAreaCombatHealth(sumomdonego, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 185)
		return 0
elseif pokemon.spell == "Scratch" then


		
		doAreaCombatHealth(sumomdonego, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 142)
	return 0
	elseif pokemon.spell == "Iron Tail" then


		
		doAreaCombatHealth(sumomdonego, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 160)
	return 0
	elseif pokemon.spell == "Confusion" then


		
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), confusionx, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 136)
  local d = getCreaturesInRange(getThingPos(sumomdonego), 2, 2, 1, 0)

                    
        for _,pid in pairs(d) do
if isSummon(pid) then
if getPlayerStorageValue(cid, 3333) >= 1 then
if getPlayerStorageValue(cid, 6333) == getCreatureMaster(pid) and getPlayerStorageValue(cid, 1333) >= 1 then
                    if getPlayerStorageValue(pid, 34) >= 1 then
setPlayerStorageValue(pid, 34, 0)
doSendMagicEffect(getThingPos(pid), 135)
doSendAnimatedText(getThingPos(pid), "REFLECT", 215)   
           
Confunso(sumomdonego)
else
Confunso(pid)
end
end
elseif  isPlayerInParty(getCreatureMaster(pid),cid) then 
                    if getPlayerStorageValue(pid, 34) >= 1 then
setPlayerStorageValue(pid, 34, 0)
doSendMagicEffect(getThingPos(pid), 135)
doSendAnimatedText(getThingPos(pid), "REFLECT", 215)   
           
Confunso(sumomdonego)
else
Confunso(pid)
end
end
elseif isMonster(pid) then
                    if getPlayerStorageValue(pid, 34) >= 1 then
setPlayerStorageValue(pid, 34, 0)
doSendMagicEffect(getThingPos(pid), 135)
doSendAnimatedText(getThingPos(pid), "REFLECT", 215)   
           
Confunso(sumomdonego)
else
Confunso(pid)
end

end
                        end

	return 0



elseif pokemon.spell == "Psy Target" then


		

setPlayerStorageValue(sumomdonego, 985, ((num1)+(lvpokemon*(num3))))
setPlayerStorageValue(sumomdonego, 986, ((num2)+(lvpokemon*(num3))))
movesx(sumomdonego,false,false,false,false)		
return 0
elseif pokemon.spell == "Dark Target" then


		
setPlayerStorageValue(sumomdonego, 985, ((num1)+(lvpokemon*(num3))))
setPlayerStorageValue(sumomdonego, 986, ((num2)+(lvpokemon*(num3))))
ghostmew(sumomdonego,false,false,false,false)
		
return 0
elseif pokemon.spell == "Psy beam" then
		if getCreatureLookDir(sumomdonego) == 0 then
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), bmn, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 108)
		elseif getCreatureLookDir(sumomdonego) == 2 then
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), bms, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 109)
		elseif getCreatureLookDir(sumomdonego) == 1 then
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), bme, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 107)
		elseif getCreatureLookDir(sumomdonego) == 3 then
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), bmw, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 106)
		end


		
		return 0
elseif pokemon.spell == "Aurora Beam" then
		if getCreatureLookDir(sumomdonego) == 0 then
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), bmn, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 108)
		elseif getCreatureLookDir(sumomdonego) == 2 then
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), bms, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 109)
		elseif getCreatureLookDir(sumomdonego) == 1 then
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), bme, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 107)
		elseif getCreatureLookDir(sumomdonego) == 3 then
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), bmw, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 106)
		end


		
		return 0

elseif pokemon.spell == "Psy Wave" then
		if getCreatureLookDir(sumomdonego) == 0 then
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), psywave, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 133)
		elseif getCreatureLookDir(sumomdonego) == 2 then
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), psywave2, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 133)
		elseif getCreatureLookDir(sumomdonego) == 1 then
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), psywave3, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 133)
		elseif getCreatureLookDir(sumomdonego) == 3 then
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), psywave4, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 133)
		end
	

		
		return 0
elseif pokemon.spell == "Fury Wave" then
		if getCreatureLookDir(sumomdonego) == 0 then
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), furywave, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 128)
		elseif getCreatureLookDir(sumomdonego) == 2 then
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), furywave2, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 131)
		elseif getCreatureLookDir(sumomdonego) == 1 then
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), furywave3, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 129)
		elseif getCreatureLookDir(sumomdonego) == 3 then
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), furywave4, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 130)
		end
	

		
		return 0
elseif pokemon.spell == "Hyper Voice" then
		if getCreatureLookDir(sumomdonego) == 0 then
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), psywave, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 22)
		elseif getCreatureLookDir(sumomdonego) == 2 then
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), psywave2, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 22)
		elseif getCreatureLookDir(sumomdonego) == 1 then
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), psywave3, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 22)
		elseif getCreatureLookDir(sumomdonego) == 3 then
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), psywave4, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 22)
		end


		
		return 0
elseif pokemon.spell == "Thunder Wave" then
		if getCreatureLookDir(sumomdonego) == 0 then
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), psywave, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 48)
		elseif getCreatureLookDir(sumomdonego) == 2 then
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), psywave2, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 48)
		elseif getCreatureLookDir(sumomdonego) == 1 then
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), psywave3, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 48)
		elseif getCreatureLookDir(sumomdonego) == 3 then
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), psywave4, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 48)
		end


		
		return 0

elseif pokemon.spell == "Squishy Licking" then
		if getCreatureLookDir(sumomdonego) == 0 then
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), psywave, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 145)
		elseif getCreatureLookDir(sumomdonego) == 2 then
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), psywave2, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 145)
		elseif getCreatureLookDir(sumomdonego) == 1 then
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), psywave3, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 145)
		elseif getCreatureLookDir(sumomdonego) == 3 then
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), psywave4, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 145)
		end


		
		return 0
elseif pokemon.spell == "Icy Wind" then
		if getCreatureLookDir(sumomdonego) == 0 then
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), psywave, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 41)
		elseif getCreatureLookDir(sumomdonego) == 2 then
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), psywave2, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 41)
		elseif getCreatureLookDir(sumomdonego) == 1 then
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), psywave3, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 41)
		elseif getCreatureLookDir(sumomdonego) == 3 then
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), psywave4, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 41)
		end


		
		return 0
	elseif pokemon.spell == "Psychic" then


		
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), psychic, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 251)
	return 0
	elseif pokemon.spell == "Thunder" then


		
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), Thunder, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 48)
	return 0
elseif pokemon.spell == "Pin Missile" then


		
		doSendDistanceShoot(getThingPos(sumomdonego), getThingPos(getCreatureTarget(cid)), 13)
		doAreaCombatHealth(sumomdonego, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 3)
		return 0
elseif pokemon.spell == "Thrash" then


		
		doSendDistanceShoot(getThingPos(sumomdonego), getThingPos(getCreatureTarget(cid)), 10)
local target = getCreatureTarget(cid)
local monsterpos = getCreatureLookDir(target)
local monstertp = getCreaturePosition(target)
local evasiontp = getCreaturePosition(sumomdonego)
if monsterpos == 0 then

monstertp.z = monstertp.z 
monstertp.x = monstertp.x
monstertp.y = monstertp.y+1
if isWalkable(monstertp,true,true,cid) then
doSendMagicEffect(evasiontp, 211)
doTeleportThing(sumomdonego,monstertp)
setPlayerStorageValue(target, 9,1)
	
 
end
elseif monsterpos == 2 then

monstertp.z = monstertp.z 
monstertp.x = monstertp.x
monstertp.y = monstertp.y-1
if isWalkable(monstertp,true,true,cid) then
doSendMagicEffect(evasiontp, 211)
doTeleportThing(sumomdonego,monstertp)
setPlayerStorageValue(target, 9,1)

 
end
elseif monsterpos == 1 then

monstertp.z = monstertp.z 
monstertp.x = monstertp.x-1
monstertp.y = monstertp.y
if isWalkable(monstertp,true,true,cid) then
doSendMagicEffect(evasiontp, 211)
doTeleportThing(sumomdonego,monstertp)
setPlayerStorageValue(target, 9,1)

 
end
elseif monsterpos == 3 then

monstertp.z = monstertp.z 
monstertp.x = monstertp.x+1
monstertp.y = monstertp.y
if isWalkable(monstertp,true,true,cid) then
doSendMagicEffect(evasiontp, 211)
doTeleportThing(sumomdonego,monstertp)
setPlayerStorageValue(target, 9,1)

 
end

end
		doAreaCombatHealth(sumomdonego, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 111)
		return 0
elseif pokemon.spell == "Night Shade" then

doSendMagicEffect(getCreaturePosition(sumomdonego), 246)	
		
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), psychic, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 186)
	return 0
	elseif pokemon.spell == "Absorb" then


		
		local life = getCreatureHealth(getCreatureTarget(cid))
		doAreaCombatHealth(sumomdonego, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 14)
		local newlife = life - getCreatureHealth(getCreatureTarget(cid))
		doSendMagicEffect(getThingPos(sumomdonego), 14)
		doCreatureAddHealth(sumomdonego, newlife)
		doSendAnimatedText(getThingPos(sumomdonego), "+"..newlife.."", 35)
	return 0
elseif pokemon.spell == "Leech Life" then


		
		local life = getCreatureHealth(getCreatureTarget(cid))
		doAreaCombatHealth(sumomdonego, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 14)
		local newlife = life - getCreatureHealth(getCreatureTarget(cid))
		doSendMagicEffect(getThingPos(sumomdonego), 14)
		doCreatureAddHealth(sumomdonego, newlife)
		doSendAnimatedText(getThingPos(sumomdonego), "+"..newlife.."", 35)
	return 0
	elseif pokemon.spell == "Super Vines" then


		

		doAreaCombatHealth(sumomdonego, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 213)

	return 0
	elseif pokemon.spell == "Mud Shot" then


		
local pid = getCreatureTarget(cid)
if isSummon(pid) then
if getPlayerStorageValue(cid, 3333) >= 1 then
if getPlayerStorageValue(cid, 6333) == getCreatureMaster(pid) and getPlayerStorageValue(cid, 1333) >= 1 then
                    if getPlayerStorageValue(pid, 34) >= 1 then
setPlayerStorageValue(pid, 34, 0)
doSendMagicEffect(getThingPos(pid), 135)
doSendAnimatedText(getThingPos(pid), "REFLECT", 215)   
           
Paralize(sumomdonego)
else
Paralize(pid)
end
end
elseif  isPlayerInParty(getCreatureMaster(pid),cid) then 
                    if getPlayerStorageValue(pid, 34) >= 1 then
setPlayerStorageValue(pid, 34, 0)
doSendMagicEffect(getThingPos(pid), 135)
doSendAnimatedText(getThingPos(pid), "REFLECT", 215)   
           
Paralize(sumomdonego)
else
Paralize(pid)
end
end
elseif isMonster(pid) then
                    if getPlayerStorageValue(pid, 34) >= 1 then
setPlayerStorageValue(pid, 34, 0)
doSendMagicEffect(getThingPos(pid), 135)
doSendAnimatedText(getThingPos(pid), "REFLECT", 215)   
           
Paralize(sumomdonego)
else
Paralize(pid)
end

end

		doSendDistanceShoot(getThingPos(sumomdonego), getThingPos(getCreatureTarget(cid)), 1)
		doAreaCombatHealth(sumomdonego, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 34)
	return 0

elseif pokemon.spell == "Mud Slap" then


		
local pid = getCreatureTarget(cid)
if isSummon(pid) then
if getPlayerStorageValue(cid, 3333) >= 1 then
if getPlayerStorageValue(cid, 6333) == getCreatureMaster(pid) and getPlayerStorageValue(cid, 1333) >= 1 then
                    if getPlayerStorageValue(pid, 34) >= 1 then
setPlayerStorageValue(pid, 34, 0)
doSendMagicEffect(getThingPos(pid), 135)
doSendAnimatedText(getThingPos(pid), "REFLECT", 215)   
           
Paralize(sumomdonego)
else
Paralize(pid)
end
end
elseif  isPlayerInParty(getCreatureMaster(pid),cid) then 
                    if getPlayerStorageValue(pid, 34) >= 1 then
setPlayerStorageValue(pid, 34, 0)
doSendMagicEffect(getThingPos(pid), 135)
doSendAnimatedText(getThingPos(pid), "REFLECT", 215)   
           
Paralize(sumomdonego)
else
Paralize(pid)
end
end
elseif isMonster(pid) then
                    if getPlayerStorageValue(pid, 34) >= 1 then
setPlayerStorageValue(pid, 34, 0)
doSendMagicEffect(getThingPos(pid), 135)
doSendAnimatedText(getThingPos(pid), "REFLECT", 215)   
           
Paralize(sumomdonego)
else
Paralize(pid)
end

end

		doSendDistanceShoot(getThingPos(sumomdonego), getThingPos(getCreatureTarget(cid)), 1)
		doAreaCombatHealth(sumomdonego, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 3)
	return 0

elseif pokemon.spell == "Lovey Kiss" then


local pid = getCreatureTarget(cid)
if isSummon(pid) then
if getPlayerStorageValue(cid, 3333) >= 1 then
if getPlayerStorageValue(cid, 6333) == getCreatureMaster(pid) and getPlayerStorageValue(cid, 1333) >= 1 then
                    if getPlayerStorageValue(pid, 34) >= 1 then
setPlayerStorageValue(pid, 34, 0)
doSendMagicEffect(getThingPos(pid), 135)
doSendAnimatedText(getThingPos(pid), "REFLECT", 215)   
           
Paralize(sumomdonego)
else
Paralize(pid)
end
end
elseif  isPlayerInParty(getCreatureMaster(pid),cid) then 
                    if getPlayerStorageValue(pid, 34) >= 1 then
setPlayerStorageValue(pid, 34, 0)
doSendMagicEffect(getThingPos(pid), 135)
doSendAnimatedText(getThingPos(pid), "REFLECT", 215)   
           
Paralize(sumomdonego)
else
Paralize(pid)
end
end
elseif isMonster(pid) then
                    if getPlayerStorageValue(pid, 34) >= 1 then
setPlayerStorageValue(pid, 34, 0)
doSendMagicEffect(getThingPos(pid), 135)
doSendAnimatedText(getThingPos(pid), "REFLECT", 215)   
           
Paralize(sumomdonego)
else
Paralize(pid)
end

end
                     	
		


		doSendDistanceShoot(getThingPos(sumomdonego), getThingPos(getCreatureTarget(cid)), 16)
		doAreaCombatHealth(sumomdonego, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 147)
	return 0

	elseif pokemon.spell == "Mud Bomb" then


		
		setPlayerStorageValue(getCreatureTarget(cid), 3, 1)
		local mudalvo = getCreatureTarget(cid)
	local function ver(params)
	if isCreature(params.mudalvo) then
	if getPlayerStorageValue(params.mudalvo, 3) >= 1 then
	setPlayerStorageValue(params.mudalvo, 3, -1)
	end
	end
	end
local function sleepxx(params)

if isMonster(params.mudalvo) then
doSendMagicEffect(getCreaturePosition(params.mudalvo), 34)
else
return True
end

end
Paralize(getCreatureTarget(cid))

    addEvent(sleepxx, 1000,{mudalvo = mudalvo})
addEvent(sleepxx, 2000,{mudalvo = mudalvo})
addEvent(sleepxx, 3000,{mudalvo = mudalvo})
addEvent(sleepxx, 4000,{mudalvo = mudalvo})
		addEvent(ver, 4500, {mudalvo = mudalvo})
		doSendDistanceShoot(getThingPos(sumomdonego), getThingPos(getCreatureTarget(cid)), 1)
doAreaCombatHealth(sumomdonego, element, getThingPos(getCreatureTarget(cid)), bomb, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 116)
	return 0	

elseif pokemon.spell == "Sludge" then


		
		setPlayerStorageValue(getCreatureTarget(cid), 3, 1)
		local mudalvo = getCreatureTarget(cid)
	local function ver(params)
	if isCreature(params.mudalvo) then
	if getPlayerStorageValue(params.mudalvo, 3) >= 1 then
	setPlayerStorageValue(params.mudalvo, 3, -1)
	end
	end
	end
local function sleepxx(params)

if isMonster(params.mudalvo) then
doSendMagicEffect(getCreaturePosition(params.mudalvo), 116)
else
return True
end

end

Paralize(getCreatureTarget(cid))


    addEvent(sleepxx, 1000,{mudalvo = mudalvo})
addEvent(sleepxx, 2000,{mudalvo = mudalvo})
addEvent(sleepxx, 3000,{mudalvo = mudalvo})
addEvent(sleepxx, 4000,{mudalvo = mudalvo})
		addEvent(ver, 4500, {mudalvo = mudalvo})
		doSendDistanceShoot(getThingPos(sumomdonego), getThingPos(getCreatureTarget(cid)), 1)
doAreaCombatHealth(sumomdonego, element, getThingPos(getCreatureTarget(cid)), bomb, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 116)
	return 0	
elseif pokemon.spell == "Bubbles" then


		
			local function throw(params)
						if isCreature(params.cid) then
                        if isCreature(getCreatureTarget(params.cid)) then
			doSendDistanceShoot(getThingPos(getCreatureSummons(params.cid)[1]), getThingPos(getCreatureTarget(params.cid)),2)
		end
end
			end
			local function damage(params)
						if isCreature(params.cid) then
                        if isCreature(getCreatureTarget(params.cid)) then
doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 68)
		end
end
			end
			local function damage2(params)
						if isCreature(params.cid) then
                        if isCreature(getCreatureTarget(params.cid)) then
doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 25)
	end
end
			end
		addEvent(damage, 100, {cid = cid})
		addEvent(damage2, 600, {cid = cid})
		addEvent(throw, 0, {cid = cid})
		addEvent(throw, 550, {cid = cid})
		return 0
elseif pokemon.spell == "Clamp" then


		
			local function throw(params)
						if isCreature(params.cid) then
                        if isCreature(getCreatureTarget(params.cid)) then
			doSendDistanceShoot(getThingPos(getCreatureSummons(params.cid)[1]), getThingPos(getCreatureTarget(params.cid)),2)
		end
end
			end
			local function damage(params)
						if isCreature(params.cid) then
                        if isCreature(getCreatureTarget(params.cid)) then
doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 1)
end
end
			end
			local function damage2(params)
						if isCreature(params.cid) then
                        if isCreature(getCreatureTarget(params.cid)) then
doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 25)
		end
end
			end
		addEvent(damage, 100, {cid = cid})
		addEvent(damage, 600, {cid = cid})
		addEvent(throw, 0, {cid = cid})
		addEvent(throw, 550, {cid = cid})
		return 0
elseif pokemon.spell == "Ice Shards" then


		
			local function throw(params)
						if isCreature(params.cid) then
                        if isCreature(getCreatureTarget(params.cid)) then
			doSendDistanceShoot(getThingPos(getCreatureSummons(params.cid)[1]), getThingPos(getCreatureTarget(params.cid)),28)
		end
end
			end
			local function damage(params)
						if isCreature(params.cid) then
                        if isCreature(getCreatureTarget(params.cid)) then
doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 41)
		end
end
			end
			local function damage2(params)
						if isCreature(params.cid) then
                        if isCreature(getCreatureTarget(params.cid)) then
doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 52)
		end
end
			end
		addEvent(damage, 100, {cid = cid})
		addEvent(damage2, 600, {cid = cid})
		addEvent(throw, 0, {cid = cid})
		addEvent(throw, 550, {cid = cid})
		return 0

elseif pokemon.spell == "Ice Punch" then


		
			local function throw(params)
						if isCreature(params.cid) then
                        if isCreature(getCreatureTarget(params.cid)) then
			doSendDistanceShoot(getThingPos(getCreatureSummons(params.cid)[1]), getThingPos(getCreatureTarget(params.cid)),28)
                  end
                   end
			end
			local function damage(params)
						if isCreature(params.cid) then
                        if isCreature(getCreatureTarget(params.cid)) then
doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 43)
		end
end
			end
	
		addEvent(damage, 100, {cid = cid})
	
		addEvent(throw, 0, {cid = cid})
		
		return 0
elseif pokemon.spell == "Aqua tail" then


		
			local function throw(params)
						if isCreature(params.cid) then
                        if isCreature(getCreatureTarget(params.cid)) then
			doSendDistanceShoot(getThingPos(getCreatureSummons(params.cid)[1]), getThingPos(getCreatureTarget(params.cid)), 2)
		end
                       end
			end
			local function damage(params)
						if isCreature(params.cid) then
                        if isCreature(getCreatureTarget(params.cid)) then
			doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 25)
		end
                     end
			end
		addEvent(throw, 0, {cid = cid})
		addEvent(damage, 0, {cid = cid})
	return 0

elseif pokemon.spell == "Dream Eather" then


		
			local function throw(params)
						if isCreature(params.cid) then
                        if isCreature(getCreatureTarget(params.cid)) then
			doSendDistanceShoot(getThingPos(getCreatureSummons(params.cid)[1]), getThingPos(getCreatureTarget(params.cid)), 18)
		end
                      end
			end
			local function damage(params)
						if isCreature(params.cid) then
                        if isCreature(getCreatureTarget(params.cid)) then
if getPlayerStorageValue(getCreatureTarget(params.cid), 8) >= 1 then
		local life = getCreatureHealth(getCreatureTarget(cid))
		doAreaCombatHealth(sumomdonego, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 138)
		local newlife = life - getCreatureHealth(getCreatureTarget(cid))
		doSendMagicEffect(getThingPos(sumomdonego), 14)
		doCreatureAddHealth(sumomdonego, newlife)
		doSendAnimatedText(getThingPos(sumomdonego), "+"..newlife.."", 35)
end
end
end
end
			
		addEvent(throw, 0, {cid = cid})
		addEvent(damage, 0, {cid = cid})
	return 0
elseif pokemon.spell == "Nightmare" then


		
			local function throw(params)
			if isCreature(params.cid) then
                        if isCreature(getCreatureTarget(params.cid)) then
			doSendDistanceShoot(getThingPos(getCreatureSummons(params.cid)[1]), getThingPos(getCreatureTarget(params.cid)), 18)
			end
end
			end
			local function damage(params)
			if isCreature(params.cid) then
                        if isCreature(getCreatureTarget(params.cid)) then
if getPlayerStorageValue(getCreatureTarget(params.cid), 8) >= 1 then

		doAreaCombatHealth(sumomdonego, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 138)


end
			end
			end
			end
		addEvent(throw, 0, {cid = cid})
		addEvent(damage, 0, {cid = cid})
	return 0
elseif pokemon.spell == "String Shot" then



		
		setPlayerStorageValue(getCreatureTarget(cid), 3, 1)
		local alvo = getCreatureTarget(cid)
		doSendDistanceShoot(getThingPos(sumomdonego), getThingPos(getCreatureTarget(cid)), 23)
		doAreaCombatHealth(sumomdonego, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 137)
		local function string(params)
		if isCreature(params.alvo) then
		if getPlayerStorageValue(params.alvo, 3) >= 1 then
		doSendMagicEffect(getThingPos(params.alvo), 137)
		end
		end
		end
		local function normalstr(params)
		if isCreature(params.alvo) then
		if getPlayerStorageValue(params.alvo, 3) >= 1 then
		setPlayerStorageValue(params.alvo, 3, -1)
		end
		end
		end
		addEvent(string, 250, {alvo = alvo})
		addEvent(string, 500, {alvo = alvo})
		addEvent(string, 750, {alvo = alvo})
		addEvent(string, 1000, {alvo = alvo})
		addEvent(string, 1250, {alvo = alvo})
		addEvent(string, 1500, {alvo = alvo})
		addEvent(string, 1750, {alvo = alvo})
		addEvent(string, 2000, {alvo = alvo})
		addEvent(string, 2250, {alvo = alvo})
		addEvent(string, 2500, {alvo = alvo})
		addEvent(string, 2750, {alvo = alvo})
		addEvent(string, 3000, {alvo = alvo})
		addEvent(normalstr, 3050, {alvo = alvo})
		return 0


elseif pokemon.spell == "Falling Rocks" then


		

sendstorm(sumomdonego,11,183,element,-((num1)+(lvpokemon*(num3))),-((num2)+(lvpokemon*(num3))))		


	return 0
elseif pokemon.spell == "Team Slice" then


		
	


if isInArray({"Shiny Scyther"}, getItemAttribute(item2.uid, "nome")) then		
sendstorm(sumomdonego,20,129,element,-((num1)+(lvpokemon*(num3))),-((num2)+(lvpokemon*(num3))))
else
sendstorm(sumomdonego,19,129,element,-((num1)+(lvpokemon*(num3))),-((num2)+(lvpokemon*(num3))))
end
	return 0

elseif pokemon.spell == "Pay Day" then


		
	
sendstorm(sumomdonego,6,9,element,-((num1)+(lvpokemon*(num3))),-((num2)+(lvpokemon*(num3))))		


	return 0
elseif pokemon.spell == "Metronome" then


		
	





	

local metronomerandom = math.random(1,6)

if metronomerandom == 1 then 	
sendstorm(sumomdonego,3,181,DRAGONDAMAGE,-((num1)+(lvpokemon*(num3))),-((num2)+(lvpokemon*(num3))))	
elseif metronomerandom == 2 then 
sendstorm(sumomdonego,18,140,GHOSTDAMAGE,-((num1)+(lvpokemon*(num3))),-((num2)+(lvpokemon*(num3))))		
elseif metronomerandom == 3 then 		
sendstorm(sumomdonego,2,53,WATERDAMAGE,-((num1)+(lvpokemon*(num3))),-((num2)+(lvpokemon*(num3))))
elseif metronomerandom == 4 then 		
sendstorm(sumomdonego,28,52,ICEDAMAGE,-((num1)+(lvpokemon*(num3))),-((num2)+(lvpokemon*(num3))))
elseif metronomerandom == 5 then 		
sendstorm(sumomdonego,11,44,ROCKDAMAGE,-((num1)+(lvpokemon*(num3))),-((num2)+(lvpokemon*(num3))))
elseif metronomerandom == 6 then 		
sendstorm(sumomdonego,40,11,ELECTRICDAMAGE,-((num1)+(lvpokemon*(num3))),-((num2)+(lvpokemon*(num3))))
end
	return 0
elseif pokemon.spell == "Electric Storm" then


		
	
	sendstorm(sumomdonego,40,48,element,-((num1)+(lvpokemon*(num3))),-((num2)+(lvpokemon*(num3))))	


	return 0
elseif pokemon.spell == "Blizzard" then


		
sendstorm(sumomdonego,28,52,element,-((num1)+(lvpokemon*(num3))),-((num2)+(lvpokemon*(num3))))

	return 0

elseif pokemon.spell == "Hydro Rain" then


		
sendstorm(sumomdonego,2,53,element,-((num1)+(lvpokemon*(num3))),-((num2)+(lvpokemon*(num3))))


	return 0
elseif pokemon.spell == "Bone Rain" then


sendstorm(sumomdonego,7,242,element,-((num1)+(lvpokemon*(num3))),-((num2)+(lvpokemon*(num3))))


	return 0

elseif pokemon.spell == "Sludge Rain" then


		
	
sendstorm(sumomdonego,38,254,element,-((num1)+(lvpokemon*(num3))),-((num2)+(lvpokemon*(num3))))


	return 0
elseif pokemon.spell == "Mortal Gas" then


		
	sendstorm(sumomdonego,23,114,element,-((num1)+(lvpokemon*(num3))),-((num2)+(lvpokemon*(num3))))


	return 0
elseif pokemon.spell == "Hydro Pump" then


		
		
	
		
	
	

					
		
	local function fall2(params)
		
		
		if isCreature(params.cid) then
	
	local pos1 = getThingPos(params.cid)

		pos1.x = pos1.x + 3
	local pos2 = getThingPos(params.cid)

		pos2.x = pos2.x - 3

	local pos3 = getThingPos(params.cid)

		pos3.x = pos3.x + 3
                pos3.y = pos3.y + 3
	local pos4 = getThingPos(params.cid)

		pos4.x = pos4.x + 3
                pos4.y = pos4.y - 3

	local pos5 = getThingPos(params.cid)

		pos5.y = pos5.y + 3
	local pos6 = getThingPos(params.cid)

		pos6.y = pos6.y - 3

	local pos7 = getThingPos(params.cid)

		pos7.x = pos7.x - 3
                pos7.y = pos7.y - 3
local pos8 = getThingPos(params.cid)

		pos8.x = pos8.x - 3
                pos8.y = pos8.y + 3




	doSendDistanceShoot(getThingPos(params.cid),pos1 , 2)
doSendDistanceShoot(getThingPos(params.cid),pos2 , 2)
doSendDistanceShoot(getThingPos(params.cid),pos3 , 2)
doSendDistanceShoot(getThingPos(params.cid),pos4 , 2)
doSendDistanceShoot(getThingPos(params.cid),pos5 , 2)
doSendDistanceShoot(getThingPos(params.cid),pos6 , 2)
doSendDistanceShoot(getThingPos(params.cid),pos7 , 2)
doSendDistanceShoot(getThingPos(params.cid),pos8 , 2)



		
					doAreaCombatHealth(params.cid, element, getThingPos(params.cid), pump2, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 53)
		end
		end

	local function fall3(params)
		
		
		if isCreature(params.cid) then
	
	local pos1 = getThingPos(params.cid)

		pos1.x = pos1.x + 1
	local pos2 = getThingPos(params.cid)

		pos2.x = pos2.x - 1

	local pos3 = getThingPos(params.cid)

		pos3.y = pos3.y + 1
               
	local pos4 = getThingPos(params.cid)

		pos3.y = pos3.y - 1

local pos5 = getThingPos(params.cid)

		pos5.x = pos5.x + 1
                pos5.y = pos5.y + 1 
	local pos6 = getThingPos(params.cid)

		pos6.x = pos6.x + 1
                pos6.y = pos6.y - 1 

	local pos7 = getThingPos(params.cid)

		pos7.x = pos7.x - 1
                pos7.y = pos7.y + 1 
               
	local pos8 = getThingPos(params.cid)

	        pos8.x = pos8.x - 1
                pos8.y = pos8.y - 1 






	doSendDistanceShoot(getThingPos(params.cid),pos1 , 2)
doSendDistanceShoot(getThingPos(params.cid),pos2 , 2)
doSendDistanceShoot(getThingPos(params.cid),pos3 , 2)
doSendDistanceShoot(getThingPos(params.cid),pos4 , 2)
doSendDistanceShoot(getThingPos(params.cid),pos5 , 2)
doSendDistanceShoot(getThingPos(params.cid),pos6 , 2)
doSendDistanceShoot(getThingPos(params.cid),pos7 , 2)
doSendDistanceShoot(getThingPos(params.cid),pos8 , 2)


doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), pump, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 53)
		
					
		end
		end


		
	
	

local sumonado = sumomdonego

addEvent(fall2, 300, {cid = sumonado})
addEvent(fall3, 0, {cid = sumonado})



	return 0

elseif pokemon.spell == "Mega Horn" then


		
	
	
	sendstorm(sumomdonego,25,29,element,-((num1)+(lvpokemon*(num3))),-((num2)+(lvpokemon*(num3))))

	return 0

elseif pokemon.spell == "Shadow Storm" then


		
	
	local sumonado = sumomdonego	


	sendstorm(sumomdonego,18,140,element,-((num1)+(lvpokemon*(num3))),-((num2)+(lvpokemon*(num3))))

	return 0
elseif pokemon.spell == "Magma Meteor" then


		

local sumonado = sumomdonego		
sendstorm(sumonado,3,181,element,-((num1)+(lvpokemon*(num3))),-((num2)+(lvpokemon*(num3))))


		
	return 0
elseif pokemon.spell == "Reflect" then



		
		doSendMagicEffect(getThingPos(sumomdonego), 135)
		setPlayerStorageValue(sumomdonego, 34, 1)
	return 0
elseif pokemon.spell == "Water Gun" then
	
		
		if getCreatureLookDir(sumomdonego) == 0 then
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wg1n,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 74)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wg2n,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 75)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wg3n,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 76)
		elseif getCreatureLookDir(sumomdonego) == 2 then
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wg1s, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 77)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wg2s, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 75)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wg3s,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 78)
		elseif getCreatureLookDir(sumomdonego) == 1 then
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wg1e, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 69)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wg2e, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 70)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wg3e,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 71)
		elseif getCreatureLookDir(sumomdonego) == 3 then
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wg1w,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 72)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wg2w, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 70)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wg3w,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 73)
		end
		

		
		return 0
elseif pokemon.spell == "Ground Chop" then
	
		
		if getCreatureLookDir(sumomdonego) == 0 then
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wg1n,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 111)
local function area1(params)
if isCreature(getCreatureSummons(params.cid)[1]) then
doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wg2n,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 111)
end
end
local function area2(params)
if isCreature(getCreatureSummons(params.cid)[1]) then
doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wg3n,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 111)
end
end
		addEvent(area1, 200,{cid = cid})
addEvent(area2, 300,{cid = cid})

		elseif getCreatureLookDir(sumomdonego) == 2 then
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wg1s, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 111)
		local function area1(params)
if isCreature(getCreatureSummons(params.cid)[1]) then
doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wg2s,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 111)
end
end
local function area2(params)
if isCreature(getCreatureSummons(params.cid)[1]) then
doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wg3s,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 111)
end
end
	addEvent(area1, 200,{cid = cid})
addEvent(area2, 300,{cid = cid})
		elseif getCreatureLookDir(sumomdonego) == 1 then
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wg1e, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 111)
local function area1(params)
if isCreature(getCreatureSummons(params.cid)[1]) then
doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wg2e,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 111)
end
end
local function area2(params)
if isCreature(getCreatureSummons(params.cid)[1]) then
doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wg3e,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 111)
end
end
	addEvent(area1, 200,{cid = cid})
addEvent(area2, 300,{cid = cid})
		elseif getCreatureLookDir(sumomdonego) == 3 then
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wg1w,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 111)
local function area1(params)
if isCreature(getCreatureSummons(params.cid)[1]) then
doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wg2w,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 111)
end
end
local function area2(params)
if isCreature(getCreatureSummons(params.cid)[1]) then
doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wg3w,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 111)
end
end
	addEvent(area1, 200,{cid = cid})
addEvent(area2, 300,{cid = cid})		


		end
		

		
		return 0
elseif pokemon.spell == "Poison Gun" then
	
		
		if getCreatureLookDir(sumomdonego) == 0 then
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wg1n,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 20)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wg2n,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 8)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wg3n,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 7)
		elseif getCreatureLookDir(sumomdonego) == 2 then
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wg1s, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 20)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wg2s, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 8)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wg3s,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 7)
		elseif getCreatureLookDir(sumomdonego) == 1 then
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wg1e, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 20)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wg2e, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 7)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wg3e,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 8)
		elseif getCreatureLookDir(sumomdonego) == 3 then
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wg1w,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))),  20)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wg2w, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 7)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wg3w,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))),  8)
		end
		

		
		return 0
elseif pokemon.spell == "Toxic" then
	
		
		if getCreatureLookDir(sumomdonego) == 0 then
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wg1n,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 114)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wg2n,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 20)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wg3n,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 114)
		elseif getCreatureLookDir(sumomdonego) == 2 then
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wg1s, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 114)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wg2s, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 20)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wg3s,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 114)
		elseif getCreatureLookDir(sumomdonego) == 1 then
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wg1e, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 114)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wg2e, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 20)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wg3e,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 114)
		elseif getCreatureLookDir(sumomdonego) == 3 then
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wg1w,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))),  114)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wg2w, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 20)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wg3w,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))),  114)
		end
		

		
		return 0
	elseif pokemon.spell == "Water Spout" then


		
		doSendDistanceShoot(getThingPos(sumomdonego), {x=getThingPos(sumomdonego).x, y=getThingPos(sumomdonego).y-5, z=getThingPos(sumomdonego).z}, 2)
		local function spout(params)
		if isCreature(getCreatureSummons(params.cid)[1]) then
		for x = -2,2 do
			for y = -2,2 do
		local newpos = getThingPos(getCreatureSummons(params.cid)[1])
		newpos.x = newpos.x+x
		newpos.y = newpos.y+y
		doSendDistanceShoot({x=getThingPos(getCreatureSummons(params.cid)[1]).x, y=getThingPos(getCreatureSummons(params.cid)[1]).y-5, z=getThingPos(getCreatureSummons(params.cid)[1]).z}, newpos, 2)
		end
		end
		end
		end
		
		local function spdmg(params)
		if isCreature(getCreatureSummons(params.cid)[1]) then
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, getThingPos(getCreatureSummons(params.cid)[1]), waterspout, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 68)
		end
		end

		addEvent(spout, 300, {cid = cid})
		addEvent(spdmg, 450, {cid = cid})
	return 0

elseif pokemon.spell == "Fire Blast" then



		
		posit = getThingPos(sumomdonego)
		local function gust(params)
		if #getCreatureSummons(params.cid) >= 1 then
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], null, params.ar, sand1, 0, 0, params.eee)
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, params.ar, whirl3, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 35)

		
		end
		end
		local posicao = getThingPos(sumomdonego)
		if getCreatureLookDir(sumomdonego) == 0 then
		addEvent(gust, 0, {cid = cid, eee = 60, ar = {x=posicao.x, y=posicao.y-1, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 60, ar = {x=posicao.x, y=posicao.y-2, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-1, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 60, ar = {x=posicao.x, y=posicao.y-3, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-2, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 60, ar = {x=posicao.x, y=posicao.y-4, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-3, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 60, ar = {x=posicao.x, y=posicao.y-5, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-4, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 60, ar = {x=posicao.x, y=posicao.y-6, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-5, z=posicao.z}})
		elseif getCreatureLookDir(sumomdonego) == 2 then
		addEvent(gust, 0, {cid = cid, eee = 62, ar = {x=posicao.x, y=posicao.y+1, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 62, ar = {x=posicao.x, y=posicao.y+2, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+1, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 62, ar = {x=posicao.x, y=posicao.y+3, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+2, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 62, ar = {x=posicao.x, y=posicao.y+4, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+3, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 62, ar = {x=posicao.x, y=posicao.y+5, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+4, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 62, ar = {x=posicao.x, y=posicao.y+6, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+5, z=posicao.z}})
		elseif getCreatureLookDir(sumomdonego) == 1 then
		addEvent(gust, 0, {cid = cid, eee = 61, ar = {x=posicao.x+1, y=posicao.y, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 61, ar = {x=posicao.x+2, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+1, y=posicao.y, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 61, ar = {x=posicao.x+3, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+2, y=posicao.y, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 61, ar = {x=posicao.x+4, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+3, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 61, ar = {x=posicao.x+5, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+4, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 61, ar = {x=posicao.x+6, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+5, y=posicao.y, z=posicao.z}})
		elseif getCreatureLookDir(sumomdonego) == 3 then
		addEvent(gust, 0, {cid = cid, eee = 63, ar = {x=posicao.x-1, y=posicao.y, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 63, ar = {x=posicao.x-2, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-1, y=posicao.y, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 63, ar = {x=posicao.x-3, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-2, y=posicao.y, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 63, ar = {x=posicao.x-4, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-3, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 63, ar = {x=posicao.x-5, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-4, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 63, ar = {x=posicao.x-6, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-5, y=posicao.y, z=posicao.z}})
		end
		return 0

elseif pokemon.spell == "Swagger" then

doSendMagicEffect(getThingPos(sumomdonego), 14)

		
	
	
			local function roll(params)
		if isCreature(params.cid) then
		
doSendMagicEffect(getThingPos(params.cid), 14)
if  isCreature(getCreatureTarget(params.cid)) then
	if getDistanceBetween(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid))) == 1 then
	doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(params.cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)
			end

end

			
			end
			end

	local sumonado = sumomdonego	
		for r = 1, 10 do
		addEvent(roll, 800*r, {cid = sumonado})

		end





		
		posit = getThingPos(sumomdonego)
		local function gust(params)
		if #getCreatureSummons(params.cid) >= 1 then
doAreaCombatCondition(getCreatureSummons(params.cid)[1], params.ar, whirl3, tonto, 31)
		--doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, params.ar, whirl3, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 31)

		
		end
		end
		local posicao = getThingPos(sumomdonego)
		if getCreatureLookDir(sumomdonego) == 0 then
		addEvent(gust, 0, {cid = cid, eee = 60, ar = {x=posicao.x, y=posicao.y-1, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 60, ar = {x=posicao.x, y=posicao.y-2, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-1, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 60, ar = {x=posicao.x, y=posicao.y-3, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-2, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 60, ar = {x=posicao.x, y=posicao.y-4, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-3, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 60, ar = {x=posicao.x, y=posicao.y-5, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-4, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 60, ar = {x=posicao.x, y=posicao.y-6, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-5, z=posicao.z}})
		elseif getCreatureLookDir(sumomdonego) == 2 then
		addEvent(gust, 0, {cid = cid, eee = 62, ar = {x=posicao.x, y=posicao.y+1, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 62, ar = {x=posicao.x, y=posicao.y+2, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+1, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 62, ar = {x=posicao.x, y=posicao.y+3, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+2, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 62, ar = {x=posicao.x, y=posicao.y+4, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+3, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 62, ar = {x=posicao.x, y=posicao.y+5, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+4, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 62, ar = {x=posicao.x, y=posicao.y+6, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+5, z=posicao.z}})
		elseif getCreatureLookDir(sumomdonego) == 1 then
		addEvent(gust, 0, {cid = cid, eee = 61, ar = {x=posicao.x+1, y=posicao.y, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 61, ar = {x=posicao.x+2, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+1, y=posicao.y, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 61, ar = {x=posicao.x+3, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+2, y=posicao.y, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 61, ar = {x=posicao.x+4, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+3, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 61, ar = {x=posicao.x+5, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+4, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 61, ar = {x=posicao.x+6, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+5, y=posicao.y, z=posicao.z}})
		elseif getCreatureLookDir(sumomdonego) == 3 then
		addEvent(gust, 0, {cid = cid, eee = 63, ar = {x=posicao.x-1, y=posicao.y, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 63, ar = {x=posicao.x-2, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-1, y=posicao.y, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 63, ar = {x=posicao.x-3, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-2, y=posicao.y, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 63, ar = {x=posicao.x-4, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-3, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 63, ar = {x=posicao.x-5, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-4, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 63, ar = {x=posicao.x-6, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-5, y=posicao.y, z=posicao.z}})
		end
		return 0


elseif pokemon.spell == "Ancient Power" then



		
		posit = getThingPos(sumomdonego)
		local function gust(params)
		if #getCreatureSummons(params.cid) >= 1 then

		doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, params.ar, whirl3, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 18)

		
		end
		end
		local posicao = getThingPos(sumomdonego)
		if getCreatureLookDir(sumomdonego) == 0 then
		addEvent(gust, 0, {cid = cid, eee = 60, ar = {x=posicao.x, y=posicao.y-1, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 60, ar = {x=posicao.x, y=posicao.y-2, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-1, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 60, ar = {x=posicao.x, y=posicao.y-3, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-2, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 60, ar = {x=posicao.x, y=posicao.y-4, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-3, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 60, ar = {x=posicao.x, y=posicao.y-5, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-4, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 60, ar = {x=posicao.x, y=posicao.y-6, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-5, z=posicao.z}})
		elseif getCreatureLookDir(sumomdonego) == 2 then
		addEvent(gust, 0, {cid = cid, eee = 62, ar = {x=posicao.x, y=posicao.y+1, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 62, ar = {x=posicao.x, y=posicao.y+2, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+1, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 62, ar = {x=posicao.x, y=posicao.y+3, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+2, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 62, ar = {x=posicao.x, y=posicao.y+4, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+3, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 62, ar = {x=posicao.x, y=posicao.y+5, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+4, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 62, ar = {x=posicao.x, y=posicao.y+6, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+5, z=posicao.z}})
		elseif getCreatureLookDir(sumomdonego) == 1 then
		addEvent(gust, 0, {cid = cid, eee = 61, ar = {x=posicao.x+1, y=posicao.y, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 61, ar = {x=posicao.x+2, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+1, y=posicao.y, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 61, ar = {x=posicao.x+3, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+2, y=posicao.y, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 61, ar = {x=posicao.x+4, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+3, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 61, ar = {x=posicao.x+5, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+4, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 61, ar = {x=posicao.x+6, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+5, y=posicao.y, z=posicao.z}})
		elseif getCreatureLookDir(sumomdonego) == 3 then
		addEvent(gust, 0, {cid = cid, eee = 63, ar = {x=posicao.x-1, y=posicao.y, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 63, ar = {x=posicao.x-2, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-1, y=posicao.y, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 63, ar = {x=posicao.x-3, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-2, y=posicao.y, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 63, ar = {x=posicao.x-4, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-3, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 63, ar = {x=posicao.x-5, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-4, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 63, ar = {x=posicao.x-6, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-5, y=posicao.y, z=posicao.z}})
		end
		return 0
elseif pokemon.spell == "Stickmerang" then



		
		
	local function area1(params)	
if isCreature(params.cid) then
doAreaCombatHealth(params.cid, element, getThingPos(params.cid), params.arr,  -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 212) 
end
end
local sumonado = sumomdonego

		if getCreatureLookDir(sumomdonego) == 0 then
addEvent(area1,100,{cid = sumonado,arr = Stick04})
addEvent(area1,400,{cid = sumonado,arr = Stick04a})
addEvent(area1,800,{cid = sumonado,arr = Stick04b})
addEvent(area1,1200,{cid = sumonado,arr = Stick04c})
addEvent(area1,1600,{cid = sumonado,arr = Stick04d})
addEvent(area1,2000,{cid = sumonado,arr = Stick04e})

		elseif getCreatureLookDir(sumomdonego) == 2 then
addEvent(area1,100,{cid = sumonado,arr = Stick01})
addEvent(area1,400,{cid = sumonado,arr = Stick01a})
addEvent(area1,800,{cid = sumonado,arr = Stick01b})
addEvent(area1,1200,{cid = sumonado,arr = Stick01c})
addEvent(area1,1600,{cid = sumonado,arr = Stick01d})
addEvent(area1,2000,{cid = sumonado,arr = Stick01e})
		elseif getCreatureLookDir(sumomdonego) == 1 then
addEvent(area1,100,{cid = sumonado,arr = Stick03})
addEvent(area1,400,{cid = sumonado,arr = Stick03a})
addEvent(area1,800,{cid = sumonado,arr = Stick03b})
addEvent(area1,1200,{cid = sumonado,arr = Stick03c})
addEvent(area1,1600,{cid = sumonado,arr = Stick03d})
addEvent(area1,2000,{cid = sumonado,arr = Stick03e})
		
		elseif getCreatureLookDir(sumomdonego) == 3 then
addEvent(area1,100,{cid = sumonado,arr = Stick02})
addEvent(area1,400,{cid = sumonado,arr = Stick02a})
addEvent(area1,800,{cid = sumonado,arr = Stick02b})
addEvent(area1,1200,{cid = sumonado,arr = Stick02c})
addEvent(area1,1600,{cid = sumonado,arr = Stick02d})
addEvent(area1,2000,{cid = sumonado,arr = Stick02e})	
		end
		return 0
elseif pokemon.spell == "Bonemerang" then



		
		
	local function area1(params)	
if isCreature(params.cid) then
doAreaCombatHealth(params.cid, element, getThingPos(params.cid), params.arr,  -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 117) 
end
end
local sumonado = sumomdonego

		if getCreatureLookDir(sumomdonego) == 0 then
addEvent(area1,100,{cid = sumonado,arr = Stick04})
addEvent(area1,400,{cid = sumonado,arr = Stick04a})
addEvent(area1,800,{cid = sumonado,arr = Stick04b})
addEvent(area1,1200,{cid = sumonado,arr = Stick04c})
addEvent(area1,1600,{cid = sumonado,arr = Stick04d})
addEvent(area1,2000,{cid = sumonado,arr = Stick04e})

		elseif getCreatureLookDir(sumomdonego) == 2 then
addEvent(area1,100,{cid = sumonado,arr = Stick01})
addEvent(area1,400,{cid = sumonado,arr = Stick01a})
addEvent(area1,800,{cid = sumonado,arr = Stick01b})
addEvent(area1,1200,{cid = sumonado,arr = Stick01c})
addEvent(area1,1600,{cid = sumonado,arr = Stick01d})
addEvent(area1,2000,{cid = sumonado,arr = Stick01e})
		elseif getCreatureLookDir(sumomdonego) == 1 then
addEvent(area1,100,{cid = sumonado,arr = Stick03})
addEvent(area1,400,{cid = sumonado,arr = Stick03a})
addEvent(area1,800,{cid = sumonado,arr = Stick03b})
addEvent(area1,1200,{cid = sumonado,arr = Stick03c})
addEvent(area1,1600,{cid = sumonado,arr = Stick03d})
addEvent(area1,2000,{cid = sumonado,arr = Stick03e})
		
		elseif getCreatureLookDir(sumomdonego) == 3 then
addEvent(area1,100,{cid = sumonado,arr = Stick02})
addEvent(area1,400,{cid = sumonado,arr = Stick02a})
addEvent(area1,800,{cid = sumonado,arr = Stick02b})
addEvent(area1,1200,{cid = sumonado,arr = Stick02c})
addEvent(area1,1600,{cid = sumonado,arr = Stick02d})
addEvent(area1,2000,{cid = sumonado,arr = Stick02e})	
		end
		return 0
elseif pokemon.spell == "Fist Machine" then



		
		posit = getThingPos(sumomdonego)
		local function gust(params)
		if #getCreatureSummons(params.cid) >= 1 then
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], null, params.ar, sand1, 0, 0, params.eee)
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, params.ar, whirl3, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 112)

		else
		end
		end
		local posicao = getThingPos(sumomdonego)
		if getCreatureLookDir(sumomdonego) == 0 then
		addEvent(gust, 0, {cid = cid, eee = 217, ar = {x=posicao.x, y=posicao.y-1, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 217, ar = {x=posicao.x, y=posicao.y-2, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-1, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 217, ar = {x=posicao.x, y=posicao.y-3, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-2, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 217, ar = {x=posicao.x, y=posicao.y-4, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-3, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 217, ar = {x=posicao.x, y=posicao.y-5, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-4, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 217, ar = {x=posicao.x, y=posicao.y-6, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-5, z=posicao.z}})
		elseif getCreatureLookDir(sumomdonego) == 2 then
		addEvent(gust, 0, {cid = cid, eee = 218, ar = {x=posicao.x, y=posicao.y+1, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 218, ar = {x=posicao.x, y=posicao.y+2, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+1, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 218, ar = {x=posicao.x, y=posicao.y+3, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+2, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 218, ar = {x=posicao.x, y=posicao.y+4, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+3, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 218, ar = {x=posicao.x, y=posicao.y+5, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+4, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 218, ar = {x=posicao.x, y=posicao.y+6, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+5, z=posicao.z}})
		elseif getCreatureLookDir(sumomdonego) == 1 then
		addEvent(gust, 0, {cid = cid, eee = 215, ar = {x=posicao.x+1, y=posicao.y, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 215, ar = {x=posicao.x+2, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+1, y=posicao.y, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 215, ar = {x=posicao.x+3, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+2, y=posicao.y, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 215, ar = {x=posicao.x+4, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+3, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 215, ar = {x=posicao.x+5, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+4, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 215, ar = {x=posicao.x+6, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+5, y=posicao.y, z=posicao.z}})
		elseif getCreatureLookDir(sumomdonego) == 3 then
		addEvent(gust, 0, {cid = cid, eee = 216, ar = {x=posicao.x-1, y=posicao.y, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 216, ar = {x=posicao.x-2, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-1, y=posicao.y, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 216, ar = {x=posicao.x-3, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-2, y=posicao.y, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 216, ar = {x=posicao.x-4, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-3, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 216, ar = {x=posicao.x-5, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-4, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 216, ar = {x=posicao.x-6, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-5, y=posicao.y, z=posicao.z}})
		end
		return 0


elseif pokemon.spell == "Destroyer Hand" then



		
		posit = getThingPos(sumomdonego)
		local function gust(params)
		if #getCreatureSummons(params.cid) >= 1 then
doSendDistanceShoot(getThingPos(getCreatureSummons(params.cid)[1]),params.ar,26)

		doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, params.ar, champ, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)

		else
		end
		end
		local posicao = getThingPos(sumomdonego)
			if getCreatureLookDir(sumomdonego) == 0 then
		addEvent(gust, 0, {cid = cid, eee = 217, ar = {x=posicao.x, y=posicao.y-1, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 217, ar = {x=posicao.x, y=posicao.y-2, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-1, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 217, ar = {x=posicao.x, y=posicao.y-3, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-2, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 217, ar = {x=posicao.x, y=posicao.y-4, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-3, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 217, ar = {x=posicao.x, y=posicao.y-5, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-4, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 217, ar = {x=posicao.x, y=posicao.y-6, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-5, z=posicao.z}})
		elseif getCreatureLookDir(sumomdonego) == 2 then
		addEvent(gust, 0, {cid = cid, eee = 218, ar = {x=posicao.x, y=posicao.y+1, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 218, ar = {x=posicao.x, y=posicao.y+2, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+1, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 218, ar = {x=posicao.x, y=posicao.y+3, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+2, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 218, ar = {x=posicao.x, y=posicao.y+4, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+3, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 218, ar = {x=posicao.x, y=posicao.y+5, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+4, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 218, ar = {x=posicao.x, y=posicao.y+6, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+5, z=posicao.z}})
		elseif getCreatureLookDir(sumomdonego) == 1 then
		addEvent(gust, 0, {cid = cid, eee = 215, ar = {x=posicao.x+1, y=posicao.y, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 215, ar = {x=posicao.x+2, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+1, y=posicao.y, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 215, ar = {x=posicao.x+3, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+2, y=posicao.y, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 215, ar = {x=posicao.x+4, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+3, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 215, ar = {x=posicao.x+5, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+4, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 215, ar = {x=posicao.x+6, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+5, y=posicao.y, z=posicao.z}})
		elseif getCreatureLookDir(sumomdonego) == 3 then
		addEvent(gust, 0, {cid = cid, eee = 216, ar = {x=posicao.x-1, y=posicao.y, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 216, ar = {x=posicao.x-2, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-1, y=posicao.y, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 216, ar = {x=posicao.x-3, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-2, y=posicao.y, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 216, ar = {x=posicao.x-4, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-3, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 216, ar = {x=posicao.x-5, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-4, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 216, ar = {x=posicao.x-6, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-5, y=posicao.y, z=posicao.z}})
		end
		return 0
elseif pokemon.spell == "Gust" then



		
		posit = getThingPos(sumomdonego)
		local function gust(params)
		if #getCreatureSummons(params.cid) >= 1 then
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], null, params.ar, sand1, 0, 0, params.eee)
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, params.ar, whirl3, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 42)

		else
		end
		end
		local posicao = getThingPos(sumomdonego)
		if getCreatureLookDir(sumomdonego) == 0 then
		addEvent(gust, 0, {cid = cid, eee = 42, ar = {x=posicao.x, y=posicao.y-1, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 42, ar = {x=posicao.x, y=posicao.y-2, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-1, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 42, ar = {x=posicao.x, y=posicao.y-3, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-2, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 42, ar = {x=posicao.x, y=posicao.y-4, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-3, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 42, ar = {x=posicao.x, y=posicao.y-5, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-4, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 42, ar = {x=posicao.x, y=posicao.y-6, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-5, z=posicao.z}})
		elseif getCreatureLookDir(sumomdonego) == 2 then
		addEvent(gust, 0, {cid = cid, eee = 42, ar = {x=posicao.x, y=posicao.y+1, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 42, ar = {x=posicao.x, y=posicao.y+2, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+1, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 42, ar = {x=posicao.x, y=posicao.y+3, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+2, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 42, ar = {x=posicao.x, y=posicao.y+4, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+3, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 42, ar = {x=posicao.x, y=posicao.y+5, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+4, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 42, ar = {x=posicao.x, y=posicao.y+6, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+5, z=posicao.z}})
		elseif getCreatureLookDir(sumomdonego) == 1 then
		addEvent(gust, 0, {cid = cid, eee = 42, ar = {x=posicao.x+1, y=posicao.y, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 42, ar = {x=posicao.x+2, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+1, y=posicao.y, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 42, ar = {x=posicao.x+3, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+2, y=posicao.y, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 42, ar = {x=posicao.x+4, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+3, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 42, ar = {x=posicao.x+5, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+4, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 42, ar = {x=posicao.x+6, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+5, y=posicao.y, z=posicao.z}})
		elseif getCreatureLookDir(sumomdonego) == 3 then
		addEvent(gust, 0, {cid = cid, eee = 42, ar = {x=posicao.x-1, y=posicao.y, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 42, ar = {x=posicao.x-2, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-1, y=posicao.y, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 42, ar = {x=posicao.x-3, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-2, y=posicao.y, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 42, ar = {x=posicao.x-4, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-3, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 42, ar = {x=posicao.x-5, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-4, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 42, ar = {x=posicao.x-6, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-5, y=posicao.y, z=posicao.z}})
		end
		return 0
elseif pokemon.spell == "Spark" then
		


		
				local function spark(params)
				if isCreature(params.cid) then
				if isCreature(getCreatureSummons(params.cid)[1]) then
				doSendDistanceShoot(getThingPos(getCreatureSummons(params.cid)[1]), params.cidpos, 40)
				doAreaCombatHealth(sumomdonego, element, params.cidpos, 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 48)
				end
				end
				end
		for a = -1, 1 do
			for b = -1, 1 do
			cidpos = getThingPos(sumomdonego)
			cidpos.x = cidpos.x+a
			cidpos.y = cidpos.y+b
			addEvent(spark, math.abs(a)*350 + math.abs(b)*650, {cid = cid, cidpos = cidpos})
			end
		end		
		return 0
elseif pokemon.spell == "Thunder Spoof" then
		


		
				local function spark(params)
				if isCreature(params.cid) then
				if isCreature(getCreatureSummons(params.cid)[1]) then
				doSendDistanceShoot(getThingPos(getCreatureSummons(params.cid)[1]), params.cidpos, 40)
				doAreaCombatHealth(sumomdonego, element, params.cidpos, 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 48)
				end
				end
				end
		for a = -5, 5 do
			for b = -5, 5 do
			cidpos = getThingPos(sumomdonego)
			cidpos.x = cidpos.x+a
			cidpos.y = cidpos.y+b
			addEvent(spark, math.abs(a)*350 + math.abs(b)*650, {cid = cid, cidpos = cidpos})
			end
		end		
		return 0
elseif pokemon.spell == "Power Gem" then
		


		
				local function spark(params)
				if isCreature(params.cid) then
				if isCreature(getCreatureSummons(params.cid)[1]) then
				doSendDistanceShoot(getThingPos(getCreatureSummons(params.cid)[1]), params.cidpos, 11)
				doAreaCombatHealth(sumomdonego, element, params.cidpos, 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 118)
				end
				end
				end
		for a = -5, 5 do
			for b = -5, 5 do
			cidpos = getThingPos(sumomdonego)
			cidpos.x = cidpos.x+a
			cidpos.y = cidpos.y+b
			addEvent(spark, math.abs(a)*350 + math.abs(b)*650, {cid = cid, cidpos = cidpos})
			end
		end		
		return 0
elseif pokemon.spell == "Stick Wave" then



		
		posit = getThingPos(sumomdonego)
		local function gust(params)
		if #getCreatureSummons(params.cid) >= 1 then
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], null, params.ar, sand1, 0, 0, params.eee)
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, params.ar, whirl3, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 3)

		else
		end
		end
		local posicao = getThingPos(sumomdonego)
		if getCreatureLookDir(sumomdonego) == 0 then
		addEvent(gust, 0, {cid = cid, eee = 212, ar = {x=posicao.x, y=posicao.y-1, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 212, ar = {x=posicao.x, y=posicao.y-2, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-1, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 212, ar = {x=posicao.x, y=posicao.y-3, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-2, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 212, ar = {x=posicao.x, y=posicao.y-4, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-3, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 212, ar = {x=posicao.x, y=posicao.y-5, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-4, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 212, ar = {x=posicao.x, y=posicao.y-6, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-5, z=posicao.z}})
		elseif getCreatureLookDir(sumomdonego) == 2 then
		addEvent(gust, 0, {cid = cid, eee = 212, ar = {x=posicao.x, y=posicao.y+1, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 212, ar = {x=posicao.x, y=posicao.y+2, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+1, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 212, ar = {x=posicao.x, y=posicao.y+3, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+2, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 212, ar = {x=posicao.x, y=posicao.y+4, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+3, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 212, ar = {x=posicao.x, y=posicao.y+5, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+4, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 212, ar = {x=posicao.x, y=posicao.y+6, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+5, z=posicao.z}})
		elseif getCreatureLookDir(sumomdonego) == 1 then
		addEvent(gust, 0, {cid = cid, eee = 212, ar = {x=posicao.x+1, y=posicao.y, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 212, ar = {x=posicao.x+2, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+1, y=posicao.y, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 212, ar = {x=posicao.x+3, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+2, y=posicao.y, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 212, ar = {x=posicao.x+4, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+3, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 212, ar = {x=posicao.x+5, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+4, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 212, ar = {x=posicao.x+6, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+5, y=posicao.y, z=posicao.z}})
		elseif getCreatureLookDir(sumomdonego) == 3 then
		addEvent(gust, 0, {cid = cid, eee = 212, ar = {x=posicao.x-1, y=posicao.y, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 212, ar = {x=posicao.x-2, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-1, y=posicao.y, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 212, ar = {x=posicao.x-3, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-2, y=posicao.y, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 212, ar = {x=posicao.x-4, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-3, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 212, ar = {x=posicao.x-5, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-4, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 212, ar = {x=posicao.x-6, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-5, y=posicao.y, z=posicao.z}})
		end
		return 0
elseif pokemon.spell == "Hydro Cannon" then
		

		
		posit = getThingPos(sumomdonego)
		local function gust(params)
		if #getCreatureSummons(params.cid) >= 1 then
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, params.ar, sand1, 0, 0, params.eee)
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, params.ar, whirl3,  -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 68)
		else
		end
		end
		local posicao = getThingPos(sumomdonego)
		if getCreatureLookDir(sumomdonego) == 0 then
		addEvent(gust, 0, {cid = cid, eee = 64, ar = {x=posicao.x, y=posicao.y-1, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 64, ar = {x=posicao.x, y=posicao.y-2, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-1, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 64, ar = {x=posicao.x, y=posicao.y-3, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-2, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 64, ar = {x=posicao.x, y=posicao.y-4, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-3, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 64, ar = {x=posicao.x, y=posicao.y-5, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-4, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 64, ar = {x=posicao.x, y=posicao.y-6, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-5, z=posicao.z}})
		elseif getCreatureLookDir(sumomdonego) == 2 then
		addEvent(gust, 0, {cid = cid, eee = 66, ar = {x=posicao.x, y=posicao.y+1, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 66, ar = {x=posicao.x, y=posicao.y+2, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+1, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 66, ar = {x=posicao.x, y=posicao.y+3, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+2, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 66, ar = {x=posicao.x, y=posicao.y+4, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+3, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 66, ar = {x=posicao.x, y=posicao.y+5, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+4, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 66, ar = {x=posicao.x, y=posicao.y+6, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+5, z=posicao.z}})
		elseif getCreatureLookDir(sumomdonego) == 1 then
		addEvent(gust, 0, {cid = cid, eee = 65, ar = {x=posicao.x+1, y=posicao.y, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 65, ar = {x=posicao.x+2, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+1, y=posicao.y, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 65, ar = {x=posicao.x+3, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+2, y=posicao.y, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 65, ar = {x=posicao.x+4, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+3, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 65, ar = {x=posicao.x+5, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+4, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 65, ar = {x=posicao.x+6, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+5, y=posicao.y, z=posicao.z}})
		elseif getCreatureLookDir(sumomdonego) == 3 then
		addEvent(gust, 0, {cid = cid, eee = 67, ar = {x=posicao.x-1, y=posicao.y, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 67, ar = {x=posicao.x-2, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-1, y=posicao.y, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 67, ar = {x=posicao.x-3, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-2, y=posicao.y, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 67, ar = {x=posicao.x-4, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-3, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 67, ar = {x=posicao.x-5, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-4, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 67, ar = {x=posicao.x-6, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-5, y=posicao.y, z=posicao.z}})
		end
		return 0
elseif pokemon.spell == "Fire Fang" then


		
		doSendMagicEffect(getThingPos(getCreatureTarget(cid)), 146)
		local function damage(params)
		if isCreature(params.cid) then
		if isCreature(getCreatureTarget(params.cid)) then
		doAreaCombatHealth(sumomdonego, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 5)
		end
		end
		end
		addEvent(damage, 200, {cid = cid})
		return 0
elseif pokemon.spell == "Poison Fang" then


		
		doSendMagicEffect(getThingPos(getCreatureTarget(cid)), 146)
		local function damage(params)
		if isCreature(params.cid) then
		if isCreature(getCreatureTarget(params.cid)) then
		doAreaCombatHealth(sumomdonego, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 8)
		end
		end
		end
		addEvent(damage, 200, {cid = cid})
		return 0

elseif pokemon.spell == "Fireball" then



		
			local function throw(params)
			if isCreature(getCreatureSummons(params.cid)[1]) then
		if isCreature(getCreatureTarget(params.cid)) then
			doSendDistanceShoot(getThingPos(getCreatureSummons(params.cid)[1]), getThingPos(getCreatureTarget(params.cid)), 3)
			end
			end
			end
			local function damage(params)
			if isCreature(getCreatureSummons(params.cid)[1]) then
		if isCreature(getCreatureTarget(params.cid)) then
			doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, getThingPos(getCreatureTarget(cid)), waba, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 6)
			end
			end
			end
		addEvent(damage, 100, {cid = cid})
		addEvent(throw, 0, {cid = cid})
		return 0
elseif pokemon.spell == "Water ball" then



		
			local function throw(params)
			if isCreature(getCreatureSummons(params.cid)[1]) then
		if isCreature(getCreatureTarget(params.cid)) then
			doSendDistanceShoot(getThingPos(getCreatureSummons(params.cid)[1]), getThingPos(getCreatureTarget(params.cid)), 2)
			end
			end
			end
			local function damage(params)
			if isCreature(getCreatureSummons(params.cid)[1]) then
		if isCreature(getCreatureTarget(params.cid)) then
			doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, getThingPos(getCreatureTarget(cid)), waba, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 68)
		end
end
			end
		addEvent(damage, 100, {cid = cid})
		addEvent(throw, 0, {cid = cid})
		return 0


	elseif pokemon.spell == "Ember" then


		
		doSendDistanceShoot(getThingPos(sumomdonego), getThingPos(getCreatureTarget(cid)), 3)
		doAreaCombatHealth(sumomdonego, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 15)
		return 0

elseif pokemon.spell == "Rollout" then
local summons = sumomdonego
local mon = getCreatureName(summons)
local spd = getCreatureSpeed(summons)
local bspd = getCreatureBaseSpeed(summons)


		

doChangeSpeed(summons, -spd)
doChangeSpeed(summons, bspd+100)
		
		
	if getItemAttribute(item2.uid, "nome") == "Shiny Golem" then
doSetCreatureOutfit(sumomdonego, {lookType = 702}, 8300)
	elseif getItemAttribute(item2.uid, "nome") == "Shiny Voltorb" then
		doSetCreatureOutfit(sumomdonego, shinyvoltorb, 8300)
	
	elseif getItemAttribute(item2.uid, "nome") == "Shiny Sandshrew" then
		doSetCreatureOutfit(sumomdonego, {lookType = 690}, 8300)


elseif getItemAttribute(item2.uid, "nome") == "Shiny Sandslash" then
doSetCreatureOutfit(sumomdonego, {lookType = 673}, 8300)
		elseif getItemAttribute(item2.uid, "nome") == "Shiny Electrode" then
		doSetCreatureOutfit(sumomdonego, shinyelectrode, 8300)
	elseif getCreatureName(sumomdonego) == "Sandslash" then
		doSetCreatureOutfit(sumomdonego, sandslash, 8300)
elseif getCreatureName(sumomdonego) == "Golem" then
		doSetCreatureOutfit(sumomdonego, golem, 8300)
	elseif getCreatureName(sumomdonego) == "Electrode" then
		doSetCreatureOutfit(sumomdonego, electrode, 8300)

	elseif getCreatureName(sumomdonego) == "Voltorb" then
		doSetCreatureOutfit(sumomdonego, voltorb, 8300)

	elseif getCreatureName(sumomdonego) == "Sandshrew" then
		doSetCreatureOutfit(sumomdonego, sandshrew, 8300)
elseif getCreatureName(sumomdonego) == "Miltank" then
		doSetCreatureOutfit(sumomdonego, {lookType = 654}, 8300)
elseif getCreatureName(sumomdonego) == "Donphan" then
		doSetCreatureOutfit(sumomdonego, {lookType = 586}, 8300)
elseif getCreatureName(sumomdonego) == "Phanpy" then
		doSetCreatureOutfit(sumomdonego, {lookType = 656}, 8300)
		elseif getItemAttribute(item2.uid, "nome") == "Shiny Miltank" then
doSetCreatureOutfit(sumomdonego, {lookType = 1078}, 8300)
elseif getItemAttribute(item2.uid, "nome") == "Shiny Phanpy" then
doSetCreatureOutfit(sumomdonego, {lookType = 1080}, 8300)
elseif getItemAttribute(item2.uid, "nome") == "Shiny Donphan" then
doSetCreatureOutfit(sumomdonego, {lookType = 1086}, 8300)
		end
		setPlayerStorageValue(sumomdonego, 4, 1)
			local function roll(params)
			if isCreature(params.cid) then
			if isCreature(getCreatureSummons(params.cid)[1]) then
			if getCreatureCondition(getCreatureSummons(params.cid)[1], CONDITION_OUTFIT) == true then
			doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), rollout, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 255)
			end
			end
			end
			end
		for r = 1, 15 do
		addEvent(roll, 500*r, {cid = cid})
		end

			local function stoproll(params)
			if isCreature(params.cid) then
			
			doChangeSpeed(params.cid, bspd-100)
			if getPlayerStorageValue(params.cid, 4) >= 1 then
			setPlayerStorageValue(params.cid, 4, 0)
doChangeSpeed(params.cid, -spd)
doChangeSpeed(params.cid, bspd)
	
			
			end
			end
			end
viado = summons
		addEvent(stoproll, 8300, {cid = viado})
		return 0

elseif pokemon.spell == "Bone Slash" then


		
doSendDistanceShoot(getThingPos(sumomdonego), getThingPos(getCreatureTarget(cid)), 7)
		doAreaCombatHealth(sumomdonego, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 117)
		return 0
elseif pokemon.spell == "Hyper Fang" then


		
		doAreaCombatHealth(sumomdonego, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 159)
		return 0
	elseif pokemon.spell == "Horn Attack" then


		
		doSendDistanceShoot(getThingPos(sumomdonego), getThingPos(getCreatureTarget(cid)), 15)
		doAreaCombatHealth(sumomdonego, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 3)
return 0
		elseif pokemon.spell == "Rock Throw" then

		
		doSendDistanceShoot(getThingPos(sumomdonego), getThingPos(getCreatureTarget(cid)), 11)
		doAreaCombatHealth(sumomdonego, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 3)
	return 0

elseif pokemon.spell == "Psy Pulse" then


		
			local function throw(params)
			if isCreature(params.cid) then
		if isCreature(getCreatureTarget(params.cid)) then
			doSendDistanceShoot(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid)),24)
			end
end
			end
			local function damage(params)
			if isCreature(params.cid) then
		if isCreature(getCreatureTarget(params.cid)) then
			doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(params.cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 136)
			end
end
			end
local sumonado = sumomdonego
		addEvent(damage, 100, {cid = sumonado })
		addEvent(damage, 600, {cid = sumonado })
		addEvent(throw, 0, {cid = sumonado })
		addEvent(throw, 550, {cid = sumonado })
		return 0

elseif pokemon.spell == "Bone Club" then


		
			local function throw(params)
			if isCreature(params.cid) then
		if isCreature(getCreatureTarget(params.cid)) then
			doSendDistanceShoot(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid)),7)
			end
end
			end
			local function damage(params)
			if isCreature(params.cid) then
		if isCreature(getCreatureTarget(params.cid)) then
			doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(params.cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)
			end
end
			end
local sumonado = sumomdonego
		addEvent(damage, 100, {cid = sumonado})
		addEvent(damage, 600, {cid = sumonado})
		addEvent(throw, 0, {cid = sumonado})
		addEvent(throw, 550, {cid = sumonado})
		return 0

elseif pokemon.spell == "Thunder Bolt" then


		
			local function throw(params)
		if isCreature(params.cid) then
		if isCreature(getCreatureTarget(params.cid)) then

	local pos = getThingPos(getCreatureTarget(params.cid))
		
		local frompos = getThingPos(params.cid)
		frompos.x = pos.x+2
		frompos.y = pos.y+2
             

doSendDistanceShoot(pos, frompos, 40)
			end
			end
			end
			local function damage(params)
			if isCreature(params.cid) then
		if isCreature(getCreatureTarget(params.cid)) then
			doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(params.cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 11)
			end
end
			end
local sumonado = sumomdonego
		addEvent(damage, 100, {cid = sumonado})
		addEvent(damage, 600, {cid = sumonado})
		addEvent(throw, 0, {cid = sumonado})
		addEvent(throw, 550, {cid = sumonado})
		return 0

elseif pokemon.spell == "Dark Pulse" then


		
			local function throw(params)
			if isCreature(params.cid) then
		if isCreature(getCreatureTarget(params.cid)) then
			doSendDistanceShoot(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid)),18)
			end
end
			end
			local function damage(params)
			if isCreature(params.cid) then
		if isCreature(getCreatureTarget(params.cid)) then
doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(params.cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 187)
			end
end
			end
		local function damage2(params)
			if isCreature(params.cid) then
		if isCreature(getCreatureTarget(params.cid)) then
doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(params.cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 186)
			end
end
			end
local sumonado = sumomdonego
addEvent(throw, 0, {cid = sumonado})
		addEvent(damage2, 100, {cid = sumonado})
		addEvent(throw, 550, {cid = sumonado})
		addEvent(damage, 600, {cid = sumonado})
		
		return 0



elseif pokemon.spell == "Restore" then


		
		doSendMagicEffect(getThingPos(sumomdonego), 132)
local summon = sumomdonego
local lifequeta = getCreatureHealth(summon)
local lifemax =   getCreatureMaxHealth(summon)

curar = lifemax-lifequeta 
		doCreatureAddHealth(sumomdonego, curar)
		doSendAnimatedText(getThingPos(sumomdonego), "+"..curar.."", 35)
		return 0

elseif pokemon.spell == "Self Heal" then


		
		doSendMagicEffect(getThingPos(sumomdonego), 132)
local summon = sumomdonego
local lifequeta = getCreatureHealth(summon)
local lifemax =   getCreatureMaxHealth(summon)

curar = lifemax-lifequeta 
		doCreatureAddHealth(sumomdonego, curar)
		doSendAnimatedText(getThingPos(sumomdonego), "+"..curar.."", 35)
		return 0

elseif pokemon.spell == "Rest" then


		
		doSendMagicEffect(getThingPos(sumomdonego), 32)
local summon = sumomdonego
local lifequeta = getCreatureHealth(summon)
local lifemax =   getCreatureMaxHealth(summon)

local curar = lifemax-lifequeta 
		doCreatureAddHealth(sumomdonego, curar)

		rest(summon)
		return 0

elseif pokemon.spell == "Healera" then


		

 local summon = sumomdonego
local lifemax =   getCreatureMaxHealth(summon)

local curar = lifemax
local curarachan  = (getCreatureMaxHealth(summon)-getCreatureHealth(summon))
if curarachan >= 1 then
		doCreatureAddHealth(sumomdonego,curarachan)
		doSendAnimatedText(getThingPos(sumomdonego), "+"..curarachan.."", 35)
end
doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), sleeparea, curar, curar*1.2, 12)
local d = getCreaturesInRange(getThingPos(sumomdonego), 3, 3, 0, 1)

                   
for _,pid in pairs(d) do
if isPlayer(pid) then
local curarachan  = (getCreatureMaxHealth(pid)-getCreatureHealth(pid))
if curarachan >= 1 then
		doCreatureAddHealth(pid,curarachan)
		doSendAnimatedText(getThingPos(pid), "+"..curarachan.."", 35)
end

end
end
		return 0

elseif pokemon.spell == "Earth Quake" then


		
xxe = getCreatureName(sumomdonego) 
		





local function go14(params)
		if #getCreatureSummons(cid) == 1 then

doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 252)



else
return true
end
end

local function go13(params)
		if #getCreatureSummons(cid) == 1 then

doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 252)

addEvent(go14, 500,  cid)

else
return true
end
end
local function go12(params)
		if #getCreatureSummons(cid) == 1 then

doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 252)

addEvent(go13, 500,  cid)

else
return true
end
end

local function go11(params)
		if #getCreatureSummons(cid) == 1 then

doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 252)

addEvent(go12, 500,  cid)

else
return true
end
end

local function go10(params)
		if #getCreatureSummons(cid) == 1 then

doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 252)


addEvent(go11, 500,  cid)
else
return true
end
end

local function go9(params)
		if #getCreatureSummons(cid) == 1 then

doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 252)

addEvent(go10, 500,  cid)

else
return true
end
end
local function go8(params)
		if #getCreatureSummons(cid) == 1 then

doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 252)

addEvent(go9, 500,  cid)

else
return true
end
end

local function go7(params)
		if #getCreatureSummons(cid) == 1 then

doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 252)

addEvent(go8, 500,  cid)

else
return true
end
end


local function go6(params)
		if #getCreatureSummons(cid) == 1 then

doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 252)

addEvent(go7, 500,  cid)

else
return true
end
end

local function go5(params)
		if #getCreatureSummons(cid) == 1 then

doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 252)

addEvent(go6, 500,  cid)

else
return true
end
end
local function go4(params)
		if #getCreatureSummons(cid) == 1 then

doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 252)

addEvent(go5, 500,  cid)

else
return true
end
end
local function go3(params)
		if #getCreatureSummons(cid) == 1 then

doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 252)

addEvent(go4, 500, cid)


else
return true
end
end

local function go2(params)
		if #getCreatureSummons(cid) == 1 then

doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 252)

addEvent(go3, 500, cid)


else
return true
end
end

local function go(params)
		if #getCreatureSummons(cid) == 1 then

doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 252)

addEvent(go2, 500, cid)


else
return true
end
end


doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 252)

addEvent(go, 500, cid)


		
		return 0

elseif pokemon.spell == "Stunning Confusion" then


		
xxe = getCreatureName(sumomdonego) 
		





local function go14(params)
		if #getCreatureSummons(cid) == 1 then

doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 136)



else
return true
end
end

local function go13(params)
		if #getCreatureSummons(cid) == 1 then

doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 136)

addEvent(go14, 500,  cid)

else
return true
end
end
local function go12(params)
		if #getCreatureSummons(cid) == 1 then

doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 136)

addEvent(go13, 500,  cid)

else
return true
end
end

local function go11(params)
		if #getCreatureSummons(cid) == 1 then

doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 136)

addEvent(go12, 500,  cid)

else
return true
end
end

local function go10(params)
		if #getCreatureSummons(cid) == 1 then

doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 136)


addEvent(go11, 500,  cid)
else
return true
end
end

local function go9(params)
		if #getCreatureSummons(cid) == 1 then

doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 136)

addEvent(go10, 500,  cid)

else
return true
end
end
local function go8(params)
		if #getCreatureSummons(cid) == 1 then

doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 136)

addEvent(go9, 500,  cid)

else
return true
end
end

local function go7(params)
		if #getCreatureSummons(cid) == 1 then

doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 136)

addEvent(go8, 500,  cid)

else
return true
end
end


local function go6(params)
		if #getCreatureSummons(cid) == 1 then

doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 136)

addEvent(go7, 500,  cid)

else
return true
end
end

local function go5(params)
		if #getCreatureSummons(cid) == 1 then

doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 136)

addEvent(go6, 500,  cid)

else
return true
end
end
local function go4(params)
		if #getCreatureSummons(cid) == 1 then

doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 136)

addEvent(go5, 500,  cid)

else
return true
end
end
local function go3(params)
		if #getCreatureSummons(cid) == 1 then

doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 136)

addEvent(go4, 500, cid)


else
return true
end
end

local function go2(params)
		if #getCreatureSummons(cid) == 1 then

doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 136)

addEvent(go3, 500, cid)


else
return true
end
end

local function go(params)
		if #getCreatureSummons(cid) == 1 then

doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 136)

addEvent(go2, 500, cid)


else
return true
end
end


doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 136)

addEvent(go, 500, cid)


		
		return 0

elseif pokemon.spell == "Calm Mind" then


		
		doSendMagicEffect(getThingPos(sumomdonego), 172)
		setPlayerStorageValue(sumomdonego, 254, 1)
		local function quiet(params)
		if isCreature(params.cid) then
		
		if getPlayerStorageValue(params.cid, 254) >= 1 then
		doSendMagicEffect(getThingPos(params.cid), 249)
		end
		end
		
		end
		local function desc(params)
		if isCreature(params.cid) then
	
		if getPlayerStorageValue(params.cid, 254) >= 1 then
		setPlayerStorageValue(params.cid, 254, 0)
		end
		
		end
		end
local sumonado = sumomdonego

		addEvent(quiet, 4000, {cid = sumonado})


		addEvent(desc, 5000, {cid = sumonado})
	return 0
elseif pokemon.spell == "Focus" then


		
		doSendMagicEffect(getThingPos(sumomdonego), 132)
		setPlayerStorageValue(sumomdonego, 254, 1)
	
		local function desc(params)
		if isCreature(params.cid) then
		
		if getPlayerStorageValue(params.cid, 254) >= 1 then
		setPlayerStorageValue(params.cid, 254, 0)
		end
		end
		
		end
		
local sumonado = sumomdonego
		addEvent(desc, 12*500, {cid = sumonado})
	return 0

elseif pokemon.spell == "Ancient Fury" then


		
local xsx = getCreatureName(sumomdonego)
if xsx == "Elder Charizard" then
		doSetCreatureOutfit(sumomdonego, elder, 8300)
elseif xsx == "Ancient Blastoise" then
	doSetCreatureOutfit(sumomdonego, blastoise, 8300)
elseif xsx == "Typhlosion" then
	doSetCreatureOutfit(sumomdonego,{lookType = 466}, 8300)
elseif xsx == "Quilava" then
	doSetCreatureOutfit(sumomdonego,{lookType = 465}, 8300)
elseif xsx == "Cyndaquil" then
	doSetCreatureOutfit(sumomdonego,{lookType = 464}, 8300)
end
	setPlayerStorageValue(sumomdonego, 254, 1)
		
		local function desc(params)
		if isCreature(params.cid) then
		
		if getPlayerStorageValue(params.cid, 254) >= 1 then
		setPlayerStorageValue(params.cid, 254, 0)
		end
		
		end
		end

			local function roll(params)
			if isCreature(params.cid) then
			
doSendMagicEffect(getThingPos(params.cid), 208)
doSendMagicEffect(getThingPos(params.cid), 29)
if  isCreature(getCreatureTarget(params.cid)) then
	if getDistanceBetween(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid))) == 1 then
	doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(params.cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)
			
end
end

			
			end
			end
local sumonado = sumomdonego
		for r = 1, 10 do
		addEvent(roll, 800*r, {cid = sumonado})
		end
		

		addEvent(desc, 10*800, {cid = sumonado})
	return 0

elseif pokemon.spell == "Furious Legs" then


		
	
		
	

			local function roll(params)
					if isCreature(params.cid) then

doSendMagicEffect(getThingPos(params.cid), 208)
doSendMagicEffect(getThingPos(params.cid), 29)
if  isCreature(getCreatureTarget(params.cid)) then
	if getDistanceBetween(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid))) == 1 then
	doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(params.cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)
			end
end


			
			end
			end
local sumonado = sumomdonego
		for r = 1, 10 do
		addEvent(roll, 800*r, {cid = sumonado})
		end
		

		
	return 0

elseif pokemon.spell == "Ultimate Champion" then


		
	
		
	

			local function roll(params)
					if isCreature(params.cid) then
			
doSendMagicEffect(getThingPos(params.cid), 208)
doSendMagicEffect(getThingPos(params.cid), 28)
if  isCreature(getCreatureTarget(params.cid)) then
	if getDistanceBetween(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid))) == 1 then
	doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(params.cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)
			end
end
end

			
			end
			
local sumonado = sumomdonego
		for r = 1, 10 do
		addEvent(roll, 800*r, {cid = sumonado})
		end
		

		
	return 0
	
elseif pokemon.spell == "Electric Charge" then


		

	setPlayerStorageValue(sumomdonego, 254, 1)
		
		local function desc(params)
		if isCreature(params.cid) then
		if getPlayerStorageValue(params.cid, 254) >= 1 then
		setPlayerStorageValue(params.cid, 254, 0)
		
		end
		end
		end

			local function roll(params)
					if isCreature(params.cid) then
			
doSendMagicEffect(getThingPos(params.cid), 207)
if  isCreature(getCreatureTarget(params.cid)) then
	if getDistanceBetween(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid))) == 1 then
	doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(params.cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)
			
end
end

			
			end
			end
local sumonado = sumomdonego
		for r = 1, 10 do
		addEvent(roll, 800*r, {cid = sumonado})
		end
		

		addEvent(desc, 10*800, {cid = sumonado})
	return 0

elseif pokemon.spell == "Fury" then


		
		doSendMagicEffect(getThingPos(sumomdonego), 28)

		setPlayerStorageValue(sumomdonego, 4, 1)
	
	
			local function roll(params)
					if isCreature(params.cid) then
			
doSendMagicEffect(getThingPos(params.cid), 208)
doSendMagicEffect(getThingPos(params.cid), 28)
if  isCreature(getCreatureTarget(params.cid)) then
	if getDistanceBetween(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid))) == 1 then
	doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(params.cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)
			
end
end

			
			end
			end

		local function chard(params)
		if isCreature(params.cid) then
		if getPlayerStorageValue(params.cid, 4) >= 1 then
		setPlayerStorageValue(params.cid, 4, -1)
		end
		end
		end
local sumonado = sumomdonego
		for r = 1, 10 do
		addEvent(roll, 800*r, {cid = sumonado})

		end

addEvent(chard, 6000, {cid = sumonado})


		return 0
elseif pokemon.spell == "Rage" then


		
		doSendMagicEffect(getThingPos(sumomdonego), 14)

		
	
	
			local function roll(params)
		if isCreature(params.cid) then
		
doSendMagicEffect(getThingPos(params.cid), 14)
if  isCreature(getCreatureTarget(params.cid)) then
	if getDistanceBetween(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid))) == 1 then
	doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(params.cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)
			end

end

			
			end
			end

	local sumonado = sumomdonego	
		for r = 1, 10 do
		addEvent(roll, 800*r, {cid = sumonado})

		end



		return 0
elseif pokemon.spell == "Strafe" then
local summons = sumomdonego
local mon = getCreatureName(summons)
local spd = getCreatureSpeed(summons)
local bspd = getCreatureBaseSpeed(summons)


		

doChangeSpeed(summons, -spd)
doChangeSpeed(summons, bspd+100)
		doSendMagicEffect(getThingPos(sumomdonego), 14)

		
	
	
			local function roll(params)
		if isCreature(params.cid) then
		
doSendMagicEffect(getThingPos(params.cid), 14)
if  isCreature(getCreatureTarget(params.cid)) then
	if getDistanceBetween(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid))) == 1 then
	doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(params.cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)
			
end
end

			
			end
			end


			local function stopspeed(params)
			if isCreature(params.cid) then
			
doChangeSpeed(summons, -spd)
doChangeSpeed(summons, bspd)

end
end
local sumonado = sumomdonego
		addEvent(stopspeed, 6000, {cid = sumonado})
		for r = 1, 10 do
		addEvent(roll, 800*r, {cid = sumonado})

		end



		return 0
elseif pokemon.spell == "Agility" then
local summons = sumomdonego
local mon = getCreatureName(summons)
local spd = getCreatureSpeed(summons)
local bspd = getCreatureBaseSpeed(summons)


		

doChangeSpeed(summons, -spd)
doChangeSpeed(summons, bspd+200)
		doSendMagicEffect(getThingPos(sumomdonego), 14)

		
	
	
			local function roll(params)
			if isCreature(params.cid) then
			
doSendMagicEffect(getThingPos(params.cid), 14)
if  isCreature(getCreatureTarget(params.cid)) then
	if getDistanceBetween(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid))) == 1 then
	doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(params.cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)
			
end
end

			
			end
			end


			local function stopspeed(params)
			if isCreature(params.cid) then

doChangeSpeed(summons, -spd)
doChangeSpeed(summons, bspd)
end

end
local sumonado = sumomdonego 
		addEvent(stopspeed, 6000, {cid = sumonado})
		for r = 1, 15 do
		addEvent(roll, 500*r, {cid = sumonado})

		end



		return 0
	elseif pokemon.spell == "Headbutt" then



		
		doAreaCombatHealth(sumomdonego, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 3)
	return 0
	elseif pokemon.spell == "Razor Leaf" then


		
			local function throw(params)
			if isCreature(params.cid) then
		if isCreature(getCreatureTarget(params.cid)) then
			doSendDistanceShoot(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid)), 8)
			end
end
			end
			local function damage(params)
			if isCreature(params.cid) then
		if isCreature(getCreatureTarget(params.cid)) then
			doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(params.cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 79)
			end
end
			end
local sumonado = sumomdonego 
		addEvent(damage, 100, {cid = sumonado})
		addEvent(damage, 600, {cid = sumonado})
		addEvent(throw, 0, {cid = sumonado})
		addEvent(throw, 550, {cid = sumonado})
	return 0

elseif pokemon.spell == "Shockwave" then


		
		posit = getThingPos(sumomdonego)
		local function sandattack(params)
		if #getCreatureSummons(params.cid) >= 1 then
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], null, params.ar, 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), params.ef)
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, params.ar, params.wave, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)
		
		end
		end
		local posicao = getThingPos(sumomdonego)
		if getCreatureLookDir(sumomdonego) == 0 then
		addEvent(sandattack, 0, {cid = cid, ar = {x=posicao.x+1, y=posicao.y-1, z=posicao.z}, ef = 126, wave = swaven})
		addEvent(sandattack, 400, {cid = cid, ar = {x=posicao.x+1, y=posicao.y-2, z=posicao.z}, ef = 126, wave = swaven})
		addEvent(sandattack, 800, {cid = cid, ar = {x=posicao.x+1, y=posicao.y-3, z=posicao.z}, ef = 126, wave = swaven})
		addEvent(sandattack, 1200, {cid = cid, ar = {x=posicao.x+1, y=posicao.y-4, z=posicao.z}, ef = 126, wave = swaven})
		addEvent(sandattack, 1600, {cid = cid, ar = {x=posicao.x+1, y=posicao.y-5, z=posicao.z}, ef = 126, wave = swaven})
		elseif getCreatureLookDir(sumomdonego) == 2 then
		addEvent(sandattack, 0, {cid = cid, ar = {x=posicao.x+1, y=posicao.y+2, z=posicao.z}, ef = 125, wave = swaves})
		addEvent(sandattack, 400, {cid = cid, ar = {x=posicao.x+1, y=posicao.y+3, z=posicao.z}, ef = 125, wave = swaves})
		addEvent(sandattack, 800, {cid = cid, ar = {x=posicao.x+1, y=posicao.y+4, z=posicao.z}, ef = 125, wave = swaves})
		addEvent(sandattack, 1200, {cid = cid, ar = {x=posicao.x+1, y=posicao.y+5, z=posicao.z}, ef = 125, wave = swaves})
		addEvent(sandattack, 1600, {cid = cid, ar = {x=posicao.x+1, y=posicao.y+6, z=posicao.z}, ef = 125, wave = swaves})
		elseif getCreatureLookDir(sumomdonego) == 1 then
		addEvent(sandattack, 0, {cid = cid, ar = {x=posicao.x+2, y=posicao.y+1, z=posicao.z}, ef = 124, wave = swavee})
		addEvent(sandattack, 400, {cid = cid, ar = {x=posicao.x+3, y=posicao.y+1, z=posicao.z}, ef = 124, wave = swavee})
		addEvent(sandattack, 800, {cid = cid, ar = {x=posicao.x+4, y=posicao.y+1, z=posicao.z}, ef = 124, wave = swavee})
		addEvent(sandattack, 1200, {cid = cid, ar = {x=posicao.x+5, y=posicao.y+1, z=posicao.z}, ef = 124, wave = swavee})
		addEvent(sandattack, 1600, {cid = cid, ar = {x=posicao.x+6, y=posicao.y+1, z=posicao.z}, ef = 124, wave = swavee})
		elseif getCreatureLookDir(sumomdonego) == 3 then
		addEvent(sandattack, 0, {cid = cid, ar = {x=posicao.x-1, y=posicao.y+1, z=posicao.z}, ef = 123, wave = swavew})
		addEvent(sandattack, 400, {cid = cid, ar = {x=posicao.x-2, y=posicao.y+1, z=posicao.z}, ef = 123, wave = swavew})
		addEvent(sandattack, 800, {cid = cid, ar = {x=posicao.x-3, y=posicao.y+1, z=posicao.z}, ef = 123, wave = swavew})
		addEvent(sandattack, 1200, {cid = cid, ar = {x=posicao.x-4, y=posicao.y+1, z=posicao.z}, ef = 123, wave = swavew})
		addEvent(sandattack, 1600, {cid = cid, ar = {x=posicao.x-5, y=posicao.y+1, z=posicao.z}, ef = 123, wave = swavew})
		end
	return 0

elseif pokemon.spell == "Horn Drill" then


		
			local function throw(params)
			if isCreature(params.cid) then
		if isCreature(getCreatureTarget(params.cid)) then
			doSendDistanceShoot(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid)), 25)
			end
end
			end
			local function damage(params)
			if isCreature(params.cid) then
		if isCreature(getCreatureTarget(params.cid)) then
			doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(params.cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 25)
			end
end
			end
local sumonado = sumomdonego 
		addEvent(damage, 100, {cid = sumonado})
		addEvent(damage, 600, {cid = sumonado})
		addEvent(throw, 0, {cid = sumonado})
		addEvent(throw, 550, {cid = sumonado})
	return 0

elseif pokemon.spell == "Fury Attack" then


		
			local function throw(params)
                        if isCreature(params.cid) then
                        if isCreature(getCreatureTarget(params.cid)) then
			doSendDistanceShoot(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid)), 15)
		        end
                        end
			end
			local function damage(params)
			if isCreature(params.cid) then
                        if isCreature(getCreatureTarget(params.cid)) then
			doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(params.cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 25)
                        end
			end
			end
local sumonado = sumomdonego
		addEvent(damage, 100, {cid = sumonado})
		addEvent(damage, 600, {cid = sumonado})
		addEvent(throw, 0, {cid = sumonado})
		addEvent(throw, 550, {cid = sumonado})
	return 0

elseif pokemon.spell == "Rock Tomb" then


		
		if getCreatureLookDir(sumomdonego) == 0 then
		rock1 = {x=getThingPos(sumomdonego).x+1, y=getThingPos(sumomdonego).y-1, z=getThingPos(sumomdonego).z}
		rock2 = {x=getThingPos(sumomdonego).x+0, y=getThingPos(sumomdonego).y-1, z=getThingPos(sumomdonego).z}
		rock3 = {x=getThingPos(sumomdonego).x-1, y=getThingPos(sumomdonego).y-1, z=getThingPos(sumomdonego).z}
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), tombn, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 118)
		elseif getCreatureLookDir(sumomdonego) == 2 then
		rock1 = {x=getThingPos(sumomdonego).x+1, y=getThingPos(sumomdonego).y+1, z=getThingPos(sumomdonego).z}
		rock2 = {x=getThingPos(sumomdonego).x+0, y=getThingPos(sumomdonego).y+1, z=getThingPos(sumomdonego).z}
		rock3 = {x=getThingPos(sumomdonego).x-1, y=getThingPos(sumomdonego).y+1, z=getThingPos(sumomdonego).z}
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), tombs, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 118)
		elseif getCreatureLookDir(sumomdonego) == 3 then
		rock1 = {x=getThingPos(sumomdonego).x-1, y=getThingPos(sumomdonego).y+1, z=getThingPos(sumomdonego).z}
		rock2 = {x=getThingPos(sumomdonego).x-1, y=getThingPos(sumomdonego).y+0, z=getThingPos(sumomdonego).z}
		rock3 = {x=getThingPos(sumomdonego).x-1, y=getThingPos(sumomdonego).y-1, z=getThingPos(sumomdonego).z}
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), tombw, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 118)
		elseif getCreatureLookDir(sumomdonego) == 1 then
		rock1 = {x=getThingPos(sumomdonego).x+1, y=getThingPos(sumomdonego).y+1, z=getThingPos(sumomdonego).z}
		rock2 = {x=getThingPos(sumomdonego).x+1, y=getThingPos(sumomdonego).y+0, z=getThingPos(sumomdonego).z}
		rock3 = {x=getThingPos(sumomdonego).x+1, y=getThingPos(sumomdonego).y-1, z=getThingPos(sumomdonego).z}
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), tombe, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 118)
		end
		doSendDistanceShoot(getThingPos(sumomdonego), rock1, 11)
		doSendDistanceShoot(getThingPos(sumomdonego), rock2, 11)
		doSendDistanceShoot(getThingPos(sumomdonego), rock3, 11)
		return 0
elseif pokemon.spell == "Cross Chop" then


		
		if getCreatureLookDir(sumomdonego) == 0 then
		rock1 = {x=getThingPos(sumomdonego).x+1, y=getThingPos(sumomdonego).y-1, z=getThingPos(sumomdonego).z}
		rock2 = {x=getThingPos(sumomdonego).x+0, y=getThingPos(sumomdonego).y-1, z=getThingPos(sumomdonego).z}
		rock3 = {x=getThingPos(sumomdonego).x-1, y=getThingPos(sumomdonego).y-1, z=getThingPos(sumomdonego).z}
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), tombn, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 118)
		elseif getCreatureLookDir(sumomdonego) == 2 then
		rock1 = {x=getThingPos(sumomdonego).x+1, y=getThingPos(sumomdonego).y+1, z=getThingPos(sumomdonego).z}
		rock2 = {x=getThingPos(sumomdonego).x+0, y=getThingPos(sumomdonego).y+1, z=getThingPos(sumomdonego).z}
		rock3 = {x=getThingPos(sumomdonego).x-1, y=getThingPos(sumomdonego).y+1, z=getThingPos(sumomdonego).z}
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), tombs, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 118)
		elseif getCreatureLookDir(sumomdonego) == 3 then
		rock1 = {x=getThingPos(sumomdonego).x-1, y=getThingPos(sumomdonego).y+1, z=getThingPos(sumomdonego).z}
		rock2 = {x=getThingPos(sumomdonego).x-1, y=getThingPos(sumomdonego).y+0, z=getThingPos(sumomdonego).z}
		rock3 = {x=getThingPos(sumomdonego).x-1, y=getThingPos(sumomdonego).y-1, z=getThingPos(sumomdonego).z}
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), tombw, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 118)
		elseif getCreatureLookDir(sumomdonego) == 1 then
		rock1 = {x=getThingPos(sumomdonego).x+1, y=getThingPos(sumomdonego).y+1, z=getThingPos(sumomdonego).z}
		rock2 = {x=getThingPos(sumomdonego).x+1, y=getThingPos(sumomdonego).y+0, z=getThingPos(sumomdonego).z}
		rock3 = {x=getThingPos(sumomdonego).x+1, y=getThingPos(sumomdonego).y-1, z=getThingPos(sumomdonego).z}
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), tombe, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 118)
		end
		doSendDistanceShoot(getThingPos(sumomdonego), rock1, 26)
		doSendDistanceShoot(getThingPos(sumomdonego), rock2, 26)
		doSendDistanceShoot(getThingPos(sumomdonego), rock3, 26)
		return 0
elseif pokemon.spell == "Psycho Shift" then
		local pos = getThingPos(getCreatureTarget(cid))
		local pos2 = getThingPos(getCreatureTarget(cid))
		pos.x = pos.x + 1
		if hasSqm(pos) and isSightClear(getThingPos(sumomdonego), pos, false) then
		if getTileThingByPos(pos) and getTileThingByPos(pos).itemid >= 1 and not isInArray({919, 460, 4820, 4821, 4822, 4823, 4824, 4825}, getTileThingByPos(pos).itemid) and isWalkable(pos) then
		pos = getClosestFreeTile(getCreatureTarget(cid), pos)
		doSendDistanceShoot(pos2, pos, 39)
		doTeleportThing(getCreatureTarget(cid), pos, false)
		doAreaCombatHealth(sumomdonego, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 238)
		doSendMagicEffect(pos2, 134)
		else
		local newpos = getClosestFreeTile(getCreatureTarget(cid), pos)
		doSendDistanceShoot(pos2, newpos, 39)
		doTeleportThing(getCreatureTarget(cid), newpos, false)
		doAreaCombatHealth(sumomdonego, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 238)
		doSendMagicEffect(pos2, 134)
		end
		else
		doSendDistanceShoot(pos2, getThingPos(getCreatureTarget(cid)), 39)
		doAreaCombatHealth(sumomdonego, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 238)
		doSendMagicEffect(pos2, 134)
		end	


		
		return 0

	elseif pokemon.spell == "Sand Attack" then


		
		posit = getThingPos(sumomdonego)
		local function sandattack(params)
		if #getCreatureSummons(params.cid) >= 1 then
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, params.ar, sand1, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), params.ef)
		
		end
		end
		local posicao = getThingPos(sumomdonego)
		if getCreatureLookDir(sumomdonego) == 0 then
		addEvent(sandattack, 0, {cid = cid, ar = {x=posicao.x, y=posicao.y-1, z=posicao.z}, ef = 120})
		addEvent(sandattack, 400, {cid = cid, ar = {x=posicao.x, y=posicao.y-2, z=posicao.z}, ef = 120})
		addEvent(sandattack, 800, {cid = cid, ar = {x=posicao.x, y=posicao.y-3, z=posicao.z}, ef = 120})
		elseif getCreatureLookDir(sumomdonego) == 2 then
		addEvent(sandattack, 0, {cid = cid, ar = {x=posicao.x, y=posicao.y+1, z=posicao.z}, ef = 122})
		addEvent(sandattack, 400, {cid = cid, ar = {x=posicao.x, y=posicao.y+2, z=posicao.z}, ef = 122})
		addEvent(sandattack, 800, {cid = cid, ar = {x=posicao.x, y=posicao.y+3, z=posicao.z}, ef = 122})
		elseif getCreatureLookDir(sumomdonego) == 1 then
		addEvent(sandattack, 0, {cid = cid, ar = {x=posicao.x+1, y=posicao.y, z=posicao.z}, ef = 121})
		addEvent(sandattack, 400, {cid = cid, ar = {x=posicao.x+2, y=posicao.y, z=posicao.z}, ef = 121})
		addEvent(sandattack, 800, {cid = cid, ar = {x=posicao.x+3, y=posicao.y, z=posicao.z}, ef = 121})
		elseif getCreatureLookDir(sumomdonego) == 3 then
		addEvent(sandattack, 0, {cid = cid, ar = {x=posicao.x-1, y=posicao.y, z=posicao.z}, ef = 119})
		addEvent(sandattack, 400, {cid = cid, ar = {x=posicao.x-2, y=posicao.y, z=posicao.z}, ef = 119})
		addEvent(sandattack, 800, {cid = cid, ar = {x=posicao.x-3, y=posicao.y, z=posicao.z}, ef = 119})
		end
return 0

elseif pokemon.spell == "Flamethrower" then


		
		if getCreatureLookDir(sumomdonego) == 0 then
		local flamepos2 = getThingPos(sumomdonego)
		flamepos2.x = flamepos2.x+1
		flamepos2.y = flamepos2.y-1
		doSendMagicEffect(flamepos2, 225)--55
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), flamen, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)
		elseif getCreatureLookDir(sumomdonego) == 1 then
		local flamepos1 = getThingPos(sumomdonego)
		flamepos1.x = flamepos1.x+3
		flamepos1.y = flamepos1.y+1
		doSendMagicEffect(flamepos1, 58)--58
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), flamee, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)
		elseif getCreatureLookDir(sumomdonego) == 2 then
		local flamepos = getThingPos(sumomdonego)
		flamepos.x = flamepos.x+1
		flamepos.y = flamepos.y+3
		doSendMagicEffect(flamepos, 226)--56
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), flames, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)
		elseif getCreatureLookDir(sumomdonego) == 3 then
		local flamepos = getThingPos(sumomdonego)
		flamepos.x = flamepos.x-1
		flamepos.y = flamepos.y+1
		doSendMagicEffect(flamepos, 57)--57
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), flamew, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)
		end
		return 0

elseif pokemon.spell == "Mind Blast" then


		
	
		
local function go2(params)
		if isCreature(params.cid) then
doAreaCombatHealth(params.cid, element, getThingPos(params.cid), psy2, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 134)
end
end
	
		
		
local function go(params)
		if isCreature(params.cid) then
		doAreaCombatHealth(params.cid, element, getThingPos(params.cid), psy4, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 137)
	end
end
		
		
		
local function go1(params)
		if isCreature(params.cid) then
doAreaCombatHealth(params.cid, element, getThingPos(params.cid), AREA_GREATLOVE, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 133)
end
end
local sumonado = sumomdonego
doSendMagicEffect(getCreaturePosition(sumonado), 249)	
addEvent(go, 1000, {cid = sumonado})
addEvent(go1, 300, {cid = sumonado})
addEvent(go2, 600, {cid = sumonado})	

		
		return 0
elseif pokemon.spell == "Great Love" then


		
	
local function go2(params)
		if isCreature(params.cid) then
doAreaCombatHealth(params.cid, element, getThingPos(params.cid), AREA_GREATLOVE2, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 147)
end
end
	
		
local function go(params)
		if isCreature(params.cid) then
		doAreaCombatHealth(params.cid, element, getThingPos(params.cid), AREA_GREATLOVE3, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 147)
	end
end
		
	
local function go1(params)
		if isCreature(params.cid) then
doAreaCombatHealth(params.cid, element, getThingPos(params.cid), AREA_GREATLOVE4, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 147)
end
end
local d = getCreaturesInRange(getThingPos(sumomdonego), 3, 3, 1, 0)

                   
for _,pid in pairs(d) do
if isSummon(pid) then
if getPlayerStorageValue(cid, 3333) >= 1 then
if getPlayerStorageValue(cid, 6333) == getCreatureMaster(pid) and getPlayerStorageValue(cid, 1333) >= 1 then
                    if getPlayerStorageValue(pid, 34) >= 1 then
setPlayerStorageValue(pid, 34, 0)
doSendMagicEffect(getThingPos(pid), 135)
doSendAnimatedText(getThingPos(pid), "REFLECT", 215)   
           
love(sumomdonego)
else
love(pid)
end
end
elseif  isPlayerInParty(getCreatureMaster(pid),cid) then 
                   if getPlayerStorageValue(pid, 34) >= 1 then
setPlayerStorageValue(pid, 34, 0)
doSendMagicEffect(getThingPos(pid), 135)
doSendAnimatedText(getThingPos(pid), "REFLECT", 215)   
           
love(sumomdonego)
else
love(pid)
end
end
elseif isMonster(pid) then
                    if getPlayerStorageValue(pid, 34) >= 1 then
setPlayerStorageValue(pid, 34, 0)
doSendMagicEffect(getThingPos(pid), 135)
doSendAnimatedText(getThingPos(pid), "REFLECT", 215)   
           
love(sumomdonego)
else
love(pid)
end

end
                        end		

local sumonado = sumomdonego
addEvent(go, 1000, {cid = sumonado})
addEvent(go1, 300, {cid = sumonado})
addEvent(go2, 600, {cid = sumonado})	

		
		return 0
	elseif pokemon.spell == "Super Sonic" then


		
local pid = getCreatureTarget(cid)
if isSummon(pid) then
if getPlayerStorageValue(cid, 3333) >= 1 then
if getPlayerStorageValue(cid, 6333) == getCreatureMaster(pid) and getPlayerStorageValue(cid, 1333) >= 1 then
                    if getPlayerStorageValue(pid, 34) >= 1 then
setPlayerStorageValue(pid, 34, 0)
doSendMagicEffect(getThingPos(pid), 135)
doSendAnimatedText(getThingPos(pid), "REFLECT", 215)   
           
Confunso(sumomdonego)
else
Confunso(pid)
end
end
elseif  isPlayerInParty(getCreatureMaster(pid),cid) then 
                    if getPlayerStorageValue(pid, 34) >= 1 then
setPlayerStorageValue(pid, 34, 0)
doSendMagicEffect(getThingPos(pid), 135)
doSendAnimatedText(getThingPos(pid), "REFLECT", 215)   
           
Confunso(sumomdonego)
else
Confunso(pid)
end
end
elseif isMonster(pid) then
                    if getPlayerStorageValue(pid, 34) >= 1 then
setPlayerStorageValue(pid, 34, 0)
doSendMagicEffect(getThingPos(pid), 135)
doSendAnimatedText(getThingPos(pid), "REFLECT", 215)   
           
Confunso(sumomdonego)
else
Confunso(pid)
end

end

		doSendDistanceShoot(getThingPos(sumomdonego), getThingPos(pid), 24)
	return 0

elseif pokemon.spell == "Roar" then


		
 local d = getCreaturesInRange(getThingPos(sumomdonego), 2, 2, 1, 0)
                      
              
for _,pid in pairs(d) do
if isSummon(pid) then
if getPlayerStorageValue(cid, 3333) >= 1 then
if getPlayerStorageValue(cid, 6333) == getCreatureMaster(pid) and getPlayerStorageValue(cid, 1333) >= 1 then
                    if getPlayerStorageValue(pid, 34) >= 1 then
setPlayerStorageValue(pid, 34, 0)
doSendMagicEffect(getThingPos(pid), 135)
doSendAnimatedText(getThingPos(pid), "REFLECT", 215)   
           
Roar(sumomdonego)
else
Roar(pid)
end
end
elseif  isPlayerInParty(getCreatureMaster(pid),cid) then 
                    if getPlayerStorageValue(pid, 34) >= 1 then
setPlayerStorageValue(pid, 34, 0)
doSendMagicEffect(getThingPos(pid), 135)
doSendAnimatedText(getThingPos(pid), "REFLECT", 215)   
           
Roar(sumomdonego)
else
Roar(pid)
end
end
elseif isMonster(pid) then
                    if getPlayerStorageValue(pid, 34) >= 1 then
setPlayerStorageValue(pid, 34, 0)
doSendMagicEffect(getThingPos(pid), 135)
doSendAnimatedText(getThingPos(pid), "REFLECT", 215)   
           
Roar(sumomdonego)
else
Roar(pid)
end

end
                        end
	return 0
elseif pokemon.spell == "Scary Face" then


	doSendMagicEffect(getThingPos(sumomdonego), 177)	
 local d = getCreaturesInRange(getThingPos(sumomdonego), 2, 2, 1, 0)
                       for _,pid in pairs(d) do
if isSummon(pid) then
if getPlayerStorageValue(cid, 3333) >= 1 then
if getPlayerStorageValue(cid, 6333) == getCreatureMaster(pid) and getPlayerStorageValue(cid, 1333) >= 1 then
                    if getPlayerStorageValue(pid, 34) >= 1 then
setPlayerStorageValue(pid, 34, 0)
doSendMagicEffect(getThingPos(pid), 135)
doSendAnimatedText(getThingPos(pid), "REFLECT", 215)   
           
fear(sumomdonego)
else
fear(pid)
end
end
elseif  isPlayerInParty(getCreatureMaster(pid),cid) then 
                    if getPlayerStorageValue(pid, 34) >= 1 then
setPlayerStorageValue(pid, 34, 0)
doSendMagicEffect(getThingPos(pid), 135)
doSendAnimatedText(getThingPos(pid), "REFLECT", 215)   
           
fear(sumomdonego)
else
fear(pid)
end
end
elseif isMonster(pid) then
                    if getPlayerStorageValue(pid, 34) >= 1 then
setPlayerStorageValue(pid, 34, 0)
doSendMagicEffect(getThingPos(pid), 135)
doSendAnimatedText(getThingPos(pid), "REFLECT", 215)   
           
fear(sumomdonego)
else
fear(pid)
end

end
                        end
	return 0


elseif pokemon.spell == "Sonic Boom" then


		
local pid = getCreatureTarget(cid)
if isSummon(pid) then
if getPlayerStorageValue(cid, 3333) >= 1 then
if getPlayerStorageValue(cid, 6333) == getCreatureMaster(pid) and getPlayerStorageValue(cid, 1333) >= 1 then
                    if getPlayerStorageValue(pid, 34) >= 1 then
setPlayerStorageValue(pid, 34, 0)
doSendMagicEffect(getThingPos(pid), 135)
doSendAnimatedText(getThingPos(pid), "REFLECT", 215)   
           
Confunso(sumomdonego)
else
Confunso(pid)
end
end
elseif  isPlayerInParty(getCreatureMaster(pid),cid) then 
                    if getPlayerStorageValue(pid, 34) >= 1 then
setPlayerStorageValue(pid, 34, 0)
doSendMagicEffect(getThingPos(pid), 135)
doSendAnimatedText(getThingPos(pid), "REFLECT", 215)   
           
Confunso(sumomdonego)
else
Confunso(pid)
end
end
elseif isMonster(pid) then
                    if getPlayerStorageValue(pid, 34) >= 1 then
setPlayerStorageValue(pid, 34, 0)
doSendMagicEffect(getThingPos(pid), 135)
doSendAnimatedText(getThingPos(pid), "REFLECT", 215)   
           
Confunso(sumomdonego)
else
Confunso(pid)
end

end
		doSendDistanceShoot(getThingPos(sumomdonego), getThingPos(pid), 24)

doAreaCombatHealth(sumomdonego, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 48)
	return 0	

elseif pokemon.spell == "Dizzy Punch" then


		
		local pid = getCreatureTarget(cid)
if isSummon(pid) then
if getPlayerStorageValue(cid, 3333) >= 1 then
if getPlayerStorageValue(cid, 6333) == getCreatureMaster(pid) and getPlayerStorageValue(cid, 1333) >= 1 then
                    if getPlayerStorageValue(pid, 34) >= 1 then
setPlayerStorageValue(pid, 34, 0)
doSendMagicEffect(getThingPos(pid), 135)
doSendAnimatedText(getThingPos(pid), "REFLECT", 215)   
           
Confunso(sumomdonego)
else
Confunso(pid)
end
end
elseif  isPlayerInParty(getCreatureMaster(pid),cid) then 
                    if getPlayerStorageValue(pid, 34) >= 1 then
setPlayerStorageValue(pid, 34, 0)
doSendMagicEffect(getThingPos(pid), 135)
doSendAnimatedText(getThingPos(pid), "REFLECT", 215)   
           
Confunso(sumomdonego)
else
Confunso(pid)
end
end
elseif isMonster(pid) then
                    if getPlayerStorageValue(pid, 34) >= 1 then
setPlayerStorageValue(pid, 34, 0)
doSendMagicEffect(getThingPos(pid), 135)
doSendAnimatedText(getThingPos(pid), "REFLECT", 215)   
           
Confunso(sumomdonego)
else
Confunso(pid)
end

end

	return 0

elseif pokemon.spell == "Acrobatics" then


		
local function blast1(params)
		if isCreature(params.cid) then
doAreaCombatHealth(params.cid, element, getThingPos(params.cid), params.ar, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), params.ef)
end
end
local function blast2(params)
		if isCreature(params.cid) then
doAreaCombatHealth(params.cid, element, getThingPos(params.cid), params.ar, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), params.ef)
end
end		


		
		

local sumonado = sumomdonego 
addEvent(blast1, 0, {cid = sumonado,ar = AREA_BLAST1,ef = 232})	
addEvent(blast1, 500, {cid = sumonado,ar = AREA_BLAST2,ef = 232})
addEvent(blast1, 800, {cid = sumonado,ar = AREA_BLAST3,ef = 232})
addEvent(blast2, 300, {cid = sumonado,ar = AREA_BLAST1,ef = 42})
addEvent(blast2, 800, {cid = sumonado,ar = AREA_BLAST2,ef = 42})
addEvent(blast2, 1100, {cid = sumonado,ar = AREA_BLAST3,ef = 42})
addEvent(blast1, 1500, {cid = sumonado,ar = AREA_BLAST1,ef = 232})	
addEvent(blast1, 1200, {cid = sumonado,ar = AREA_BLAST2,ef = 232})
addEvent(blast1, 1000, {cid = sumonado,ar = AREA_BLAST3,ef = 232})
addEvent(blast2, 1600, {cid = sumonado,ar = AREA_BLAST1,ef = 42})
addEvent(blast2, 1300, {cid = sumonado,ar = AREA_BLAST2,ef = 42})
addEvent(blast2, 1100, {cid = sumonado,ar = AREA_BLAST3,ef = 42})
	return 0
elseif pokemon.spell == "Windstorm" then


		
		posit = getThingPos(sumomdonego)
		local function storm(params)
		if isCreature(params.cid) then
		doAreaCombatHealth(params.cid, params.el, posit, params.ar,  -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), params.ef)
		
		end
		end
local sumonado = sumomdonego 
		addEvent(storm, 0, {cid = sumonado, el = element, ar = ws1, ef = 42})
		addEvent(storm, 500, {cid = sumonado, el = element, ar = ws2, ef = 232})
		addEvent(storm, 1000, {cid = sumonado, el = element, ar = ws3, ef = 42})
		addEvent(storm, 1500, {cid = sumonado, el = element, ar = ws4, ef = 232})
		addEvent(storm, 700, {cid = sumonado, el = null, ar = ws4, ef = CONST_ME_POFF})
		addEvent(storm, 1200, {cid = sumonado, el = null, ar = ws1, ef = CONST_ME_POFF})
		addEvent(storm, 1800, {cid = sumonado, el = null, ar = ws3, ef = CONST_ME_POFF})
	return 0
elseif pokemon.spell == "Poison Sting" then


		
		doSendDistanceShoot(getThingPos(sumomdonego), getThingPos(getCreatureTarget(cid)), 15)
		doAreaCombatHealth(sumomdonego, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 8)
		return 0
elseif pokemon.spell == "Vine Whip" then


		
		if getCreatureLookDir(sumomdonego) == 0 then
		area = vinen
		dano = whipn
		effect = 80
		elseif getCreatureLookDir(sumomdonego) == 1 then
		area = vinee
		dano = whipe
		effect = 83
		elseif getCreatureLookDir(sumomdonego) == 2 then
		area = vines
		dano = whips
		effect = 81
		elseif getCreatureLookDir(sumomdonego) == 3 then
		area = vinew
		dano = whipw
		effect = 82
		end
		doAreaCombatHealth(sumomdonego, null, getThingPos(sumomdonego), area, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), effect)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), dano, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 255)
	return 0

elseif pokemon.spell == "Raging Blast" then


		
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), rageblast1, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 181)
	local function damage(params)
		if isCreature(params.cid) then
		doAreaCombatHealth(params.cid, element, getThingPos(params.cid), params.x, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 36)
		end
end
local sumonado = sumomdonego 
		addEvent(damage, 200, {cid = sumonado, x = rageblast2})
		addEvent(damage, 400, {cid = sumonado, x = rageblast3})
		addEvent(damage, 600, {cid = sumonado, x = rageblast4})
                

         
	return 0
elseif pokemon.spell == "Leech Seed" then


		
		doSendDistanceShoot(getThingPos(sumomdonego), getThingPos(getCreatureTarget(cid)), 5)
		local alvo = getCreatureTarget(cid)
		local leecher = sumomdonego
		local function suck(params)
		if isCreature(params.leecher) then
		if isCreature(params.alvo) then
		doSendMagicEffect(getThingPos(params.leecher), 14)
		local life = getCreatureHealth(alvo)
		doAreaCombatHealth(params.leecher, element, getThingPos(params.alvo), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 45)
		local newlife = life - getCreatureHealth(params.alvo)
		if newlife >= 1 then
		doCreatureAddHealth(params.leecher, newlife)
		doSendAnimatedText(getThingPos(params.leecher), "+"..newlife.."", 35)
		end
		
		end
		end
		end
		addEvent(suck, 2000, {cid = cid, alvo = alvo,leecher = leecher})
		addEvent(suck, 4000, {cid = cid, alvo = alvo,leecher = leecher})
		addEvent(suck, 6000, {cid = cid, alvo = alvo,leecher = leecher})
		addEvent(suck, 8000, {cid = cid, alvo = alvo,leecher = leecher})
		addEvent(suck, 10000, {cid = cid, alvo = alvo,leecher = leecher})
		return 0
elseif pokemon.spell == "Leaf Blade" then


		
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), rageblast1, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 79)
		local function damage(params)
		if isCreature(params.cid) then
		doAreaCombatHealth(params.cid, element, getThingPos(params.cid), params.x, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 79)
		end
end
local sumonado = sumomdonego 
		addEvent(damage, 200, {cid = sumonado, x = rageblast2})
		addEvent(damage, 400, {cid = sumonado, x = rageblast3})
		addEvent(damage, 600, {cid = sumonado, x = rageblast4})
	return 0

elseif pokemon.spell == "Earthshock" then



	
	doAreaCombatHealth(sumomdonego, GROUNDDAMAGE, getThingPos(sumomdonego), eshock, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)
	local sps = getThingPos(sumomdonego)
	sps.x = sps.x+1
	sps.y = sps.y+1
	doSendMagicEffect(sps, 127)
	return 0
elseif pokemon.spell == "Multi-Slap" then



	
	doAreaCombatHealth(sumomdonego, NORMALDAMAGE, getThingPos(sumomdonego), eshock, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 3)
	
	return 0
	
elseif pokemon.spell == "Thundershock" then



		
		doSendDistanceShoot(getThingPos(sumomdonego), getThingPos(getCreatureTarget(cid)), 40)
		doAreaCombatHealth(sumomdonego, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 48)
		return 0
elseif pokemon.spell == "Solar Beam" then

				if getCreatureLookDir(sumomdonego) == 0 then
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolard1 ,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolar, 0, 0, 95)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolar2, 0, 0, 163)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolar3, 0, 0, 164)
		elseif getCreatureLookDir(sumomdonego) == 2 then
				doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wsolard2 ,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolar4 , 0, 0, 88)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolar5, 0, 0, 89)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolar6, 0, 0, 90)
		elseif getCreatureLookDir(sumomdonego) == 1 then
						doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wsolard4 ,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolakd, 0, 0, 87)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolapd, 0, 0, 91)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolatd, 0, 0, 92)
		elseif getCreatureLookDir(sumomdonego) == 3 then
doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wsolard3 ,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)
						doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolak , 0, 0, 93)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolap, 0, 0, 91)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolat, 0, 0, 94)
		end
		
	return 0
elseif pokemon.spell == "Charge Beam" then


				if getCreatureLookDir(sumomdonego) == 0 then
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolard1 ,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolar, 0, 0, 95)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolar2, 0, 0, 163)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolar3, 0, 0, 164)
		elseif getCreatureLookDir(sumomdonego) == 2 then
				doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wsolard2 ,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolar4 , 0, 0, 88)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolar5, 0, 0, 89)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolar6, 0, 0, 90)
		elseif getCreatureLookDir(sumomdonego) == 1 then
						doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wsolard4 ,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolakd, 0, 0, 87)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolapd, 0, 0, 91)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolatd, 0, 0, 92)
		elseif getCreatureLookDir(sumomdonego) == 3 then
doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wsolard3 ,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)
						doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolak , 0, 0, 93)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolap, 0, 0, 91)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolat, 0, 0, 94)
		end
		
	return 0
elseif pokemon.spell == "Zap Cannon" then


				if getCreatureLookDir(sumomdonego) == 0 then
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolard1 ,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolar, 0, 0, 95)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolar2, 0, 0, 163)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolar3, 0, 0, 164)
		elseif getCreatureLookDir(sumomdonego) == 2 then
				doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wsolard2 ,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolar4 , 0, 0, 88)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolar5, 0, 0, 89)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolar6, 0, 0, 90)
		elseif getCreatureLookDir(sumomdonego) == 1 then
						doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wsolard4 ,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolakd, 0, 0, 87)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolapd, 0, 0, 91)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolatd, 0, 0, 92)
		elseif getCreatureLookDir(sumomdonego) == 3 then
doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wsolard3 ,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)
						doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolak , 0, 0, 93)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolap, 0, 0, 91)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolat, 0, 0, 94)
		end
		
	return 0
elseif pokemon.spell == "Stun Spore" then




local d = getCreaturesInRange(getThingPos(sumomdonego), 2, 2, 1, 0)
 for _,pid in pairs(d) do
if isSummon(pid) then
if getPlayerStorageValue(cid, 3333) >= 1 then
if getPlayerStorageValue(cid, 6333) == getCreatureMaster(pid) and getPlayerStorageValue(cid, 1333) >= 1 then
                    if getPlayerStorageValue(pid, 34) >= 1 then
setPlayerStorageValue(pid, 34, 0)
doSendMagicEffect(getThingPos(pid), 135)
doSendAnimatedText(getThingPos(pid), "REFLECT", 215)   
 Paralize(sumomdonego)
end
else
Paralize(pid)

end
elseif  isPlayerInParty(getCreatureMaster(pid),cid) then 
                    if getPlayerStorageValue(pid, 34) >= 1 then
setPlayerStorageValue(pid, 34, 0)
doSendMagicEffect(getThingPos(pid), 135)
doSendAnimatedText(getThingPos(pid), "REFLECT", 215)   
           
Paralize(sumomdonego)
else
Paralize(pid)
end
end
elseif isMonster(pid) then
                    if getPlayerStorageValue(pid, 34) >= 1 then
setPlayerStorageValue(pid, 34, 0)
doSendMagicEffect(getThingPos(pid), 135)
doSendAnimatedText(getThingPos(pid), "REFLECT", 215)   
           
Paralize(sumomdonego)
else
Paralize(pid)
end

end
                        end		
	
doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), sleeparea, 0, 0, 85)
    	return 0

elseif pokemon.spell == "Whirlwind" then


		
		posit = getThingPos(sumomdonego)
		local function gust(params)
		if #getCreatureSummons(params.cid) >= 1 then
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, params.ar, params.br, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 42)
		
		end
		end
		local posicao = getThingPos(sumomdonego)
		if getCreatureLookDir(sumomdonego) == 0 then
		addEvent(gust, 0, {cid = cid, ar = {x=posicao.x, y=posicao.y-1, z=posicao.z}, br = sand1})
		addEvent(gust, 500, {cid = cid, ar = {x=posicao.x, y=posicao.y-2, z=posicao.z}, br = whirl3})
		addEvent(gust, 1000, {cid = cid, ar = {x=posicao.x, y=posicao.y-3, z=posicao.z}, br = whirl5})
		addEvent(gust, 1500, {cid = cid, ar = {x=posicao.x, y=posicao.y-4, z=posicao.z}, br = whirl5})
		elseif getCreatureLookDir(sumomdonego) == 2 then
		addEvent(gust, 0, {cid = cid, ar = {x=posicao.x, y=posicao.y+1, z=posicao.z}, br = sand1})
		addEvent(gust, 500, {cid = cid, ar = {x=posicao.x, y=posicao.y+2, z=posicao.z}, br = whirl3})
		addEvent(gust, 1000, {cid = cid, ar = {x=posicao.x, y=posicao.y+3, z=posicao.z}, br = whirl5})
		addEvent(gust, 1500, {cid = cid, ar = {x=posicao.x, y=posicao.y+4, z=posicao.z}, br = whirl5})
		elseif getCreatureLookDir(sumomdonego) == 1 then
		addEvent(gust, 0, {cid = cid, ar = {x=posicao.x+1, y=posicao.y, z=posicao.z}, br = sand1})
		addEvent(gust, 500, {cid = cid, ar = {x=posicao.x+2, y=posicao.y, z=posicao.z}, br = whirl32})
		addEvent(gust, 1000, {cid = cid, ar = {x=posicao.x+3, y=posicao.y, z=posicao.z}, br = whirl52})
		addEvent(gust, 1500, {cid = cid, ar = {x=posicao.x+4, y=posicao.y, z=posicao.z}, br = whirl52})
		elseif getCreatureLookDir(sumomdonego) == 3 then
		addEvent(gust, 0, {cid = cid, ar = {x=posicao.x-1, y=posicao.y, z=posicao.z}, br = sand1})
		addEvent(gust, 500, {cid = cid, ar = {x=posicao.x-2, y=posicao.y, z=posicao.z}, br = whirl32})
		addEvent(gust, 1000, {cid = cid, ar = {x=posicao.x-3, y=posicao.y, z=posicao.z}, br = whirl52})
		addEvent(gust, 1500, {cid = cid, ar = {x=posicao.x-4, y=posicao.y, z=posicao.z}, br = whirl52})
		end
	return 0

elseif pokemon.spell == "Sing" then




local d = getCreaturesInRange(getThingPos(sumomdonego), 3, 3, 1, 0)
                      	
   for _,pid in pairs(d) do
if isSummon(pid) then
if getPlayerStorageValue(cid, 3333) >= 1 then
if getPlayerStorageValue(cid, 6333) == getCreatureMaster(pid) and getPlayerStorageValue(cid, 1333) >= 1 then
                    if getPlayerStorageValue(pid, 34) >= 1 then
setPlayerStorageValue(pid, 34, 0)
doSendMagicEffect(getThingPos(pid), 135)
doSendAnimatedText(getThingPos(pid), "REFLECT", 215)   
           
Sing(sumomdonego)
else
Sing(pid)
end
end
elseif  isPlayerInParty(getCreatureMaster(pid),cid) then 
                    if getPlayerStorageValue(pid, 34) >= 1 then
setPlayerStorageValue(pid, 34, 0)
doSendMagicEffect(getThingPos(pid), 135)
doSendAnimatedText(getThingPos(pid), "REFLECT", 215)   
           
Sing(sumomdonego)
else
Sing(pid)
end
end
elseif isMonster(pid) then
                    if getPlayerStorageValue(pid, 34) >= 1 then
setPlayerStorageValue(pid, 34, 0)
doSendMagicEffect(getThingPos(pid), 135)
doSendAnimatedText(getThingPos(pid), "REFLECT", 215)   
           
Sing(sumomdonego)
else
Sing(pid)
end

end
                        end		
doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), AREA_CIRCLE3X3, 0, 0, 22)
    	return 0


elseif pokemon.spell == "Melody" then




local d = getCreaturesInRange(getThingPos(sumomdonego), 3, 3, 1, 0)
                       for _,pid in pairs(d) do
if isSummon(pid) then
if getPlayerStorageValue(cid, 3333) >= 1 then
if getPlayerStorageValue(cid, 6333) == getCreatureMaster(pid) and getPlayerStorageValue(cid, 1333) >= 1 then
                    if getPlayerStorageValue(pid, 34) >= 1 then
setPlayerStorageValue(pid, 34, 0)
doSendMagicEffect(getThingPos(pid), 135)
doSendAnimatedText(getThingPos(pid), "REFLECT", 215)   
           
Sing(sumomdonego)
else
Sing(pid)
end
end
elseif  isPlayerInParty(getCreatureMaster(pid),cid) then 
                    if getPlayerStorageValue(pid, 34) >= 1 then
setPlayerStorageValue(pid, 34, 0)
doSendMagicEffect(getThingPos(pid), 135)
doSendAnimatedText(getThingPos(pid), "REFLECT", 215)   
           
Sing(sumomdonego)
else
Sing(pid)
end
end
elseif isMonster(pid) then
                    if getPlayerStorageValue(pid, 34) >= 1 then
setPlayerStorageValue(pid, 34, 0)
doSendMagicEffect(getThingPos(pid), 135)
doSendAnimatedText(getThingPos(pid), "REFLECT", 215)   
           
Sing(sumomdonego)
else
Sing(pid)
end

end
                        end		
doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), AREA_CIRCLE3X3, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 32)
    	return 0

elseif pokemon.spell == "Stomp" then




local d = getCreaturesInRange(getThingPos(sumomdonego), 2, 2, 1, 0)
                       	
        for _,pid in pairs(d) do
if isSummon(pid) then
if getPlayerStorageValue(cid, 3333) >= 1 then
if getPlayerStorageValue(cid, 6333) == getCreatureMaster(pid) and getPlayerStorageValue(cid, 1333) >= 1 then
Paralize(pid)
end
elseif  isPlayerInParty(getCreatureMaster(pid),cid) then 
Paralize(pid)
end
elseif isMonster(pid) then
                               Paralize(pid)

end
                        end	
doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), sleeparea, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 118)
    	return 0
elseif pokemon.spell == "Sleep Powder" then



                        local d = getCreaturesInRange(getThingPos(sumomdonego), 2, 2, 1, 0)
                    
                    for _,pid in pairs(d) do
if isSummon(pid) then
if getPlayerStorageValue(cid, 3333) >= 1 then
if getPlayerStorageValue(cid, 6333) == getCreatureMaster(pid) and getPlayerStorageValue(cid, 1333) >= 1 then
                    if getPlayerStorageValue(pid, 34) >= 1 then
setPlayerStorageValue(pid, 34, 0)
doSendMagicEffect(getThingPos(pid), 135)
doSendAnimatedText(getThingPos(pid), "REFLECT", 215)   
           
Sleep(sumomdonego)
else
Sleep(pid)
end
end
elseif  isPlayerInParty(getCreatureMaster(pid),cid) then 
                 if getPlayerStorageValue(pid, 34) >= 1 then
setPlayerStorageValue(pid, 34, 0)
doSendMagicEffect(getThingPos(pid), 135)
doSendAnimatedText(getThingPos(pid), "REFLECT", 215)   
           
Sleep(sumomdonego)
else
Sleep(pid)
end

end
elseif isMonster(pid) then
                 if getPlayerStorageValue(pid, 34) >= 1 then
setPlayerStorageValue(pid, 34, 0)
doSendMagicEffect(getThingPos(pid), 135)
doSendAnimatedText(getThingPos(pid), "REFLECT", 215)   
           
Sleep(sumomdonego)
else
Sleep(pid)
end


end
                        end
doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), sleeparea,0,0, 27)
	return 0

elseif pokemon.spell == "Spider Web" then



                        local d = getCreaturesInRange(getThingPos(sumomdonego), 2, 2, 1, 0)
                    
                    for _,pid in pairs(d) do
if isSummon(pid) then
if getPlayerStorageValue(cid, 3333) >= 1 then
if getPlayerStorageValue(cid, 6333) == getCreatureMaster(pid) and getPlayerStorageValue(cid, 1333) >= 1 then
                    if getPlayerStorageValue(pid, 34) >= 1 then
setPlayerStorageValue(pid, 34, 0)
doSendMagicEffect(getThingPos(pid), 135)
doSendAnimatedText(getThingPos(pid), "REFLECT", 215)   
           
Sleep(sumomdonego)
else
Sleep(pid)
end
end
elseif  isPlayerInParty(getCreatureMaster(pid),cid) then 
                 if getPlayerStorageValue(pid, 34) >= 1 then
setPlayerStorageValue(pid, 34, 0)
doSendMagicEffect(getThingPos(pid), 135)
doSendAnimatedText(getThingPos(pid), "REFLECT", 215)   
           
Sleep(sumomdonego)
else
Sleep(pid)
end

end
elseif isMonster(pid) then
                 if getPlayerStorageValue(pid, 34) >= 1 then
setPlayerStorageValue(pid, 34, 0)
doSendMagicEffect(getThingPos(pid), 135)
doSendAnimatedText(getThingPos(pid), "REFLECT", 215)   
           
Sleep(sumomdonego)
else
Sleep(pid)
end


end
                        end
doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), sleeparea,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 27)
	return 0

elseif pokemon.spell == "Hypnosis" then


doSendMagicEffect(getThingPos(getCreatureTarget(cid)), 136)
                        local summons = getCreatureTarget(cid)

                    if getPlayerStorageValue(summons, 34) >= 1 then
setPlayerStorageValue(summons, 34, 0)
doSendMagicEffect(getThingPos(summons), 135)
doSendAnimatedText(getThingPos(summons), "REFLECT", 215)   
                doSendMagicEffect(getThingPos(sumomdonego), 136)             
   Hypnosis(sumomdonego)
return 0
end
if isMonster(summons) then
                  Hypnosis(summons)      
end

return 0
elseif pokemon.spell == "Lick" then



doSendMagicEffect(getThingPos(getCreatureTarget(cid)), 145)
                        local summons = getCreatureTarget(cid)

                    if getPlayerStorageValue(summons, 34) >= 1 then
setPlayerStorageValue(summons, 34, 0)
doSendMagicEffect(getThingPos(summons), 135)
doSendAnimatedText(getThingPos(summons), "REFLECT", 215)   
                doSendMagicEffect(getThingPos(sumomdonego), 145)             
Paralize(sumomdonego)
return 0
end
if isMonster(summons) then
                  Paralize(summons)   
end
                      
	return 0
elseif pokemon.spell == "Invisible" then



                        local summons = sumomdonego
doSendMagicEffect(getCreaturePosition(summons), 219)
--local outfitx = {lookType = 0, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0}
doSetCreatureOutfit(summons, {lookType = 0}, 3000)
--doSetMonsterOutfit(summons, 'Tall Grass', 3000)                      
    --doSetItemOutfit(summons, outfitx, summons)

                            doAddCondition(summons , conditioninvi)
                       
                      
	return 0

elseif pokemon.spell == "Element Hand" then



                        local summons = sumomdonego
doSendMagicEffect(getCreaturePosition(summons), 219)
if getCreatureName(sumomdonego) == "Hitmonchan" then
		if isInArray({"631"}, getCreatureOutfit(sumomdonego).lookType) then
outfitx = {lookType = 630, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0}

doCreatureChangeOutfit(summons, outfitx)                      
 elseif isInArray({"630"}, getCreatureOutfit(sumomdonego).lookType) then
outfitx = {lookType = 629, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0}

doCreatureChangeOutfit(summons, outfitx) 
 elseif isInArray({"629"}, getCreatureOutfit(sumomdonego).lookType) then
outfitx = {lookType = 628, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0}

doCreatureChangeOutfit(summons, outfitx)                       


        
        
 elseif isInArray({"628"}, getCreatureOutfit(sumomdonego).lookType) then
outfitx = {lookType = 631, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0}

doCreatureChangeOutfit(summons, outfitx)                       
 
        
       end 
elseif getCreatureName(sumomdonego) == "Elite Hitmonchan" then
		if isInArray({"625"}, getCreatureOutfit(sumomdonego).lookType) then
outfitx = {lookType = 624, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0}

doCreatureChangeOutfit(summons, outfitx)                      
 elseif isInArray({"624"}, getCreatureOutfit(sumomdonego).lookType) then
outfitx = {lookType = 626, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0}

doCreatureChangeOutfit(summons, outfitx) 
 elseif isInArray({"626"}, getCreatureOutfit(sumomdonego).lookType) then
outfitx = {lookType = 627, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0}

doCreatureChangeOutfit(summons, outfitx)                       


        
        
 elseif isInArray({"627"}, getCreatureOutfit(sumomdonego).lookType) then
outfitx = {lookType = 625, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0}

doCreatureChangeOutfit(summons, outfitx)                       
 
        
       end 
end            
	return 0









elseif pokemon.spell == "Bug Bite" then



		
		doAreaCombatHealth(sumomdonego, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 3)
		return 0

elseif pokemon.spell == "Crabhammer" then



		
		doAreaCombatHealth(sumomdonego, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 146)
		return 0

elseif pokemon.spell == "Guillotine" then



		
doAreaCombatHealth(sumomdonego, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 146)
		local function guilo(params)
			
if isCreature(getCreatureTarget(params.cid)) then
			doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(params.cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 156)
			end
			end
local sumonado = sumomdonego 
		addEvent(guilo, 300, {cid = sumonado})
		

		return 0
elseif pokemon.spell == "Horn Drill" then


		
		
			local function damage(params)
		if isCreature(params.cid) then
			doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(params.cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 25)
			end
			end
		local function damage2(params)
			if isCreature(params.cid) then
			doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(params.cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 25)
		end
			end
local sumonado = sumomdonego 
		addEvent(damage, 100, {cid = sumonado})
		addEvent(damage2, 600, {cid = sumonado})

	return 0

elseif pokemon.spell == "Leaf Storm" then


		

	
	
		
local function leaf1x(params)
		if isCreature(params.cid) then
				doAreaCombatHealth(params.cid, element, getThingPos(params.cid), leaf1, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 79)
	end
end
		
local function leaf2x(params)
		if isCreature(params.cid) then
				doAreaCombatHealth(params.cid, element, getThingPos(params.cid), leaf2, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 79)
	end
end
local function leaf3x(params)
		if isCreature(params.cid) then
				doAreaCombatHealth(params.cid, element, getThingPos(params.cid), leaf3, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 79)
	end
end

local function leaf4x(params)
		if isCreature(params.cid) then
				doAreaCombatHealth(params.cid, element, getThingPos(params.cid), leaf4, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 79)
	end
end
local function leaf5x(params)
		if isCreature(params.cid) then
				doAreaCombatHealth(params.cid, element, getThingPos(params.cid), leaf5, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 79)
	end
end

local sumonado = sumomdonego 
	
	       addEvent(leaf1x, 100, {cid = sumonado})
               addEvent(leaf2x, 300, {cid = sumonado})
               addEvent(leaf3x, 600, {cid = sumonado})
               addEvent(leaf4x, 800, {cid = sumonado})
               addEvent(leaf5x, 900, {cid = sumonado})

	       addEvent(leaf1x, 1100, {cid = sumonado})
               addEvent(leaf2x, 1300, {cid = sumonado})
               addEvent(leaf3x, 1500, {cid = sumonado})
               addEvent(leaf4x, 1700, {cid = sumonado})
               addEvent(leaf5x, 1800, {cid = sumonado})
	return 0

elseif pokemon.spell == "Selfdestruct" then



		
		local function death(params)
		if isCreature(params.cid) then
local damage = getCreatureHealth(params.cid)
doAreaCombatHealth(params.cid, element, getThingPos(sumomdonego), AREA_CIRCLE3X3, -damage, -damage, 181)
		doCreatureAddHealth(params.cid, -getCreatureHealth(params.cid))
if getPlayerStorageValue(cid, 8888) >= 1 then



local player = cid
local monstrohe = getPlayerStorageValue(cid, 6569)
local spd = getCreatureBaseSpeed(monstrohe)
setPlayerStorageValue(monstrohe, 8, 1)


doSendAnimatedText(getCreaturePosition(player), "Poke Down", 210)
local cont = getPlayerStorageValue(player, 4578)
local numeromonstro = getPlayerStorageValue(player, 7787)
if getPlayerStorageValue(cid, 8333) >= numeromonstro then
local npc = getPlayerStorageValue(cid, 9999)
local posx = getPlayerStorageValue(cid, 4982)
local posy = getPlayerStorageValue(cid, 4983)
local posz = getPlayerStorageValue(cid, 4984)
local pos = getCreaturePosition(cid)
	pos.stackpos = 0
	
	pos.z = posz
	pos.x = posx
	pos.y = posy

local pos2 = getCreaturePosition(cid)
	pos2.stackpos = 0
	
	pos2.z = posz
	pos2.x = posx
	pos2.y = posy+2

if #getCreatureSummons(cid) == 1 then
doTeleportThing(getCreatureSummons(cid)[1], pos2)
end

doTeleportThing(npc, pos)
doTeleportThing(cid, pos2)

--setPlayerStorageValue(cid, 9999, 0)
--setPlayerStorageValue(cid, 8888, 0)
setPlayerStorageValue(npc, 5000, 0)
--setPlayerStorageValue(cid, 4578, 0)
--setPlayerStorageValue(cid, 8333, 0)
--setPlayerStorageValue(cid, 19987,0)
doCleanStorage(cid,19987)
doCleanStorage(cid,8333)
doCleanStorage(cid,4578)
doCleanStorage(cid,8888)
doCleanStorage(cid,9999)
local nome = getCreatureName(cid) 
local criatura = getPlayerStorageValue(cid, 6569)
doSendMagicEffect(getCreaturePosition(criatura), 10)
doRemoveCreature(criatura)
setPlayerGroupId(cid, 1)
doCreatureSay(npc,  "Hey "..nome.." you are a loser Trainer", 1)
return True
end
local function gymback(params)
if getPlayerStorageValue(player, 6445) >= 1 then
local npc = getPlayerStorageValue(player, 9999)
setPlayerStorageValue(player, 9999, 0)
setPlayerStorageValue(player, 8888, 0)
setPlayerStorageValue(npc, 5000, 0)
setPlayerStorageValue(player, 4578, 0)
setPlayerStorageValue(player, 8333, 0)
local nome = getCreatureName(player) 
local criatura = getPlayerStorageValue(player, 6569)
doSendMagicEffect(getCreaturePosition(criatura), 10)
doRemoveCreature(criatura)
doCreatureSetNoMove(player, 0)
doCreatureSay(npc,  "Hey "..nome.." you are a loser Trainer", 1)
end
end

setPlayerStorageValue(player, 6445, 1)
doSendAnimatedText(getCreaturePosition(player), "Poke Down", 210)
doPlayerSendTextMessage(player, MESSAGE_STATUS_CONSOLE_BLUE, "You have 20 seconds to go you pokemon or lose duel")

local function ginasio19(params)
if getPlayerStorageValue(player, 6445) >= 1 then

doPlayerSendTextMessage(player, MESSAGE_STATUS_CONSOLE_BLUE, "You have 1 seconds to go you pokemon or lose battle")
addEvent(gymback,1000, cid)
end

end

local function ginasio18(params)
if getPlayerStorageValue(player, 6445) >= 1 then

doPlayerSendTextMessage(player, MESSAGE_STATUS_CONSOLE_BLUE, "You have 2 seconds to go you pokemon or lose battle")
addEvent(ginasio19,1000, cid)
end

end

local function ginasio17(params)
if getPlayerStorageValue(player, 6445) >= 1 then

doPlayerSendTextMessage(player, MESSAGE_STATUS_CONSOLE_BLUE, "You have 3 seconds to go you pokemon or lose battle")
addEvent(ginasio18,1000, cid)
end

end

local function ginasio16(params)
if getPlayerStorageValue(player, 6445) >= 1 then

doPlayerSendTextMessage(player, MESSAGE_STATUS_CONSOLE_BLUE, "You have 4 seconds to go you pokemon or lose battle")
addEvent(ginasio17,1000, cid)
end

end
local function ginasio15(params)
if getPlayerStorageValue(player, 6445) >= 1 then

doPlayerSendTextMessage(player, MESSAGE_STATUS_CONSOLE_BLUE, "You have 5 seconds to go you pokemon or lose battle")
addEvent(ginasio16,1000, cid)
end

end


local function ginasio14(params)
if getPlayerStorageValue(player, 6445) >= 1 then

doPlayerSendTextMessage(player, MESSAGE_STATUS_CONSOLE_BLUE, "You have 6 seconds to go you pokemon or lose battle")
addEvent(ginasio15,1000, cid)
end

end

local function ginasio13(params)
if getPlayerStorageValue(player, 6445) >= 1 then

doPlayerSendTextMessage(player, MESSAGE_STATUS_CONSOLE_BLUE, "You have 7 seconds to go you pokemon or lose battle")
addEvent(ginasio14,1000, cid)
end

end


local function ginasio12(params)
if getPlayerStorageValue(player, 6445) >= 1 then

doPlayerSendTextMessage(player, MESSAGE_STATUS_CONSOLE_BLUE, "You have 8 seconds to go you pokemon or lose battle")
addEvent(ginasio13,1000, cid)
end

end


local function ginasio11(params)
if getPlayerStorageValue(player, 6445) >= 1 then

doPlayerSendTextMessage(player, MESSAGE_STATUS_CONSOLE_BLUE, "You have 9 seconds to go you pokemon or lose battle")
addEvent(ginasio12,1000, cid)
end

end

local function ginasio10(params)
if getPlayerStorageValue(player, 6445) >= 1 then

doPlayerSendTextMessage(player, MESSAGE_STATUS_CONSOLE_BLUE, "You have 10 seconds to go you pokemon or lose battle")
addEvent(ginasio11,1000, cid)
end

end


local function ginasio9(params)
if getPlayerStorageValue(player, 6445) >= 1 then

doPlayerSendTextMessage(player, MESSAGE_STATUS_CONSOLE_BLUE, "You have 11 seconds to go you pokemon or lose battle")
addEvent(ginasio10,1000, cid)
end

end

local function ginasio8(params)
if getPlayerStorageValue(player, 6445) >= 1 then

doPlayerSendTextMessage(player, MESSAGE_STATUS_CONSOLE_BLUE, "You have 12 seconds to go you pokemon or lose battle")
addEvent(ginasio9,1000, cid)
end

end

local function ginasio7(params)
if getPlayerStorageValue(player, 6445) >= 1 then

doPlayerSendTextMessage(player, MESSAGE_STATUS_CONSOLE_BLUE, "You have 13 seconds to go you pokemon or lose battle")
addEvent(ginasio8,1000, cid)
end

end

local function ginasio6(params)
if getPlayerStorageValue(player, 6445) >= 1 then

doPlayerSendTextMessage(player, MESSAGE_STATUS_CONSOLE_BLUE, "You have 14 seconds to go you pokemon or lose battle")
addEvent(ginasio7,1000, cid)
end

end

local function ginasio5(params)
if getPlayerStorageValue(player, 6445) >= 1 then

doPlayerSendTextMessage(player, MESSAGE_STATUS_CONSOLE_BLUE, "You have 15 seconds to go you pokemon or lose battle")
addEvent(ginasio6,1000, cid)
end

end

local function ginasio4(params)
if getPlayerStorageValue(player, 6445) >= 1 then

doPlayerSendTextMessage(player, MESSAGE_STATUS_CONSOLE_BLUE, "You have 16 seconds to go you pokemon or lose battle")
addEvent(ginasio5,1000, cid)
end

end

local function ginasio3(params)
if getPlayerStorageValue(player, 6445) >= 1 then

doPlayerSendTextMessage(player, MESSAGE_STATUS_CONSOLE_BLUE, "You have 17 seconds to go you pokemon or lose battle")
addEvent(ginasio4,1000, cid)
end

end

local function ginasio2(params)
if getPlayerStorageValue(player, 6445) >= 1 then

doPlayerSendTextMessage(player, MESSAGE_STATUS_CONSOLE_BLUE, "You have 18 seconds to go you pokemon or lose battle")
addEvent(ginasio3,1000, cid)
end

end
local function ginasio(params)
if getPlayerStorageValue(player, 6445) >= 1 then

doPlayerSendTextMessage(player, MESSAGE_STATUS_CONSOLE_BLUE, "You have 19 seconds to go you pokemon or lose battle")
addEvent(ginasio2,1000, cid)
end

end
addEvent(ginasio,1000, cid)


end

end
		end
		local function explode(params)
		if isCreature(params.cid) then
		doSendMagicEffect(getThingPos(params.cid),29)
end
		end
		addEvent(explode, 450, {cid = sumomdonego})
	addEvent(explode, 1050, {cid = sumomdonego})
	addEvent(explode, 2050, {cid = sumomdonego})
	addEvent(explode, 3050, {cid = sumomdonego})
addEvent(explode, 3550, {cid = sumomdonego})
addEvent(explode, 4050, {cid = sumomdonego})
addEvent(explode, 4550, {cid = sumomdonego})
addEvent(death, 4900, {cid = sumomdonego})




	return 0

elseif pokemon.spell == "Harden" then


		
		
		setPlayerStorageValue(sumomdonego, 4, 1)
		
			local function efect(params)
			if isCreature(params.cid) then
		
			doSendMagicEffect(getThingPos(params.cid), 144)
			
			end
			end
		local function chard(params)
		if isCreature(params.cid) then
		if getPlayerStorageValue(params.cid, 4) >= 1 then
		setPlayerStorageValue(params.cid, 4, -1)
		end
		end
		end
local sumonado = sumomdonego 
		addEvent(efect, 100, {cid = sumonado})
		addEvent(efect, 1600, {cid = sumonado})
		addEvent(efect, 3100, {cid = sumonado})
		addEvent(efect, 4600, {cid = sumonado})
		addEvent(efect, 6100, {cid = sumonado})
		addEvent(efect, 7600, {cid = sumonado})
		addEvent(chard, 8000, {cid = sumonado})		
	return 0

elseif pokemon.spell == "Rock Slide" then


		
		local posalvo = getThingPos(getCreatureTarget(cid))
		local boltalvo = getCreatureTarget(cid)
		posalvo.x = posalvo.x-2
		posalvo.y = posalvo.y-6
		doSendDistanceShoot(posalvo, getThingPos(getCreatureTarget(cid)), 11)
		local function bolt(params)
		if isCreature(params.cid) then
		if isCreature(getCreatureTarget(params.cid)) then
		if getCreatureTarget(params.cid) == params.boltalvo then
		doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(params.cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 44)
		end
		end
		end
		end
	local function bolt2(params)
		if isCreature(params.cid) then
		if isCreature(getCreatureTarget(params.cid)) then
		if getCreatureTarget(params.cid) == params.boltalvo then
		doSendDistanceShoot(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid)), 11)
		doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(params.cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 3)
		end
		end
		end
		end

local sumonado = sumomdonego 
		addEvent(bolt2, 500, {cid = sumonado, boltalvo = boltalvo})
addEvent(bolt, 800, {cid = sumonado, boltalvo = boltalvo})
	return 0

elseif pokemon.spell == "Dragon Rush" then


		

	
		
		

		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), psy1, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 253)



		

local function go1(params)
if isCreature(params.cid) then
		doAreaCombatHealth(params.cid, element, getThingPos(params.cid), psy1, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 5)
	end
end
local sumonado = sumomdonego 
		addEvent(go1, 500, {cid = sumonado})

		return 0

elseif pokemon.spell == "Flame Blast" then





local function blast1(params)
		if isCreature(params.cid) then
doAreaCombatHealth(params.cid, element, getThingPos(params.cid), params.ar, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), params.ef)
end
end
local function blast2(params)
		if isCreature(params.cid) then
doAreaCombatHealth(params.cid, element, getThingPos(params.cid), params.ar, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), params.ef)
end
end		


		
		

local sumonado = sumomdonego 
addEvent(blast1, 0, {cid = sumonado,ar = AREA_BLAST1,ef = 181})	
addEvent(blast1, 500, {cid = sumonado,ar = AREA_BLAST2,ef = 181})
addEvent(blast1, 800, {cid = sumonado,ar = AREA_BLAST3,ef = 181})
addEvent(blast2, 300, {cid = sumonado,ar = AREA_BLAST1,ef = 179})
addEvent(blast2, 800, {cid = sumonado,ar = AREA_BLAST2,ef = 179})
addEvent(blast2, 1100, {cid = sumonado,ar = AREA_BLAST3,ef = 179})
addEvent(blast1, 1500, {cid = sumonado,ar = AREA_BLAST1,ef = 181})	
addEvent(blast1, 1200, {cid = sumonado,ar = AREA_BLAST2,ef = 181})
addEvent(blast1, 1000, {cid = sumonado,ar = AREA_BLAST3,ef = 181})
addEvent(blast2, 1600, {cid = sumonado,ar = AREA_BLAST1,ef = 179})
addEvent(blast2, 1300, {cid = sumonado,ar = AREA_BLAST2,ef = 179})
addEvent(blast2, 1100, {cid = sumonado,ar = AREA_BLAST3,ef = 179})


		

return 0

elseif pokemon.spell == "Giga Impact" then






	
doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), AREA_GIGAEF, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 127)	
doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), AREA_GIGA, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 255)
		


	
		

return 0

elseif pokemon.spell == "Fire Sprint" then





		
	


local function go(params)
		if isCreature(params.cid) then
		doAreaCombatHealth(params.cid, element, getThingPos(params.cid), combat_arr2, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 179)
	end
end
local sumonado = sumomdonego 
		addEvent(go, 1000, {cid = sumonado})


local sumonado = sumomdonego 

	addEvent(go, 300, {cid = sumonado})
	
	
		

return 0

elseif pokemon.spell == "Hyper Beam" then


	
		if getCreatureLookDir(sumomdonego) == 0 then
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wg1n, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 152)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wg2n, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 158)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wg3n, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 156)

		elseif getCreatureLookDir(sumomdonego) == 2 then
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wg1s, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 151)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wg2s, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 158)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wg3s, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 155)
		elseif getCreatureLookDir(sumomdonego) == 1 then
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wg1e, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 149)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wg2e, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 157)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wg3e, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 153)
		elseif getCreatureLookDir(sumomdonego) == 3 then
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wg1w, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 150)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wg2w, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 157)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wg3w, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 154)
		end
		
	return 0

elseif pokemon.spell == "Ice Beam" then


	
		if getCreatureLookDir(sumomdonego) == 0 then
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wg1n, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 99)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wg2n, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 105)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wg3n, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 103)
		elseif getCreatureLookDir(sumomdonego) == 2 then
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wg1s, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 98)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wg2s, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 105)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wg3s, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 102)
		elseif getCreatureLookDir(sumomdonego) == 1 then
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wg1e, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 96)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wg2e, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 104)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wg3e, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 100)
		elseif getCreatureLookDir(sumomdonego) == 3 then
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wg1w, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 97)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wg2w, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 104)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wg3w, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 101)
		end
		
	return 0

elseif pokemon.spell == "Tri Flames" then


	
		if getCreatureLookDir(sumomdonego) == 0 then
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), tri1, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 6)

		elseif getCreatureLookDir(sumomdonego) == 2 then
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), tri2, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 6)
		elseif getCreatureLookDir(sumomdonego) == 1 then
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), tri3, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 6)
		elseif getCreatureLookDir(sumomdonego) == 3 then
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), tri4, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 6)
		end
		
	return 0

elseif pokemon.spell == "Dragon Breath" then



		
		posit = getThingPos(sumomdonego)
		local function gust(params)
		if isCreature(params.cid) then
		doAreaCombatHealth(params.cid, null, params.ar, sand1, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), params.eee)
		doAreaCombatHealth(params.cid, element, params.ar, arr1, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 253)

		else
		end
		end
		local posicao = getThingPos(sumomdonego)
		if getCreatureLookDir(sumomdonego) == 0 then
		addEvent(gust, 0, {cid = sumomdonego, eee = 5, ar = {x=posicao.x, y=posicao.y-1, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = sumomdonego, eee = 5, ar = {x=posicao.x, y=posicao.y-2, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-1, z=posicao.z}})
		addEvent(gust, 600, {cid = sumomdonego, eee = 5, ar = {x=posicao.x, y=posicao.y-3, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-2, z=posicao.z}})
		addEvent(gust, 900, {cid = sumomdonego, eee = 5, ar = {x=posicao.x, y=posicao.y-4, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-3, z=posicao.z}})
		addEvent(gust, 1200, {cid = sumomdonego, eee = 5, ar = {x=posicao.x, y=posicao.y-5, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-4, z=posicao.z}})
		addEvent(gust, 1500, {cid = sumomdonego, eee = 5, ar = {x=posicao.x, y=posicao.y-6, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-5, z=posicao.z}})
		elseif getCreatureLookDir(sumomdonego) == 2 then
		addEvent(gust, 0, {cid = sumomdonego, eee = 5, ar = {x=posicao.x, y=posicao.y+1, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = sumomdonego, eee = 5, ar = {x=posicao.x, y=posicao.y+2, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+1, z=posicao.z}})
		addEvent(gust, 600, {cid = sumomdonego, eee = 5, ar = {x=posicao.x, y=posicao.y+3, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+2, z=posicao.z}})
		addEvent(gust, 900, {cid = sumomdonego, eee = 5, ar = {x=posicao.x, y=posicao.y+4, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+3, z=posicao.z}})
		addEvent(gust, 1200, {cid = sumomdonego, eee = 5, ar = {x=posicao.x, y=posicao.y+5, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+4, z=posicao.z}})
		addEvent(gust, 1500, {cid = sumomdonego, eee = 5, ar = {x=posicao.x, y=posicao.y+6, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+5, z=posicao.z}})
		elseif getCreatureLookDir(sumomdonego) == 1 then
		addEvent(gust, 0, {cid = sumomdonego, eee = 5, ar = {x=posicao.x+1, y=posicao.y, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = sumomdonego, eee = 5, ar = {x=posicao.x+2, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+1, y=posicao.y, z=posicao.z}})
		addEvent(gust, 600, {cid = sumomdonego, eee = 5, ar = {x=posicao.x+3, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+2, y=posicao.y, z=posicao.z}})
		addEvent(gust, 900, {cid = sumomdonego, eee = 5, ar = {x=posicao.x+4, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+3, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1200, {cid = sumomdonego, eee = 5, ar = {x=posicao.x+5, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+4, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1500, {cid = sumomdonego, eee = 5, ar = {x=posicao.x+6, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+5, y=posicao.y, z=posicao.z}})
		elseif getCreatureLookDir(sumomdonego) == 3 then
		addEvent(gust, 0, {cid = sumomdonego, eee = 5, ar = {x=posicao.x-1, y=posicao.y, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = sumomdonego, eee = 5, ar = {x=posicao.x-2, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-1, y=posicao.y, z=posicao.z}})
		addEvent(gust, 600, {cid = sumomdonego, eee = 5, ar = {x=posicao.x-3, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-2, y=posicao.y, z=posicao.z}})
		addEvent(gust, 900, {cid = sumomdonego, eee = 5, ar = {x=posicao.x-4, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-3, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1200, {cid = sumomdonego, eee = 5, ar = {x=posicao.x-5, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-4, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1500, {cid = sumomdonego, eee = 5, ar = {x=posicao.x-6, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-5, y=posicao.y, z=posicao.z}})
		end
		return 0

	elseif pokemon.spell == "Dragon Pulse" then



		
			local function throw(params)
			if isCreature(params.cid) then
		if isCreature(getCreatureTarget(params.cid)) then
			doSendDistanceShoot(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid)),24)
			end
end
			end
			local function damage(params)
			if isCreature(params.cid) then
		if isCreature(getCreatureTarget(params.cid)) then
			doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(params.cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 136)
			end
end
			end
local sumonado = sumomdonego 
		addEvent(damage, 100, {cid = sumonado})
		addEvent(damage, 600, {cid = sumonado})
		addEvent(throw, 0, {cid = sumonado})
		addEvent(throw, 550, {cid = sumonado})
		return 0

elseif pokemon.spell == "Egg Bomb" then


		
			local function throw(params)
			if isCreature(params.cid) then
		if isCreature(getCreatureTarget(params.cid)) then
		doSendDistanceShoot(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid)),3)
			end
end
			end
			local function damage(params)
			if isCreature(params.cid) then
		if isCreature(params.cid) then
			doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(params.cid)), egg, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 5)
			end
end
			end
local sumonado = sumomdonego 
		addEvent(damage, 100, {cid = sumonado})
		addEvent(throw, 0, {cid = sumonado})
		return 0


	elseif pokemon.spell == "Acid" then


	
	
		doSendDistanceShoot(getThingPos(sumomdonego), getThingPos(getCreatureTarget(cid)), 14)
		doAreaCombatHealth(sumomdonego, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 20)
			return 0
elseif pokemon.spell == "Poison Bomb" then

		
		
		doSendDistanceShoot(getThingPos(sumomdonego), getThingPos(getCreatureTarget(cid)), 14)
		doAreaCombatHealth(sumomdonego, element, getThingPos(getCreatureTarget(cid)), bomb, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 114)
	return 0


elseif pokemon.spell == "Poison Gas" then


		
		
local function gas(params)
	if isCreature(params.cid) then
	doAreaCombatHealth(params.cid, element, getThingPos(params.cid), confusionx, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 114)
	end
	end
local sumonado = sumomdonego 
addEvent(gas, 000, {cid = sumonado, cb = cb})
addEvent(gas, 500, {cid = sumonado, cb = cb})
addEvent(gas, 1000, {cid = sumonado, cb = cb})
addEvent(gas, 1500, {cid = sumonado, cb = cb})
addEvent(gas, 2200, {cid = sumonado, cb = cb})
addEvent(gas, 2700, {cid = sumonado, cb = cb})
addEvent(gas, 3200, {cid = sumonado, cb = cb})
addEvent(gas, 3900, {cid = sumonado, cb = cb})
addEvent(gas, 4400, {cid = sumonado, cb = cb})
addEvent(gas, 4900, {cid = sumonado, cb = cb})

	return 0
elseif pokemon.spell == "Psy Condition" then

		
local function psycon(params)
	if isCreature(params.cid) then
	doAreaCombatHealth(params.cid, element, getThingPos(params.cid), mew, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 251)
	end
	end
local function psycon2(params)
	if isCreature(params.cid) then
doSendMagicEffect(getThingPos(params.cid),172)
	doAreaCombatHealth(params.cid, element, getThingPos(params.cid), mew, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 136)
	end
	end
local function psycon3(params)
	if isCreature(params.cid) then
doSendMagicEffect(getThingPos(params.cid),182)
	doAreaCombatHealth(params.cid, element, getThingPos(params.cid), mew2, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 137)
	end
	end
local sumonado = sumomdonego 

	doAreaCombatHealth(sumonado, element, getThingPos(sumonado), mew2, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 133)
addEvent(psycon, 000, {cid = sumonado, cb = cb})
addEvent(psycon2, 500, {cid = sumonado, cb = cb})
addEvent(psycon, 800, {cid = sumonado, cb = cb})
addEvent(psycon3, 1200, {cid = sumonado, cb = cb})
addEvent(psycon, 1600, {cid = sumonado, cb = cb})
addEvent(psycon2, 2000, {cid = sumonado, cb = cb})
addEvent(psycon, 2400, {cid = sumonado, cb = cb})
addEvent(psycon3, 2800, {cid = sumonado, cb = cb})
addEvent(psycon, 3200, {cid = sumonado, cb = cb})
addEvent(psycon2, 3500, {cid = sumonado, cb = cb})
addEvent(psycon, 4000, {cid = sumonado, cb = cb})
addEvent(psycon3,4400, {cid = sumonado, cb = cb})
addEvent(psycon, 4800, {cid = sumonado, cb = cb})
addEvent(psycon2,5200, {cid = sumonado, cb = cb})
addEvent(psycon, 5600, {cid = sumonado, cb = cb})
addEvent(psycon3,6000, {cid = sumonado, cb = cb})
addEvent(psycon, 6400, {cid = sumonado, cb = cb})
addEvent(psycon2, 6800, {cid = sumonado, cb = cb})
addEvent(psycon, 7200, {cid = sumonado, cb = cb})
addEvent(psycon3, 7500, {cid = sumonado, cb = cb})
addEvent(psycon, 8000, {cid = sumonado, cb = cb})

	return 0
elseif pokemon.spell == "Dark Condition" then


		
local function darkcon(params)
	if isCreature(params.cid) then
	doAreaCombatHealth(params.cid, element, getThingPos(params.cid), mew, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 140)
	end
	end
local function darkcon2(params)
	if isCreature(params.cid) then
doSendMagicEffect(getCreaturePosition(params.cid), 246)
	doAreaCombatHealth(params.cid, element, getThingPos(params.cid), mew2, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 186)
	end
	end
local function darkcon3(params)
	if isCreature(params.cid) then
	doAreaCombatHealth(params.cid, element, getThingPos(params.cid), mew2, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 38)
	end
	end
local sumonado = sumomdonego 
addEvent(darkcon, 000, {cid = sumonado, cb = cb})
addEvent(darkcon2, 500, {cid = sumonado, cb = cb})
addEvent(darkcon, 800, {cid = sumonado, cb = cb})
addEvent(darkcon3, 1200, {cid = sumonado, cb = cb})
addEvent(darkcon, 1600, {cid = sumonado, cb = cb})
addEvent(darkcon2, 2000, {cid = sumonado, cb = cb})
addEvent(darkcon, 2400, {cid = sumonado, cb = cb})
addEvent(darkcon3, 2800, {cid = sumonado, cb = cb})
addEvent(darkcon, 3200, {cid = sumonado, cb = cb})
addEvent(darkcon2, 3500, {cid = sumonado, cb = cb})
addEvent(darkcon, 4000, {cid = sumonado, cb = cb})
addEvent(darkcon3,4400, {cid = sumonado, cb = cb})
addEvent(darkcon, 4800, {cid = sumonado, cb = cb})
addEvent(darkcon2,5200, {cid = sumonado, cb = cb})
addEvent(darkcon, 5600, {cid = sumonado, cb = cb})
addEvent(darkcon3,6000, {cid = sumonado, cb = cb})
addEvent(darkcon, 6400, {cid = sumonado, cb = cb})
addEvent(darkcon2, 6800, {cid = sumonado, cb = cb})
addEvent(darkcon, 7200, {cid = sumonado, cb = cb})
addEvent(darkcon3, 7500, {cid = sumonado, cb = cb})
addEvent(darkcon, 8000, {cid = sumonado, cb = cb})

	return 0



                elseif pokemon.spell == "Poison Powder" then

	

doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), sleeparea, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 85)
                        local d = getCreaturesInRange(getThingPos(sumomdonego), 2, 2, 1, 0)
                      
                    for _,pid in pairs(d) do
if isSummon(pid) then
if getPlayerStorageValue(cid, 3333) >= 1 then
if getPlayerStorageValue(cid, 6333) == getCreatureMaster(pid) and getPlayerStorageValue(cid, 1333) >= 1 then
                    if getPlayerStorageValue(pid, 34) >= 1 then
setPlayerStorageValue(pid, 34, 0)
doSendMagicEffect(getThingPos(pid), 135)
doSendAnimatedText(getThingPos(pid), "REFLECT", 215)   
           
Poison(sumomdonego, 8, 10)
else
Poison(pid, 8, 10)
end

end
elseif  isPlayerInParty(getCreatureMaster(pid),cid) then 
                 if getPlayerStorageValue(pid, 34) >= 1 then
setPlayerStorageValue(pid, 34, 0)
doSendMagicEffect(getThingPos(pid), 135)
doSendAnimatedText(getThingPos(pid), "REFLECT", 215)   
  Poison(sumomdonego, 8, 10)         
else
Poison(pid, 8, 10)
end

end
elseif isMonster(pid) then
                    if getPlayerStorageValue(pid, 34) >= 1 then
setPlayerStorageValue(pid, 34, 0)
doSendMagicEffect(getThingPos(pid), 135)
doSendAnimatedText(getThingPos(pid), "REFLECT", 215)   
           
Poison(sumomdonego, 8, 10)
else
Poison(pid, 8, 10)
end


end
                        end
                 
                        
return 0

elseif pokemon.spell == "Wing Attack" then


		
		if getCreatureLookDir(sumomdonego) == 0 then
		doAreaCombatHealth(sumomdonego, COMBAT_PDAMAGE, getThingPos(sumomdonego), wingn, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 128)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wingdn, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), CONST_ME_NONE)
		elseif getCreatureLookDir(sumomdonego) == 1 then
		doAreaCombatHealth(sumomdonego, COMBAT_PDAMAGE, getThingPos(sumomdonego), winge, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 129)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wingde, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), CONST_ME_NONE)
		elseif getCreatureLookDir(sumomdonego) == 2 then
		doAreaCombatHealth(sumomdonego, COMBAT_PDAMAGE, getThingPos(sumomdonego), wings, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 131)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wingds, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), CONST_ME_NONE)
		elseif getCreatureLookDir(sumomdonego) == 3 then
		doAreaCombatHealth(sumomdonego, COMBAT_PDAMAGE, getThingPos(sumomdonego), wingw, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 130)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wingdw, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), CONST_ME_NONE)
		end
		return 0

elseif pokemon.spell == "Fury Cutter" then


		
		if getCreatureLookDir(sumomdonego) == 0 then
		doAreaCombatHealth(sumomdonego, COMBAT_PDAMAGE, getThingPos(sumomdonego), wingn, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 128)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wingdn, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), CONST_ME_NONE)
		elseif getCreatureLookDir(sumomdonego) == 1 then
		doAreaCombatHealth(sumomdonego, COMBAT_PDAMAGE, getThingPos(sumomdonego), winge, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 129)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wingde, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), CONST_ME_NONE)
		elseif getCreatureLookDir(sumomdonego) == 2 then
		doAreaCombatHealth(sumomdonego, COMBAT_PDAMAGE, getThingPos(sumomdonego), wings, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 131)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wingds, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), CONST_ME_NONE)
		elseif getCreatureLookDir(sumomdonego) == 3 then
		doAreaCombatHealth(sumomdonego, COMBAT_PDAMAGE, getThingPos(sumomdonego), wingw, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 130)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wingdw, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), CONST_ME_NONE)
		end

local function fury(params)
		if isCreature(params.cid) then
		if getCreatureLookDir(params.cid) == 0 then
		doAreaCombatHealth(params.cid, COMBAT_PDAMAGE, getThingPos(params.cid), wingn, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 128)
		doAreaCombatHealth(params.cid, element, getThingPos(params.cid), wingdn, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), CONST_ME_NONE)
		elseif getCreatureLookDir(params.cid) == 1 then
		doAreaCombatHealth(params.cid, COMBAT_PDAMAGE, getThingPos(params.cid), winge, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 129)
		doAreaCombatHealth(params.cid, element, getThingPos(params.cid), wingde, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), CONST_ME_NONE)
		elseif getCreatureLookDir(params.cid) == 2 then
		doAreaCombatHealth(params.cid, COMBAT_PDAMAGE, getThingPos(params.cid), wings, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 131)
		doAreaCombatHealth(params.cid, element, getThingPos(params.cid), wingds, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), CONST_ME_NONE)
		elseif getCreatureLookDir(params.cid) == 3 then
		doAreaCombatHealth(params.cid, COMBAT_PDAMAGE, getThingPos(params.cid), wingw, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 130)
		doAreaCombatHealth(params.cid, element, getThingPos(params.cid), wingdw, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), CONST_ME_NONE)
		end
		end
		end
local sumonado = sumomdonego 
		addEvent(fury, 500, {cid = sumonado})
		return 0

elseif pokemon.spell == "Twister" then


		
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), rageblast1, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 142)
		local function damage(params)
		if isCreature(params.cid) then
		doAreaCombatHealth(params.cid, element, getThingPos(params.cid), params.x, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 42)
		end
		end
local sumonado = sumomdonego 
		addEvent(damage, 200, {cid = sumonado, x = rageblast2})
		addEvent(damage, 400, {cid = sumonado, x = rageblast3})
		addEvent(damage, 600, {cid = sumonado, x = rageblast4})
	return 0

	
	
	
end
end