function markPosEff(sid, pos)
if not isCreature(sid) then return end
setPlayerStorageValue(sid, 26547, pos.x)
setPlayerStorageValue(sid, 26548, pos.y)
setPlayerStorageValue(sid, 26549, pos.z)
end

function sendMoveEffect(cid, effect, pos)
if isCreature(cid) then
   if pos then                                                --Functions pro sistema de sair efeito quando magmar/jynx andam e fly porygon
      doSendMagicEffect(pos, effect)
   else
      doSendMagicEffect(getThingPos(cid), effect)
   end
end
end

function getMarkedPosEff(sid)
if not isCreature(sid) then return end
local xx = getPlayerStorageValue(sid, 26547)
local yy = getPlayerStorageValue(sid, 26548)
local zz = getPlayerStorageValue(sid, 26549)
return {x = xx, y = yy, z = zz}
end

function sendMovementEffect(cid, eff, pos)
if isPlayer(cid) then
   if getCreatureOutfit(cid).lookType ~= 667 and getCreatureOutfit(cid).lookType ~= 999 then
      return true
   end
end
if isCreature(cid) then
local nPos = getMarkedPosEff(cid)

if pos.x ~= nPos.x or pos.y ~= nPos.y then
   sendMoveEffect(cid, eff, nPos)
   markPosEff(cid, getThingPos(cid))
end
addEvent(sendMovementEffect, 100, cid, eff, getThingPos(cid))
end
end

function doPushCreature(uid,direction,distance,time)

   if isCreature(uid) == TRUE then

   local rand = (2*math.random(0,1))-1

   local rand2 = math.random(-1,0)

	  if direction == 0 then

	  signal = {0,rand,-rand,rand,-rand,0,-1,-1,-1,0,0,0}

	  elseif direction == 1 then

	  signal = {1,1,1,0,0,0,0,rand,-rand,rand,-rand,0}

	  elseif direction == 2 then

	  signal = {0,rand,-rand,rand,-rand,0,1,1,1,0,0,0}

	  elseif direction == 3 then

	  signal = {-1,-1,-1,0,0,0,0,rand,-rand,rand,-rand,0}

	  elseif direction == 4 then

	  signal = {-1,rand2,(-rand2)-1,0,1,rand2+1,rand2,0}

	  elseif direction == 5 then

	  signal = {1,-rand2,-((-rand2)-1),0,1,rand2+1,rand2,0}

	  elseif direction == 6 then

	  signal = {-1,rand2,(-rand2)-1,0,-1,(-rand2)-1,rand2,0}

	  else

	  signal = {1,-rand2,-((-rand2)-1),0,-1,(-rand2)-1,rand2,0}

	  end

   local pos = getThingPos(uid)

   nsig = #signal

   nvar = 0

   

   repeat

   nvar = nvar+1

   newpos = {x=pos.x+(signal[nvar]),y=pos.y+(signal[(nsig/2)+nvar]),z=pos.z}

   newtile = {x=newpos.x,y=newpos.y,z=newpos.z,stackpos=0}

   until getTileThingByPos(newtile).uid ~= 0 and hasProperty(getTileThingByPos(newtile).uid,3) == FALSE and queryTileAddThing(uid,newpos) == 1 or nvar == (nsig/2) 

   

	  if distance == nil or distance == 1 then

	  doTeleportThing(uid,newpos,TRUE)   

	  else

	  distance = distance-1

	  doTeleportThing(uid,newpos,TRUE)

		 if time ~= nil then

		 addEvent(doPushCreature,time,uid,direction,distance,time)

		 else

		 addEvent(doPushCreature,500,uid,direction,distance,500)

		 end	   

	  end

   end  

end

function getPokemonXMLOutfit(name)                --alterado v1.9 \/
local path = "data/monster/pokes/"..name..".xml"
local tpw = io.type(io.open(path))

if not tpw then
   path = "data/monster/pokes/selvagens/"..name..".xml"
   tpw = io.type(io.open(path))
end
if not tpw then
   path = "data/monster/pokes/selvagens/Johto/"..name..".xml"
   tpw = io.type(io.open(path))
end
if not tpw then
   path = "data/monster/pokes/Shinys/"..name..".xml"
   tpw = io.type(io.open(path))
end   
if not tpw then
   path = "data/monster/pokes/Shinys/Selvagens/"..name..".xml"
   tpw = io.type(io.open(path))
end   
if not tpw then
   return print("[getPokemonXMLOutfit] Poke with name: "..name.." ins't in any paste on monster/pokes/") and 2
end
   local arq = io.open(path, "a+")
   local txt = arq:read("*all")
   arq:close()
   local a, b = txt:find('look type="(.-)"')
   txt = string.sub(txt, a + 11, b - 1)
return tonumber(txt)
end 

function doFaceCreature(sid, pos)
if not isCreature(sid) then return true end
	if getThingPos(sid).x == pos.x and getThingPos(sid).y == pos.y then return true end
	local ret = 0

	local ld = getCreatureLookDir(sid)
	local dir = getDirectionTo(getThingPos(sid), pos)
	local al = {
	[NORTHEAST] = {NORTH, EAST},
	[NORTHWEST] = {NORTH, WEST},
	[SOUTHEAST] = {SOUTH, EAST},
	[SOUTHWEST] = {SOUTH, WEST}}

	if dir >= 4 and isInArray(al[dir], ld) then return true end

	doChangeSpeed(sid, 1)
		if dir == 4 then
			ret = math.random(2, 3)
		elseif dir == 5 then
			ret = math.random(1, 2)
		elseif dir == 6 then
			local dirs = {0, 3}
			ret = dirs[math.random(1, 2)]
		elseif dir == 7 then
			ret = math.random(0, 1)
		else
			ret = getDirectionTo(getThingPos(sid), pos)
		end
doCreatureSetLookDir(sid, ret)
doChangeSpeed(sid, -1)
return true
end

function getPokeName(cid)
	if not isSummon(cid) then return getCreatureName(cid) end
	if getCreatureName(cid) == "Evolution" then return getPlayerStorageValue(cid, 1007) end

local item = getPlayerSlotItem(getCreatureMaster(cid), 8)
	if getItemAttribute(item.uid, "nick") then
	   return getItemAttribute(item.uid, "nick")
	end
	if string.find(tostring(getCreatureName(cid)), "Shiny") then
      local newName = tostring(getCreatureName(cid)):match("Shiny (.*)")
      return newName
    end
return getCreatureName(cid)
end

function markPos(sid, pos)
if not isCreature(sid) then return end
setPlayerStorageValue(sid, 145, pos.x)
setPlayerStorageValue(sid, 146, pos.y)
setPlayerStorageValue(sid, 147, pos.z)
end