local config = {
	loginMessage = getConfigValue('loginMessage'),
	useFragHandler = getBooleanFromString(getConfigValue('useFragHandler'))
}

function onLogin(cid)
	registerCreatureEvent(cid, "DiePlayerSafari")
    registerCreatureEvent(cid, "PlayerAttack")
	doPlayerSetLossPercent(cid, PLAYERLOSS_EXPERIENCE, 100)
	doCreatureSetDropLoot(cid, false)
	local accountManager = getPlayerAccountManager(cid)
	if(accountManager == MANAGER_NONE) then
		local lastLogin, str = getPlayerLastLoginSaved(cid), config.loginMessage
		if(lastLogin > 0) then
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_DEFAULT, str)
			str = "Your last visit was on " .. os.date("%a %b %d %X %Y", lastLogin) .. "."
		else
			str = str .. " Have fun! "
		end

		doPlayerSendTextMessage(cid, MESSAGE_STATUS_DEFAULT, str)
	elseif(accountManager == MANAGER_NAMELOCK) then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, "Hello, it appears that your character has been namelocked, what would you like as your new name?")
	elseif(accountManager == MANAGER_ACCOUNT) then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, "Hello, type 'account' to manage your account and if you want to start over then type 'cancel'.")
	else
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, "Hello, type 'account' to create an account or type 'recover' to recover an account.")
	end

	if(not isPlayerGhost(cid)) then
		doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
	end

	registerCreatureEvent(cid, "GuildMotd")
	registerCreatureEvent(cid, "PlayerPokeDeath")
	registerCreatureEvent(cid, "LogoutPoke")
	registerCreatureEvent(cid, "WildAttack")
	registerCreatureEvent(cid, "Idle")
	registerCreatureEvent(cid, "Tele")
	registerCreatureEvent(cid, "Exp")
	registerCreatureEvent(cid, "Alook")
       registerCreatureEvent(cid, "WatchTv")
	registerCreatureEvent(cid, "dt")
	registerCreatureEvent(cid, "StopWatchingTv")
	registerCreatureEvent(cid, "WalkTv")
	registerCreatureEvent(cid, "RecordTv")
	registerCreatureEvent(cid, "PlayerPokeDeath")
	registerCreatureEvent(cid, "PlayerLogout")
	registerCreatureEvent(cid, "WildAttack")
	registerCreatureEvent(cid, "Idle")
	registerCreatureEvent(cid, "PokemonIdle")
	registerCreatureEvent(cid, "EffectOnAdvance")
	registerCreatureEvent(cid, "GeneralConfiguration")
	registerCreatureEvent(cid, "ReportBug")
	registerCreatureEvent(cid, "LookSystem")
	registerCreatureEvent(cid, "T1")
	registerCreatureEvent(cid, "T2")
	if getPlayerStorageValue(cid, 61207) >= 1 then
	setPlayerStorageValue(cid, 61207, 0)
	if getPlayerSlotItem(cid, 8).itemid == 2223 or getPlayerSlotItem(cid, 8).itemid == 2221 then
	doTransformItem(getPlayerSlotItem(cid, 8).uid, getPlayerSlotItem(cid, 8).itemid-1)
	end
	local item = getPlayerSlotItem(cid, 8)
	doItemSetAttribute(item.uid, "poke", getItemAttribute(item.uid, "poke"))
	doItemSetAttribute(item.uid, "hp", getPlayerStorageValue(cid, 61205))
	doItemSetAttribute(item.uid, "maxhealth", getPlayerStorageValue(cid, 61206))
	end
	if getPlayerItemCount(cid, pokeout) >= 1 and getPlayerStorageValue(cid, 61207) <= 0 and getPlayerStorageValue(cid, 17001) <= 0 and getPlayerStorageValue(cid, 17000) <= 0 and getPlayerStorageValue(cid, 63215) <= 0 then
	local item = getPlayerItemById(cid, TRUE, pokeout)
	doTransformItem(item.uid, pokein)
	doItemSetAttribute(item.uid, "poke", getItemAttribute(item.uid, "poke"))
	doItemSetAttribute(item.uid, "hp", getPlayerStorageValue(cid, 61205))
	doItemSetAttribute(item.uid, "maxhealth", getPlayerStorageValue(cid, 61206))
	end
	if getPlayerItemCount(cid, ultrapokeout) >= 1 and getPlayerStorageValue(cid, 61207) <= 0 and getPlayerStorageValue(cid, 17001) <= 0 and getPlayerStorageValue(cid, 17000) <= 0 and getPlayerStorageValue(cid, 63215) <= 0 then
	local item = getPlayerItemById(cid, TRUE, ultrapokeout)
	doTransformItem(item.uid, ultrapokein)
	doItemSetAttribute(item.uid, "poke", getItemAttribute(item.uid, "poke"))
	doItemSetAttribute(item.uid, "hp", getPlayerStorageValue(cid, 61205))
	doItemSetAttribute(item.uid, "maxhealth", getPlayerStorageValue(cid, 61206))
	end
	if getPlayerItemCount(cid, greatout) >= 1 and getPlayerStorageValue(cid, 61207) <= 0 and getPlayerStorageValue(cid, 17001) <= 0 and getPlayerStorageValue(cid, 17000) <= 0 and getPlayerStorageValue(cid, 63215) <= 0 then
	local item = getPlayerItemById(cid, TRUE, greatout)
	doTransformItem(item.uid, greatin)
	doItemSetAttribute(item.uid, "poke", getItemAttribute(item.uid, "poke"))
	doItemSetAttribute(item.uid, "hp", getPlayerStorageValue(cid, 61205))
	doItemSetAttribute(item.uid, "maxhealth", getPlayerStorageValue(cid, 61206))
	end
	if getPlayerItemCount(cid, superout) >= 1 and getPlayerStorageValue(cid, 61207) <= 0 and getPlayerStorageValue(cid, 17001) <= 0 and getPlayerStorageValue(cid, 17000) <= 0 and getPlayerStorageValue(cid, 63215) <= 0 then
	local item = getPlayerItemById(cid, TRUE, superout)
	doTransformItem(item.uid, superin)
	doItemSetAttribute(item.uid, "poke", getItemAttribute(item.uid, "poke"))
	doItemSetAttribute(item.uid, "hp", getPlayerStorageValue(cid, 61205))
	doItemSetAttribute(item.uid, "maxhealth", getPlayerStorageValue(cid, 61206))
	end
	if getPlayerItemCount(cid, saffariout) >= 1 and getPlayerStorageValue(cid, 61207) <= 0 and getPlayerStorageValue(cid, 17001) <= 0 and getPlayerStorageValue(cid, 17000) <= 0 and getPlayerStorageValue(cid, 63215) <= 0 then
	local item = getPlayerItemById(cid, TRUE, saffariout)
	doTransformItem(item.uid, saffariin)
	doItemSetAttribute(item.uid, "poke", getItemAttribute(item.uid, "poke"))
	doItemSetAttribute(item.uid, "hp", getPlayerStorageValue(cid, 61205))
	doItemSetAttribute(item.uid, "maxhealth", getPlayerStorageValue(cid, 61206))
	end
	doChangeSpeed(cid, -(getCreatureSpeed(cid)))
	if getPlayerStorageValue(cid, 17000) >= 1 then
	item = getPlayerSlotItem(cid, 8)
	poke = getItemAttribute(item.uid, "poke")
	doChangeSpeed(cid, flys[poke][2])
	registerCreatureEvent(cid, "Flying")
	doRemoveCondition(cid, CONDITION_OUTFIT)
	doSetCreatureOutfit(cid, {lookType = flys[poke][1], lookHead = 0, lookAddons = 0, lookLegs = 0, lookBody = 0, lookFeet = 0}, -1)
	elseif getPlayerStorageValue(cid, 63215) >= 1 then
	item = getPlayerSlotItem(cid, 8)
	poke = getItemAttribute(item.uid, "poke")
	doSetCreatureOutfit(cid, surf[poke], -1)
	doChangeSpeed(cid, surf[poke].speed)
	elseif getPlayerStorageValue(cid, 17001) >= 1 then
	item = getPlayerSlotItem(cid, 8)
	poke = getItemAttribute(item.uid, "poke")
	doChangeSpeed(cid, rides[poke][2])
	doRemoveCondition(cid, CONDITION_OUTFIT)
	doSetCreatureOutfit(cid, {lookType = rides[poke][1], lookHead = 0, lookAddons = 0, lookLegs = 0, lookBody = 0, lookFeet = 0}, -1)
	else
	if getPlayerGroupId(cid) >= 2 and getPlayerGroupId(cid) <= 7 then
	doChangeSpeed(cid, 5600*getPlayerGroupId(cid))
	else
	doChangeSpeed(cid, 600)
	end
	end
	if getPlayerVocation(cid) == 0 then
		doPlayerSetVocation(cid, 1)
		setCreatureMaxMana(cid, 6)
		doPlayerAddSoul(cid, -getPlayerSoul(cid))
		setPlayerStorageValue(cid, 19898, 0)
	end
	if getCreatureOutfit(cid).lookType == 128 then
	outfit = {lookType = 159}
	doCreatureChangeOutfit(cid, outfit)
	elseif getCreatureOutfit(cid).lookType == 136 then
	outfit = {lookType = 160}
	doCreatureChangeOutfit(cid, outfit)
	end
	registerCreatureEvent(cid, "ReportBug")
	registerCreatureEvent(cid, "AdvanceSave")
	return true
end