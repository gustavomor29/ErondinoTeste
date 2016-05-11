local shinys = {
"Venusaur", "Charizard", "Blastoise", "Butterfree", "Beedrill", "Pidgeot", "Rattata", "Raticate", "Raichu", "Zubat", "Golbat", "Paras", "Parasect",
"Venonat", "Venomoth", "Growlithe", "Arcanine", "Abra", "Alakazam", "Tentacool", "Tentacruel", "Farfetch'D", "Grimer", "Muk", "Gengar", "Onix", "Krabby",
"Kingler", "Voltorb", "Electrode", "Cubone", "Marowak", "Hitmonlee", "Hitmonchan", "Tangela", "Horsea", "Seadra", "Scyther", "Jynx", "Electabuzz", "Pinsir",
"Magikarp", "Gyarados", "Snorlax", "Dragonair", "Dratini", "Machamp"}
local raros = {"Dragonite"}

local function doShinys(cid)
if isCreature(cid) then
   if isSummon(cid) then return true end
   if getPlayerStorageValue(cid, 74469) >= 1 then return true end
   if getPlayerStorageValue(cid, 22546) >= 1 then return true end
   if isNpcSummon(cid) then return true end
   if getPlayerStorageValue(cid, 637500) >= 1 then return true end  --alterado v1.9

         if isInArray(shinys, getCreatureName(cid)) and math.random(1, 1000) <= 5 then

        local position = {x=getCreaturePosition(cid).x, y=getCreaturePosition(cid).y, z=getCreaturePosition(cid).z}
        local newName = "Shiny "..getCreatureName(cid)..""

         doRemoveCreature(cid)
         local s = doCreateMonster(newName, position)
         doSendMagicEffect(getThingPos(s), 18)
      end
   end
end

function onSpawn(cid)
 print(getCreatureName(cid))

registerCreatureEvent(cid, "Exp")
	if isSummon(cid) then
		registerCreatureEvent(cid, "SummonDeath")
	return true
	end
         doShiny(cid)
		 doShinys(cid)
return true
end

function doShiny(cid)

if isPlayer(cid) or isNpc(cid) then return true end
        local position = {x=581, y=980, z=7}
		local level = pokes[getCreatureName(cid)].level
        local newName = getCreatureName(cid).."["..level.."]"

         doRemoveCreature(cid)
         doCreateMonsterNick(getCreatureName(cid),newName, position)
return true
end
