function onUse(cid, item, frompos, item2, topos)
for a, b in pairs(ginasios) do
if getPlayerStorageValue(cid, b.storage) == 1 then -- GYM
doPlayerSendCancel(cid, "You can't return your pokemon during gym battles.")
return true
end
end

	if getPlayerStorageValue(cid, 52481) >= 1 then
	   return doPlayerSendCancel(cid, "You can't do that while a duel.") --alterado v1.6
    end
                 --
	if item2.itemid <= 0 or not isPokeball(item2.itemid) then
		doPlayerSendCancel(cid, "Please, use revive only on pokeballs.")
	return true
	end

	for a, b in pairs (pokeballs) do
        if item2.itemid == b.on or item2.itemid == b.off then         --edited deixei igual ao do PXG
           doTransformItem(item2.uid, b.on)
		   local maxh = tonumber(getItemAttribute(item2.uid, "maxhealth"))
           doItemSetAttribute(item2.uid, "hp", maxh)
           for c = 1, 15 do
               local str = "move"..c
               setCD(item2.uid, str, 0)
	       end
	       setCD(item2.uid, "control", 0)
	       setCD(item2.uid, "blink", 0)  --alterado v1.6
           doSendMagicEffect(getThingPos(cid), 13)
           doRemoveItem(item.uid, 1)         --alterado v1.5
	       return true
        end
	end
end