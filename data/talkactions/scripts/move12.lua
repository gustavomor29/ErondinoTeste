-- Boost sistem --
boostrate = 1

local ps1 = createCombatArea{
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 1, 1, 2, 1, 1, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
}
 
local ps2 = createCombatArea{
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
{0, 0, 1, 1, 1, 2, 1, 1, 1, 0, 0},
{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
}
local ws1 = createCombatArea{
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0},
{0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0},
{0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0},
{0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0},
{0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0},
{0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
}
local ws2 = createCombatArea{
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0},
{0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0},
{0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 2, 1, 0, 1, 0, 0},
{0, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0},
{0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0},
{0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
}
local ws3 = createCombatArea{
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0},
{0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0},
{0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0},
{0, 1, 0, 1, 0, 2, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0},
{0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0},
{0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
}
local ws4 = createCombatArea{
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0},
{0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0},
{0, 0, 1, 0, 0, 1, 1, 0, 1, 0, 0},
{0, 0, 1, 0, 0, 2, 0, 1, 0, 1, 0},
{0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 1, 0, 0, 1, 0, 1, 0, 1, 0},
{0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0},
{0, 1, 0, 1, 0, 0, 1, 0, 1, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
}

local ws5 = createCombatArea{
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0},
{0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0},
{0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0},
{0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0},
{0, 0, 1, 0, 0, 3, 1, 1, 0, 0, 0},
{0, 0, 0, 1, 0, 1, 1, 0, 1, 0, 0},
{0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0},
{0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0},
{0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0}
}

local pokeis = {'Ditto'}

function onSay(cid)
    local it = "12"
	local cdzin = "move"..it..""
    local mypoke = getCreatureSummons(cid)[1]
	if getCreatureName(mypoke) == "Ditto" or getCreatureName(mypoke) == "Shiny Ditto" then
       name = getPlayerStorageValue(mypoke, 1010)   --edited
    else
       name = getCreatureName(mypoke)
    end
	local move = movestable[name].move12
	if #getCreatureSummons(cid) == 0 then
	doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You need a pokemon to use moves.")
	return 0
	end

	if not isInArray(pokeis, getCreatureName(getCreatureSummons(cid)[1])) then
	doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Your pokemon doesn\'t recognize this move.") 
	return 0
	end
	if getPlayerLevel(cid) < move.level then
	doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You don\'t have enough level to  this move.")
	return 0
	end
	if exhaustion.get(cid, move.ex) then
		seconds = math.floor(((exhaustion.get(cid, move.ex)) + 1))
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have to wait "..seconds.." seconds to  this move again.")
		return 0
		end
	if getPlayerStorageValue(getCreatureSummons(cid)[1], 3) >= 1 then
	doSendAnimatedText(getThingPos(getCreatureSummons(cid)[1]), "MISS", 215)
	setPlayerStorageValue(getCreatureSummons(cid)[1], 3, -1)
	doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..",  "..move.name.."!", TALKTYPE_SAY)
	exhaustion.set(cid, move.ex, move.cd)
	return true
	end
	if getPlayerStorageValue(getCreatureSummons(cid)[1], 5) >= 1 then
		if math.random(1,100) <= 33 then
		doSendAnimatedText(getThingPos(getCreatureSummons(cid)[1]), "SELF HIT", 180)
		local levels = getPlayerLevel(cid)
		doTargetCombatHealth(cid, getCreatureSummons(cid)[1], COMBAT_PHYSICALDAMAGE, -(math.random((levels*3),(levels*5))), -((math.random((levels*3),(levels*5))+10)), 3)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..",  "..move.name.."!", TALKTYPE_SAY)
		exhaustion.set(cid, move.ex, move.cd)
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		return true
		end
	end
if move.target ~= "no" then
	if not isMonster(getCreatureTarget(cid)) then
	doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You don\'t have any targets.")
	return 0
	end

	if getDistanceBetween(getThingPos(getCreatureSummons(cid)[1]), getThingPos(getCreatureTarget(cid))) > move.dista then
	doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Get closer to the target to  this move.")
	return 0
	end

		if not isSightClear(getThingPos(getCreatureSummons(cid)[1]), getThingPos(getCreatureTarget(cid)), false) then
		return 0
		end
end
	if move.type == "flying" then
		setPlayerStorageValue(getCreatureSummons(cid)[1], 1700, 1)
		elementa = FLYDAMAGE
	elseif move.type == "ground" then
		setPlayerStorageValue(getCreatureSummons(cid)[1], 1700, 2)
		elementa = GROUNDDAMAGE
	elseif move.type == "electric" then
		setPlayerStorageValue(getCreatureSummons(cid)[1], 1700, 3)
		elementa = ELECTRICDAMAGE
	elseif move.type == "ghost" then
		setPlayerStorageValue(getCreatureSummons(cid)[1], 1700, 4)
		elementa = GHOSTDAMAGE
	elseif move.type == "normal" then
		setPlayerStorageValue(getCreatureSummons(cid)[1], 1700, 5)
		elementa = NORMALDAMAGE
	elseif move.type == "fighting" then
		setPlayerStorageValue(getCreatureSummons(cid)[1], 1700, 6)
		elementa = FIGHTINGDAMAGE
	elseif move.type == "poison" then
		setPlayerStorageValue(getCreatureSummons(cid)[1], 1700, 7)
		elementa = POISONDAMAGE
	elseif move.type == "rock" then
		setPlayerStorageValue(getCreatureSummons(cid)[1], 1700, 8)
		elementa = ROCKDAMAGE
	elseif move.type == "bug" then
		setPlayerStorageValue(getCreatureSummons(cid)[1], 1700, 9)
		elementa = BUGDAMAGE
	elseif move.type == "fire" then
		setPlayerStorageValue(getCreatureSummons(cid)[1], 1700, 10)
		elementa = FIREDAMAGE
	elseif move.type == "water" then
		setPlayerStorageValue(getCreatureSummons(cid)[1], 1700, 11)
		elementa = WATERDAMAGE
	elseif move.type == "grass" then
		setPlayerStorageValue(getCreatureSummons(cid)[1], 1700, 12)
		elementa = GRASSDAMAGE
	elseif move.type == "psychic" then
		setPlayerStorageValue(getCreatureSummons(cid)[1], 1700, 13)
		elementa = PSYCHICDAMAGE
	elseif move.type == "ice" then
		setPlayerStorageValue(getCreatureSummons(cid)[1], 1700, 14)
		elementa = ICEDAMAGE
	elseif move.type == "dragon" then
		setPlayerStorageValue(getCreatureSummons(cid)[1], 1700, 15)
		elementa = DRAGONDAMAGE
	end
	local element = elementa
	local num1 = (move.base1)
	local num2 = (move.base2)
	local num3 = (move.bonus)



local ball = getPlayerSlotItem(cid, CONST_SLOT_FEET)
local pokename = getItemSpecialDescription(ball.uid)
local boost = pokename:match("\+(%d+)")

if(pokename:find("\+(%d+)"))then 
	num1 = ((move.base1)*(boost*(boostrate*2)))
	num2 = ((move.base2)*boost)
	num3 = (move.bonus)
else
	num1 = (move.base1)
	num2 = (move.base2)
	num3 = (move.bonus)
end



	setPlayerStorageValue(getCreatureSummons(cid)[1], 1000, ((num1)+(getPlayerLevel(cid)*(num3))))
	if move.name == "Windstorm" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..",  "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		posit = getThingPos(getCreatureSummons(cid)[1])
		local function storm(params)
		if #getCreatureSummons(params.cid) >= 1 then
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], params.el, posit, params.ar, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), params.ef)
		else
		end
		end
		addEvent(storm, 0, {cid = cid, el = element, ar = ws1, ef = 42})
		addEvent(storm, 500, {cid = cid, el = element, ar = ws2, ef = 42})
		addEvent(storm, 1000, {cid = cid, el = element, ar = ws3, ef = 42})
		addEvent(storm, 1500, {cid = cid, el = element, ar = ws4, ef = 42})
		addEvent(storm, 700, {cid = cid, el = null, ar = ws4, ef = CONST_ME_POFF})
		addEvent(storm, 1200, {cid = cid, el = null, ar = ws1, ef = CONST_ME_POFF})
		addEvent(storm, 1800, {cid = cid, el = null, ar = ws3, ef = CONST_ME_POFF})
	return 0
	elseif move.name == "Selfdestruct" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..",  "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		local function death(params)
		if isCreature(params.cid) then
		doCreatureAddHealth(getCreatureSummons(params.cid)[1], -getCreatureHealth(getCreatureSummons(cid)[1]))
		end
		end
		addEvent(death, 250, {cid = cid})
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), destruct1, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 5)
		addEvent(doAreaCombatHealth, 150, getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), destruct2, -(((num1)+(getPlayerLevel(cid)*(num3)))*0.7), -(((num2)+(getPlayerLevel(cid)*(num3)))*0.8), 5)
		addEvent(doAreaCombatHealth, 250, getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), destruct3, -(((num1)+(getPlayerLevel(cid)*(num3)))*0.4), -(((num2)+(getPlayerLevel(cid)*(num3)))*0.5), 5)
		setPlayerStorageValue(getCreatureSummons(cid)[1], 33, 1)
	return 0
	elseif move.name == "Future Sight" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..",  "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		doSendMagicEffect(getThingPos(getCreatureSummons(cid)[1]), 132)
		local seusummon = getCreatureSummons(cid)[1]
		local function normal(params)
		if isCreature(params.cid) then
		if isCreature(getCreatureSummons(params.cid)) then
		if getPlayerStorageValue(getCreatureSummons(cid)[1], 35) >= 1 and getCreatureSummons(cid)[1] == seusummon then
		setPlayerStorageValue(getCreatureSummons(cid)[1], 35, 0)
		doSendMagicEffect(getThingPos(getCreatureSummons(cid)[1]), 3)
		end
		end
		end
		end
		setPlayerStorageValue(getCreatureSummons(cid)[1], 35, 1)
		addEvent(normal, 8000, {cid = cid})
	return 0

-------------------------------------------------------------ADICIONADAS-----------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------
	elseif move.name == "Shadowstorm" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..",  "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		posit = getThingPos(getCreatureSummons(cid)[1])
		local function storm(params)
		if #getCreatureSummons(params.cid) >= 1 then
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], params.el, posit, params.ar, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), params.ef)
		else
		end
		end
		addEvent(storm, 0, {cid = cid, el = element, ar = ws1, ef = 140})
		addEvent(storm, 500, {cid = cid, el = element, ar = ws2, ef = 140})
		addEvent(storm, 1000, {cid = cid, el = element, ar = ws3, ef = 140})
		addEvent(storm, 1500, {cid = cid, el = element, ar = ws4, ef = 140})
		addEvent(storm, 150, {cid = cid, el = null, ar = ws5, ef = 208})
		addEvent(storm, 450, {cid = cid, el = null, ar = ws5, ef = 208})
		addEvent(storm, 750, {cid = cid, el = null, ar = ws5, ef = 208})
		addEvent(storm, 900, {cid = cid, el = null, ar = ws5, ef = 208})
		addEvent(storm, 1250, {cid = cid, el = null, ar = ws5, ef = 208})
		addEvent(storm, 1550, {cid = cid, el = null, ar = ws5, ef = 208})
	return 0
	elseif move.name == "Restore" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..",  "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		doSendMagicEffect(getThingPos(getCreatureSummons(cid)[1]), 14)
		doCreatureAddHealth(getCreatureSummons(cid)[1], ((num2)+((getPlayerLevel(cid))*(num3))))
		doSendAnimatedText(getThingPos(getCreatureSummons(cid)[1]), "+"..((num2)+((getPlayerLevel(cid))*(num3))).."", 35)
		return 0
	elseif move.name == "Psychicmew" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..",  "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		posit = getThingPos(getCreatureSummons(cid)[1])
		local function storm(params)
		if #getCreatureSummons(params.cid) >= 1 then
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], params.el, posit, params.ar, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), params.ef)
		else
		end
		end
		addEvent(storm, 0, {cid = cid, el = element, ar = ps1, ef = 133})
		addEvent(storm, 500, {cid = cid, el = element, ar = ps2, ef = 133})
		addEvent(storm, 700, {cid = cid, el = null, ar = ps1, ef = CONST_ME_POFF})
		addEvent(storm, 1000, {cid = cid, el = element, ar = ps1, ef = 133})
		addEvent(storm, 1200, {cid = cid, el = element, ar = ps2, ef = 133})
		addEvent(storm, 1500, {cid = cid, el = null, ar = ps2, ef = CONST_ME_POFF})
	return 0

	elseif move.name == "Psychicmewtwo" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..",  "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		posit = getThingPos(getCreatureSummons(cid)[1])
		local function storm(params)
		if #getCreatureSummons(params.cid) >= 1 then
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], params.el, posit, params.ar, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), params.ef)
		else
		end
		end
		addEvent(storm, 0, {cid = cid, el = element, ar = ps1, ef = 136})
		addEvent(storm, 500, {cid = cid, el = element, ar = ps2, ef = 136})
		addEvent(storm, 700, {cid = cid, el = null, ar = ps1, ef = CONST_ME_POFF})
		addEvent(storm, 1000, {cid = cid, el = element, ar = ps1, ef = 136})
		addEvent(storm, 1200, {cid = cid, el = element, ar = ps2, ef = 136})
		addEvent(storm, 1500, {cid = cid, el = null, ar = ps2, ef = CONST_ME_POFF})

	return 0
	
----------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------ADICIONADAS-----------------------------------------------------------------------
	
	elseif move.name == "Leaf Blade" then
	doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
	doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..",  "..move.name.."!", TALKTYPE_SAY)
	setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
	exhaustion.set(cid, move.ex, move.cd)
	sendCooldown(cid)
	doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 54)
	return 0
elseif move.name == "Transform" then
doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", "..move.name.."!", TALKTYPE_SAY)
exhaustion.set(cid, move.ex, move.cd, move.base1, move.base2, move.bonus, move.target, move.type)
doSetCreatureOutfit(getCreatureSummons(cid)[1], getCreatureOutfit(getCreatureTarget(cid)), 130000000)
return 0
	elseif move.name == "Earthshock" then
	doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
	doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..",  "..move.name.."!", TALKTYPE_SAY)
	setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
	exhaustion.set(cid, move.ex, move.cd)
	sendCooldown(cid)
	doAreaCombatHealth(getCreatureSummons(cid)[1], GROUNDDAMAGE, getThingPos(getCreatureSummons(cid)[1]), eshock, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 255)
	local sps = getThingPos(getCreatureSummons(cid)[1])
	sps.x = sps.x+1
	sps.y = sps.y+1
	doSendMagicEffect(sps, 127)
	return 0
	elseif move.name == "Gastro Acid" then
	doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
	doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..",  "..move.name.."!", TALKTYPE_SAY)
	setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
	exhaustion.set(cid, move.ex, move.cd)
	sendCooldown(cid)
	target = getCreatureTarget(cid)
	pos1 = getThingPos(target)
	posa = getThingPos(target)
	pos2 = getThingPos(target)
	pos3 = getThingPos(target)
	posb = getThingPos(target)
	pos1.x = pos1.x-2
	pos2.x = pos2.x+2
	pos1.y = pos1.y-4
	pos2.y = pos2.y-4
	pos3.y = pos3.y-4
	posa.x = posa.x-1
	posb.x = posb.x+1
	doSendDistanceShoot(pos1, posa, 14)
	doSendDistanceShoot(pos3, getThingPos(target), 14)
	doSendDistanceShoot(pos2, posb, 14)
	doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), acid, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 143)
	return 0
	elseif move.name == "Water Oath" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..",  "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		addEvent(doAreaCombatHealth, 0, getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), oatharea, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 255)
		local function shoot(params)
		lugar = getThingPos(getCreatureSummons(params.cid)[1])
			for x= -3,3 do
				for y= -3,3 do
				topos = {x=lugar.x+x, y=lugar.y+y, z=lugar.z}
				doSendDistanceShoot(getThingPos(getCreatureSummons(params.cid)[1]), topos, 2)
				end
			end
		end
		addEvent(shoot, 0, {cid = cid})
	return 0
	end
return 0
end