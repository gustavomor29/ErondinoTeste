function onThink(cid, interval)
	if getCreatureSkullType(cid) == 3 then
		return true
	elseif getCreatureSkullType(cid) == 4 then
		return true
	else
		doCreatureSetSkullType(cid, 4)
		return true
	end
end