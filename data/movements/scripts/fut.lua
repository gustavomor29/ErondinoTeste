
function onAddItem(moveitem, tileitem, position, cid)
gol1 = {
{x=1676,y=1472,z=7},
{x=1676,y=1473,z=7}
}
gol2 = {
{x=1705,y=1472,z=7},
{x=1705,y=1473,z=7}
}
poscentro2 = {x = 1691,y = 1473,z = 7}
poscentro1 = {x = 1691,y = 1473,z = 7}
if inArea(position,gol1[1],gol1[2]) then
   doBroadcastMessage("Gol do time Red!")
   setGlobalStorageValue(20005,getGlobalStorageValue(20005) + 1)
   doRemoveItem(moveitem.uid)
   doCreateItem(moveitem.itemid,poscentro1)
elseif inArea(position,gol2[1], gol2[2]) then
   doBroadcastMessage("Gol do time Green!")
   setGlobalStorageValue(20006,getGlobalStorageValue(20006) + 1)
   doRemoveItem(moveitem.uid)
   doCreateItem(moveitem.itemid,poscentro2)
end
return true
end

function inArea(p,pos1,pos2)
         if p.x >= pos1.x and p.x <= pos2.x then
            if p.y >= pos1.y and p.y <= pos2.y then
               if p.z == pos1.z then
                 return true
               end
            end
         end
return false
end