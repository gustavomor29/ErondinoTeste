local function ChangeBalls(cid, param, cancelequal)
	local balls = getPlayerPokeballs(cid)
	for a = 1, #balls do
		local item = balls[a]
		if not getItemAttribute(item.uid, "ballorder") then return doPlayerSendTextMessage(cid, 27, "Do update your pokemon bar!") end --alterado v1.6
        local name = getItemAttribute(item.uid, "poke")
		if name == param then
			if cancelequal and item.uid == getPlayerSlotItem(cid, 8).uid then return true end
			doChangeBalls(cid, getPlayerSlotItem(cid, 8), item)
			return 0
		end
	end
end

function onSay(cid, words, param)
local cfg = {
exhausted = 5, -- Time you are exhausted in seconds.
storage = 5858, -- Storage used for "exhaust."
exp = 2.0 -- this means 2x more experence then default
}

	if words == "!code64" then
	return 0
	end

	if words == "/pokeread" then
		if #getCreatureSummons(cid) >= 1 and getPlayerStorageValue(cid, 212124) <= 0 then   --alterado v1.6
			local pokemon = getCreatureSummons(cid)[1]
			local pokelife = (getCreatureHealth(pokemon) / getCreatureMaxHealth(pokemon))
			doItemSetAttribute(getPlayerSlotItem(cid, 8).uid, "hp", pokelife)
		end
		doUpdatePokemonsBar(cid)
	end

	if words == "/goaction" then
		if param == "null" then return 0 end
		if(getPlayerStorageValue(cid, cfg.storage) > os.time() and getPlayerStorageValue(cid, cfg.storage) < 100+os.time()) then
        doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_RED, "You must wait another " .. getPlayerStorageValue(cid, cfg.storage) - os.time() .. ' second' .. ((getPlayerStorageValue(cid, cfg.storage) - os.time()) == 1 and "" or "s") .. " to use new pokemon.")
		return true
        end
		if getPlayerStorageValue(cid, 17000) >= 1 or getPlayerStorageValue(cid, 17001) >= 1 or getPlayerStorageValue(cid, 63215) >= 1 then return true end
		          --alterado v1.8
        if #getCreatureSummons(cid) >= 1 then
			if not getItemAttribute(getPlayerSlotItem(cid, 8).uid, "ballorder") then return doPlayerSendTextMessage(cid, 27, "Do update your pokemon bar!") end 
            --alterado v1.6
            addEvent(doReturnPokemon, 100, cid, getCreatureSummons(cid)[1], false, pokeballs[getPokeballType(getPlayerSlotItem(cid, 8).itemid)].effect)
			if param ~= getItemAttribute(getPlayerSlotItem(cid, 8).uid, "poke") then
				addEvent(ChangeBalls, 1200, cid, param, true)
			end
		else
			addEvent(ChangeBalls, 100, cid, param)
		end
		setPlayerStorageValue(cid, cfg.storage, os.time() + cfg.exhausted)
	return 0
	end
	
	if words == "/reloadCDs" then   --alterado v1.7
	   doUpdateMoves(cid)
	   return true
    end

return 0
end