local NPCBattle = {
["Brock"] = {artig = "He is", cidbat = "Pewter"},
["Misty"] = {artig = "She is", cidbat = "Cerulean"},
["Blaine"] = {artig = "He is", cidbat = "Cinnabar"},
["Sabrina"] = {artig = "She is", cidbat = "Saffron"},            --alterado aki \/ TUDO
["Kira"] = {artig = "She is", cidbat = "Viridian"},
["Koga"] = {artig = "He is", cidbat = "Fushcia"},
["Erika"] = {artig = "She is", cidbat = "Celadon"},
["Surge"] = {artig = "He is", cidbat = "Vermilion"},
}

local shinys = {
["Shiny Abra"] = "Dark Abra",
["Shiny Onix"] = "Crystal Onix",
["Shiny Gyarados"] = "Red Gyarados",
["Shiny Charizard"] = "Elder Charizard",
["Shiny Venusaur"] = "Ancient Venusaur",
["Shiny Blastoise"] = "Ancient Blastoise",
["Shiny Farfetch'd"] = "Elite Farfetch'd",
["Shiny Hitmonlee"] = "Elite Hitmonlee",
["Shiny Himonchan"] = "Elite Hitmonchan",
["Shiny Snorlax"] = "Big Snorlax",
}

-- tabela adicionado ao configuration só procura por price = ..--

function onLook(cid, thing, position, lookDistance)
                                                                                                                  
local str = {}
local iname = getItemInfo(thing.itemid)
                                                                                          
if not isCreature(thing.uid) then
   if not iname or not iname.name then return true end
   if isPokeball(thing.itemid) and getItemAttribute(thing.uid, "poke") then --alterado aki       
      local owner = getItemAttribute(thing.uid, "firstpoke")
      local pokename = getItemAttribute(thing.uid, "poke")   
      if shinys[pokename] then
         pokename = shinys[pokename]
      end
          
      local ballName = iname.name
      if getItemAttribute(thing.uid, 'ball') then
         ballName = getItemAttribute(thing.uid, 'ball').. " ball"
      end
      table.insert(str, "You see "..iname.article.." "..ballName..".")  
      if getItemAttribute(thing.uid, "unique") then                    
         table.insert(str, " It's an unique item.")   
      end
      table.insert(str, "\nContains "..getArticle(pokename).." "..pokename)
          
      if getItemAttribute(thing.uid, "nick") then
         table.insert(str, " ("..getItemAttribute(thing.uid, "nick")..")")
      end
      local boost = getItemAttribute(thing.uid, "boost") or 0
      if boost > 0 then
         table.insert(str, " +"..boost)
      end
      if prices[pokename] then
         table.insert(str, ". $Price: ".. prices[pokename].."")
      else
         table.insert(str, ". Price: unsellable")
      end
      table.insert(str, ".")
          
      doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, table.concat(str))
      return false         
   elseif string.find(iname.name, "fainted") or string.find(iname.name, "defeated") then     
      local name = iname.name
            name = string.gsub(name, "fainted ", "")
            name = string.gsub(name, "defeated ", "")
            name = doCorrectPokemonName(name)
      if shinys[name] then
         name = shinys[name]
      end
      name = "fainted "..name:lower()
           
      table.insert(str, "You see "..iname.article.." "..name..". ")     
      if isContainer(thing.uid) then
         table.insert(str, "(Vol: "..getContainerCap(thing.uid)..")")
      end
      table.insert(str, "\n")
      if getItemAttribute(thing.uid, "gender") == SEX_MALE then
         table.insert(str, "It is male.")
      elseif getItemAttribute(thing.uid, "gender") == SEX_FEMALE then
         table.insert(str, "It is female.")
      else
         table.insert(str, "It is genderless.")
      end
      doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, table.concat(str))
      return false
   elseif isContainer(thing.uid) then    --containers
      if iname.name == "dead human" and getItemAttribute(thing.uid, "pName") then
         table.insert(str, "You see a dead human (Vol:"..getContainerCap(thing.uid).."). ")
         table.insert(str, "You recognize ".. getItemAttribute(thing.uid, "pName")..". ".. getItemAttribute(thing.uid, "article").." was killed by a ")
         table.insert(str, getItemAttribute(thing.uid, "attacker")..".")
      else   
         table.insert(str, "You see "..iname.article.." "..iname.name..". (Vol:"..getContainerCap(thing.uid)..").")
      end
          
      local price = prices[doCorrectString(iname.name)]
      if price then
         local finalPrice = thing.type > 1 and thing.type * price or price
         table.insert(str, " Price: $".. finalPrice ..".")
      end
          
      if getPlayerGroupId(cid) >= 4 and getPlayerGroupId(cid) <= 6 then
         table.insert(str, "\nItemID: ["..thing.itemid.."]")     
         local pos = getThingPos(thing.uid)
         table.insert(str, "\nPosition: [X: "..pos.x.."][Y: "..pos.y.."][Z: "..pos.z.."]")  
      end
      doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, table.concat(str))
      return false 
   else   
      local p = getThingPos(thing.uid)
      table.insert(str, "You see ")
      if thing.type > 1 then
         table.insert(str, thing.type.." "..iname.plural..".")
      else
         table.insert(str, iname.article.." "..iname.name..".")
      end
      if getItemAttribute(thing.uid, "unique") then
         table.insert(str, " It's an unique item.")
      end
      local price = prices[doCorrectString(iname.name)]
      if price then
         local finalPrice = thing.type > 1 and thing.type * price or price
         table.insert(str, " Price: $".. finalPrice ..".")
      end
      table.insert(str, "\n"..iname.description)
      if getPlayerGroupId(cid) >= 4 and getPlayerGroupId(cid) <= 6 then
         table.insert(str, "\nItemID: ["..thing.itemid.."]")
         table.insert(str, "\nPosition: ["..p.x.."]["..p.y.."]["..p.z.."]")
      end
      sendMsgToPlayer(cid, MESSAGE_INFO_DESCR, table.concat(str))
      return true
   end
end

if not isPlayer(thing.uid) and not isMonster(thing.uid) then    --outros npcs
   table.insert(str, "You see "..getCreatureName(thing.uid)..".")
   doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, table.concat(str))
   return false
end

if isPlayer(thing.uid) then      --player
local player = thing.uid
local vip = getPlayerPremiumDays(player) > 1 and "Premuim" or "Not Premuim"
  local msg = ""..getCreatureName(player).."-Level "..getPlayerLevel(player).."-"..vip..""
--doShowLookPlayer(cid, player, msg)
return false
end

if getCreatureName(thing.uid) == "Evolution" then return false end

if not isSummon(thing.uid) then   --monstros
   
   local pokename = getCreatureName(thing.uid)
   if shinys[pokename] then
          pokename = shinys[pokename]
   end
   table.insert(str, "You see a wild "..string.lower(pokename)..".\n")
   table.insert(str, "Hit Points: "..getCreatureHealth(thing.uid).." / "..getCreatureMaxHealth(thing.uid)..".\n")
   doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, table.concat(str))
   return false

elseif isSummon(thing.uid) and not isPlayer(thing.uid) then  --summons

   local pokename = getCreatureName(thing.uid)
   if shinys[pokename] then
          pokename = shinys[pokename]
   end
           
   local boostlevel = getItemAttribute(getPlayerSlotItem(getCreatureMaster(thing.uid), 8).uid, "boost") or 0
   if getCreatureMaster(thing.uid) == cid then
          local myball = getPlayerSlotItem(cid, 8).uid
          table.insert(str, "You see your "..string.lower(pokename)..".")
          if boostlevel > 0 then
                 table.insert(str, "\nBoost level: +"..boostlevel..".")
          end
          table.insert(str, "\nHit points: "..getCreatureHealth(thing.uid).."/"..getCreatureMaxHealth(thing.uid)..".")
          doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, table.concat(str))
   else
          doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You see a "..string.lower(pokename)..".\nIt belongs to "..getCreatureName(getCreatureMaster(thing.uid))..".")
   end
   return false
end
return true
end