function onEquip (cid, item, slot)

	if not cid then return true end
	if item.uid <= 0 then return true end

	if not getItemAttribute(item.uid, "poke") then
	return true
	end
local i =getItemAttribute(item.uid, "poke")
			doTransformItem(getPlayerSlotItem(cid, 7).uid, fotos[i])
			 pokeinfo(cid)
		return true
end

function onDeEquip(cid, item, slot)

	if not cid then return true end
	if item.uid <= 0 then return true end

	if not getItemAttribute(item.uid, "poke") then
	return true
	end

	doTransformItem(getPlayerSlotItem(cid, CONST_SLOT_LEGS).uid, 2529)
	pokeinfo(cid)
end