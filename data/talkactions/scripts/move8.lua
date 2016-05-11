-- Boost sistem --
boostrate = 1

local thunderwavecondition = createConditionObject(CONDITION_PARALYZE)
setConditionParam(thunderwavecondition, CONDITION_PARAM_TICKS, 9000)
setConditionFormula(thunderwavecondition, -0.75, -0.75, -0.75, -0.75)

local waba = createCombatArea{
	{0, 1, 1, 1, 0},
	{1, 1, 1, 1, 1},
	{1, 1, 3, 1, 1},
	{1, 1, 1, 1, 1},
	{0, 1, 1, 1, 0},
}


local snorlax = {lookType = 258}

local skullb = createCombatArea{
{0, 1, 1, 1, 0},
{1, 1, 1, 1, 1},
{1, 1, 2, 1, 1},
{1, 1, 1, 1, 1},
{0, 1, 1, 1, 0}
}



local twn = createCombatArea{
        {0, 0, 0, 2, 0, 0, 0},
	{0, 0, 0, 1, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 1, 0, 0, 0},
	{0, 0, 1, 0, 1, 0, 0},
	{0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 0, 0, 0, 0},
}
local tws = createCombatArea{
        {0, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 1, 0, 0, 0},
	{0, 0, 1, 0, 1, 0, 0},
	{0, 0, 0, 1, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 2, 0, 0, 0},
}
local tww = createCombatArea{
	{0, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 1, 0, 0},
	{2, 1, 0, 1, 0, 1, 0},
	{0, 0, 0, 0, 1, 0, 0},
        {0, 0, 0, 0, 0, 0, 0},
        {0, 0, 0, 0, 0, 0, 0},
}
local twe = createCombatArea{
	{0, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 0},
	{0, 0, 1, 0, 0, 0, 0},
	{0, 1, 0, 1, 0, 1, 2},
	{0, 0, 1, 0, 0, 0, 0},
        {0, 0, 0, 0, 0, 0, 0},
        {0, 0, 0, 0, 0, 0, 0},
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
local thunder = createCombatArea{
{1, 0, 0, 1, 0, 0, 1},
{0, 1, 0, 1, 0, 1, 0},
{0, 0, 1, 1, 1, 0, 0},
{1, 1, 1, 2, 1, 1, 1},
{0, 0, 1, 1, 1, 0, 0},
{0, 1, 0, 1, 0, 1, 0},
{1, 0, 0, 1, 0, 0, 1},
}

local destruct1 = createCombatArea{
	{0, 0, 1, 0, 0},
	{0, 1, 1, 1, 0},
	{1, 1, 3, 1, 1},
	{0, 1, 1, 1, 0},
	{0, 0, 1, 0, 0}
}

local destruct2 = createCombatArea{
	{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
	{0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0},
	{0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0},
	{0, 0, 1, 0, 0, 3, 0, 0, 1, 0, 0},
	{0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0},
	{0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0},
	{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
}

local destruct3 = createCombatArea{
	{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
	{0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0},
	{0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0},
	{0, 1, 1, 0, 0, 0, 0, 0, 1, 1, 0},
	{1, 1, 0, 0, 0, 3, 0, 0, 0, 1, 1},
	{0, 1, 1, 0, 0, 0, 0, 0, 1, 1, 0},
	{0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0},
	{0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0},
	{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0}
}

local grassarea = createCombatArea{
	{0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0},
	{0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0},
	{0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0},
	{0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
	{1, 1, 1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1, 1},
	{0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
	{0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0},
	{0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0},
	{0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0}
}

local confusion = createCombatArea{
{0, 1, 1, 1, 0},
{1, 1, 1, 1, 1},
{1, 1, 2, 1, 1},
{1, 1, 1, 1, 1},
{0, 1, 1, 1, 0},
}

local stomp = createCombatArea{
        {1, 0, 1, 0, 1},
	{0, 1, 1, 1, 0},
	{1, 1, 2, 1, 1},
	{0, 1, 1, 1, 0},
	{1, 0, 1, 0, 1}
}

-- WATER GUN
local bomb = createCombatArea{
{0, 1, 0}, 
{1, 3, 1}, 
{0, 1, 0}, 
}

local wg1n = createCombatArea{
{0, 0, 0}, 
{0, 2, 0}, 
{0, 1, 0}, 
}
local wg2n = createCombatArea{
{0, 2, 0},
{0, 0, 0},
{0, 1, 0}, 
{0, 1, 0}, 
{0, 1, 0}, 
}
local wg3n = createCombatArea{
{0, 2, 0},
{0, 0, 0},
{0, 0, 0},
{0, 0, 0}, 
{0, 0, 0}, 
{0, 1, 0}, 
}

local wg1s = createCombatArea{
{0, 1, 0}, 
{0, 2, 0}, 
{0, 0, 0}, 
}
local wg2s = createCombatArea{
{0, 1, 0},
{0, 1, 0},
{0, 1, 0}, 
{0, 0, 0}, 
{0, 2, 0}, 
}
local wg3s = createCombatArea{
{0, 1, 0},
{0, 0, 0},
{0, 0, 0},
{0, 0, 0}, 
{0, 0, 0}, 
{0, 2, 0}, 
}

local wg1e = createCombatArea{
{0, 0, 0}, 
{1, 2, 0}, 
{0, 0, 0}, 
}
local wg2e = createCombatArea{ 
{1, 1, 1, 0, 2}, 
}
local wg3e = createCombatArea{ 
{1, 0, 0, 0, 0, 2}, 
}

local wg1w = createCombatArea{
{0, 0, 0}, 
{0, 2, 1}, 
{0, 0, 0}, 
}
local wg2w = createCombatArea{ 
{2, 0, 1, 1, 1}, 
}
local wg3w = createCombatArea{ 
{2, 0, 0, 0, 0, 1}, 
}
-- WATER GUN END

local pump1 = createCombatArea{
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0},
{0, 0, 1, 0, 1, 3, 1, 0, 1, 0, 0},
{0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
}
local pump2 = createCombatArea{
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0},
{0, 0, 0, 1, 0, 3, 0, 1, 0, 0, 0},
{0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
}

local tor1 = createCombatArea{
{0, 1, 0}, 
{1, 2, 1}, 
{0, 1, 0}, 
}
local tor2 = createCombatArea{
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 1, 0, 2, 0, 1, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
}
local tor3 = createCombatArea{
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0},
{0, 0, 1, 0, 0, 2, 0, 0, 1, 0, 0},
{0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
}

local earthquake = createCombatArea{
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 1, 1, 1, 1, 2, 1, 1, 1, 1, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
}

local sand1 = createCombatArea{
{0, 0, 0}, 
{0, 3, 0}, 
{0, 0, 0}, 
}

local whirl3 = createCombatArea{
{0, 0, 0}, 
{1, 3, 1}, 
{0, 0, 0}, 
}

local whirl5 = createCombatArea{
{0, 0, 0, 0, 0}, 
{1, 1, 3, 1, 1}, 
{0, 0, 0, 0, 0}, 
}

local whirl32 = createCombatArea{
{0, 0, 0}, 
{1, 3, 1}, 
{0, 0, 0}, 
}

local whirl52 = createCombatArea{
{0, 0, 0, 0, 0}, 
{1, 1, 3, 1, 1}, 
{0, 0, 0, 0, 0}, 
}

--WING ATTACK
local wingn = createCombatArea{
{0, 0, 0}, 
{1, 2, 0}, 
{0, 0, 0}, 
}
local wings = createCombatArea{
{1, 0, 0}, 
{0, 2, 0}, 
{0, 0, 0}, 
}
local winge = createCombatArea{
{1, 0, 0}, 
{0, 2, 0}, 
{0, 0, 0}, 
}
local wingw = createCombatArea{
{0, 2, 3}, 
{0, 2, 2}, 
{0, 0, 0}, 
}
local wingds = createCombatArea{
{1, 1, 1}, 
{0, 2, 0}, 
{0, 0, 0}, 
}
local wingdn = createCombatArea{
{0, 0, 0}, 
{0, 2, 0}, 
{1, 1, 1}, 
}
local wingde = createCombatArea{
{1, 0, 0}, 
{1, 2, 0}, 
{1, 0, 0}, 
}
local wingdw = createCombatArea{
{0, 0, 1}, 
{0, 2, 1}, 
{0, 0, 1}, 
}

local tsn = createCombatArea{
{0, 0, 0, 2, 0, 0, 0},
{0, 0, 0, 1, 0, 0, 0},
{0, 0, 1, 1, 1, 0, 0},
{0, 0, 1, 1, 1, 0, 0},  
{0, 1, 1, 1, 1, 1, 0},
}
local tss = createCombatArea{
{0, 1, 1, 1, 1, 1, 0},
{0, 0, 1, 1, 1, 0, 0},
{0, 0, 1, 1, 1, 0, 0},
{0, 0, 0, 1, 0, 0, 0},
{0, 0, 0, 2, 0, 0, 0},  
}
local tse = createCombatArea{
{0, 0, 1, 0, 0, 0, 0},
{0, 0, 1, 1, 1, 0, 0},
{0, 0, 1, 1, 1, 1, 2},
{0, 0, 1, 1, 1, 0, 0},
{0, 0, 1, 0, 0, 0, 0},  
}
local tsw = createCombatArea{
{0, 0, 0, 0, 0, 0, 1},
{0, 0, 0, 0, 1, 1, 1},
{0, 0, 2, 1, 1, 1, 1},
{0, 0, 0, 0, 1, 1, 1},
{0, 0, 0, 0, 0, 0, 1},  
}

local pokeis = {'venusaur','Charizard','Blastoise', 'Pidgeot', 'raichu', 'nidoqueen', 'nidoking', 'clefable', 'Wigglytuff', 'arcanine', 'Poliwrath', 'Alakazam', 'machamp', 'tentacruel', 'Golem', 'Rapidash', 'dewgong', 'gengar', 'Hitmonchan', 'Rhydon', 'Kangaskhan', 'MrMime','Scyther', 'Jynx', 'Electabuzz', 'Magmar', 'Gyarados', 'Lapras', 'Ditto', 'Omastar', 'Kabutops', 'Aerodactyl', 'Snorlax', 'Articuno', 'Zapdos', 'Moltres','Dragonair', 'Dragonite', 'Mewtwo', 'Mew','meganium','typhlosion','Feraligatr', 'Noctowl', 'Crobat', 'lanturn', 'Togetic', 'Xatu', 'Ampharos', 'Sudowoodo', 'Slowking', 'Misdreavus', 'unown a', 'unown b', 'unown c', 'unown d', 'unown e', 'unown f', 'unown g', 'unown h', 'unown i', 'unown j', 'unown k', 'unown l', 'unown m', 'unown n', 'unown o', 'unown p', 'unown q', 'unown r', 'unown s', 'unown t', 'unown u', 'unown v', 'unown x', 'unown w', 'unown y', 'unown z',  'Wobbuffet', 'Girafarig', 'Steelix', 'Granbull', 'Scizor', 'Heracross', 'Sneasel', 'Ursaring', 'Magcargo', 'Piloswine', 'Mantine', 'Skarmory', 'houndoom', 'Kingdra', 'Porygon2', 'Stantler', 'Hitmontop', 'miltank', 'Blissey', 'Raikou', 'Entei', 'Suicune', 'Tyranitar', 'Lugia', 'Ho Oh', 'Celebi', 'Dark Abra', 'Elder Charizard', 'Elite Hitmonchan', 'Shiny Arcanine', 'Shiny Blastoise', 'Shiny Electabuzz', 'Shiny Gengar', 'Shiny Jynx', 'Shiny Raichu', 'Shiny Scyther', 'Shiny Tentacruel', 'Shiny Venusaur', 'Mini Gyarados', 'Red Gyarados', 'Smeargle Tm 5', 'Smeargle Tm 6', 'Big Snorlax', 'Shiny Alakazam', 'Shiny Dragonair', 'Shiny Golem', 'Shiny Machamp', 'Shiny MrMime', 'Shiny Nidoking', 'Shiny Pidgeot', 'Shiny Rhydon', 'Shiny Magmar'}

function onSay(cid)	
    local it = "8"
	local cdzin = "move"..it..""
	local mypoke = getCreatureSummons(cid)[1]
	if getCreatureName(mypoke) == "Ditto" or getCreatureName(mypoke) == "Shiny Ditto" then
       name = getPlayerStorageValue(mypoke, 1010)   --edited
    else
       name = getCreatureName(mypoke)
    end
	local move = movestable[name].move8
	if #getCreatureSummons(cid) == 0 then
	doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You need a pokemon to use moves.")
	return 0
	end
if getTilePzInfo(getPlayerPosition(cid)) then
	doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Can't use Moves on protect zone.")
    return true
	end
	if not isInArray(pokeis, getCreatureName(getCreatureSummons(cid)[1])) then
	doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Your pokemon doesn\'t recognize this move.")
	return 0
	end

	if getPlayerLevel(cid) < move.level then
	doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You don\'t have enough level to use this move.")
	return 0
	end
	if exhaustion.get(cid, move.ex) then
		seconds = math.floor(((exhaustion.get(cid, move.ex)) + 1))
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have to wait "..seconds.." seconds to use this move again.")
		return 0
		end
	if getPlayerStorageValue(getCreatureSummons(cid)[1], 3) >= 1 then
	doSendAnimatedText(getThingPos(getCreatureSummons(cid)[1]), "MISS", 215)
	setPlayerStorageValue(getCreatureSummons(cid)[1], 3, -1)
	doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
	exhaustion.set(cid, move.ex, move.cd)
	return true
	end
	if getPlayerStorageValue(getCreatureSummons(cid)[1], 5) >= 1 then
		if math.random(1,100) <= 33 then
		doSendAnimatedText(getThingPos(getCreatureSummons(cid)[1]), "SELF HIT", 180)
		local levels = getPlayerLevel(cid)
		doTargetCombatHealth(cid, getCreatureSummons(cid)[1], COMBAT_PHYSICALDAMAGE, -(math.random((levels*3),(levels*5))), -((math.random((levels*3),(levels*5))+10)), 3)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
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
	doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Get closer to the target to use this move.")
	return 0
	end

	if not isSightClear(getThingPos(getCreatureSummons(cid)[1]), getThingPos(getCreatureTarget(cid)), false) then
	return 0
	end
end
	if move.type == "flying" then
		elementa = FLYDAMAGE
	elseif move.type == "ground" then
		elementa = GROUNDDAMAGE
	elseif move.type == "electric" then
		elementa = ELECTRICDAMAGE
	elseif move.type == "ghost" then
		elementa = GHOSTDAMAGE
	elseif move.type == "normal" then
		elementa = NORMALDAMAGE
	elseif move.type == "fighting" then
		elementa = FIGHTINGDAMAGE
	elseif move.type == "poison" then
		elementa = POISONDAMAGE
	elseif move.type == "rock" then
		elementa = ROCKDAMAGE
	elseif move.type == "bug" then
		elementa = BUGDAMAGE
	elseif move.type == "fire" then
		elementa = FIREDAMAGE
	elseif move.type == "water" then
		elementa = WATERDAMAGE
	elseif move.type == "grass" then
		elementa = GRASSDAMAGE
	elseif move.type == "psychic" then
		elementa = PSYCHICDAMAGE
	elseif move.type == "ice" then
		elementa = ICEDAMAGE
	elseif move.type == "dragon" then
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


	if move.name == "Healeara" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..",  "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		doCreatureAddHealth(getCreatureSummons(cid)[1], ((num2)+((getPlayerLevel(cid))*(num3))))
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), grassarea, ((num1)+(getPlayerLevel(cid)*(num3))), ((num2)+(getPlayerLevel(cid)*(num3))), CONST_ME_MAGIC_BLUE)
        doSendAnimatedText(getThingPos(getCreatureSummons(cid)[1]), "+"..((num2)+((getPlayerLevel(cid))*(num3))).."", 35)
		return 0
	elseif move.name == "Rock Slide" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..",  "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		local posalvo = getThingPos(getCreatureTarget(cid))
		local boltalvo = getCreatureTarget(cid)
		posalvo.x = posalvo.x-2
		posalvo.y = posalvo.y-6
		doSendDistanceShoot(posalvo, getThingPos(getCreatureTarget(cid)), 11)
		local function bolt(params)
		if isCreature(params.cid) then
		if isCreature(getCreatureTarget(cid)) then
		if getCreatureTarget(params.cid) == params.boltalvo then
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 44)
		end
		end
		end
		end
		addEvent(bolt, 200, {cid = cid, boltalvo = boltalvo})
	        elseif move.name == "Gust" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		posit = getThingPos(getCreatureSummons(cid)[1])
		local function gust(params)
		if #getCreatureSummons(params.cid) >= 1 then
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, params.ar, sand1, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 42)
		else
		end
		end
		local posicao = getThingPos(getCreatureSummons(cid)[1])
		if getCreatureLookDir(getCreatureSummons(cid)[1]) == 0 then
		addEvent(gust, 0, {cid = cid, ar = {x=posicao.x, y=posicao.y-1, z=posicao.z}})
		addEvent(gust, 500, {cid = cid, ar = {x=posicao.x, y=posicao.y-2, z=posicao.z}})
		addEvent(gust, 1000, {cid = cid, ar = {x=posicao.x, y=posicao.y-3, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, ar = {x=posicao.x, y=posicao.y-4, z=posicao.z}})
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 2 then
		addEvent(gust, 0, {cid = cid, ar = {x=posicao.x, y=posicao.y+1, z=posicao.z}})
		addEvent(gust, 500, {cid = cid, ar = {x=posicao.x, y=posicao.y+2, z=posicao.z}})
		addEvent(gust, 1000, {cid = cid, ar = {x=posicao.x, y=posicao.y+3, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, ar = {x=posicao.x, y=posicao.y+4, z=posicao.z}})
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 1 then
		addEvent(gust, 0, {cid = cid, ar = {x=posicao.x+1, y=posicao.y, z=posicao.z}})
		addEvent(gust, 500, {cid = cid, ar = {x=posicao.x+2, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1000, {cid = cid, ar = {x=posicao.x+3, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, ar = {x=posicao.x+4, y=posicao.y, z=posicao.z}})
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 3 then
		addEvent(gust, 0, {cid = cid, ar = {x=posicao.x-1, y=posicao.y, z=posicao.z}})
		addEvent(gust, 500, {cid = cid, ar = {x=posicao.x-2, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1000, {cid = cid, ar = {x=posicao.x-3, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, ar = {x=posicao.x-4, y=posicao.y, z=posicao.z}})
		end
		return 0
---------------------ADICIONADAS---------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------
	elseif move.name == "Hypnosis" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..",  "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		setPlayerStorageValue(getCreatureTarget(cid), 3, 1)
		local alvo = getCreatureTarget(cid)
		doSendDistanceShoot(getThingPos(getCreatureSummons(cid)[1]), getThingPos(getCreatureTarget(cid)), 24)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 136)
		local function string(params)
		if isCreature(params.alvo) then
		if getPlayerStorageValue(params.alvo, 3) >= 1 then
		doSendMagicEffect(getThingPos(params.alvo), 136)
		end
		end
		end
		local function normalstr(params)
		if isCreature(params.alvo) then
		if getPlayerStorageValue(params.alvo, 3) >= 1 then
		setPlayerStorageValue(params.alvo, 3, -1)
		end
		end
		end
		addEvent(string, 250, {alvo = alvo})
		addEvent(string, 500, {alvo = alvo})
		addEvent(string, 750, {alvo = alvo})
		addEvent(string, 1000, {alvo = alvo})
		addEvent(string, 1250, {alvo = alvo})
		addEvent(string, 1500, {alvo = alvo})
		addEvent(string, 1750, {alvo = alvo})
		addEvent(string, 2000, {alvo = alvo})
		addEvent(string, 2250, {alvo = alvo})
		addEvent(string, 2500, {alvo = alvo})
		addEvent(string, 2750, {alvo = alvo})
		addEvent(string, 3000, {alvo = alvo})
		addEvent(normalstr, 3050, {alvo = alvo})
		return 0
 elseif move.name == "Focus" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..",  "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		doSendMagicEffect(getThingPos(getCreatureSummons(cid)[1]), CONST_ME_MAGIC_RED)
		setPlayerStorageValue(getCreatureSummons(cid)[1], 254, 1)
		local function quiet(params)
		if isCreature(params.cid) then
		if isCreature(getCreatureSummons(params.cid)[1]) then
		if getPlayerStorageValue(getCreatureSummons(cid)[1], 254) >= 1 then
		doSendMagicEffect(getThingPos(getCreatureSummons(params.cid)[1]), 132)
		end
		end
		end
		end
		local function desc(params)
		if isCreature(params.cid) then
		if isCreature(getCreatureSummons(params.cid)[1]) then
		if getPlayerStorageValue(getCreatureSummons(cid)[1], 254) >= 1 then
		setPlayerStorageValue(getCreatureSummons(cid)[1], 254, 0)
		end
		end
		end
		end
		for calm = 1, 12 do
		addEvent(quiet, calm*500, {cid = cid})
		end
		addEvent(desc, 12*500, {cid = cid})
	        return 0
---------------------ADICIONADAS---------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------
	        elseif move.name == "Rage" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 110)
		local hitalvo = getCreatureTarget(cid)
		local function hit(params)
		if isCreature(getCreatureSummons(params.cid)[1]) then
		if isCreature(getCreatureTarget(params.cid)) then
		if getCreatureTarget(params.cid) == params.hitalvo then
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], FLYDAMAGE, getThingPos(getCreatureTarget(params.cid)), 0, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 110)
		doSendMagicEffect(getThingPos(getCreatureSummons(cid)[1]), CONST_ME_MAGIC_RED)
		end
		end
		end
		end
		addEvent(hit, 1000, {cid = cid, hitalvo = hitalvo})
		addEvent(hit, 2000, {cid = cid, hitalvo = hitalvo})
		addEvent(hit, 3000, {cid = cid, hitalvo = hitalvo})
		addEvent(hit, 4000, {cid = cid, hitalvo = hitalvo})
		addEvent(hit, 5000, {cid = cid, hitalvo = hitalvo})
		addEvent(hit, 6000, {cid = cid, hitalvo = hitalvo})
		return 0
		 elseif move.name == "Zzzzz" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		doSendMagicEffect(getThingPos(getCreatureSummons(cid)[1]), 32)
		doCreatureAddHealth(getCreatureSummons(cid)[1], ((num2)+((getPlayerLevel(cid))*(num3))))
		doSendAnimatedText(getThingPos(getCreatureSummons(cid)[1]), "+"..((num2)+((getPlayerLevel(cid))*(num3))).."", 32)
		return 0
	   elseif move.name == "Charge Beam" then
		alvo = getCreatureName(getCreatureTarget(cid))
		if getCreatureLookDir(getCreatureSummons(cid)[1]) == 0 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg1n, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 94)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg2n, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 93)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg3n, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 95)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 2 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg1s, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 91)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg2s, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 93)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg3s, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 92)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 1 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg1e, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 86)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg2e, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 88)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg3e, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 87)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 3 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg1w, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 89)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg2w, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 88)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg3w, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 90)
		end
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		return 0
       elseif move.name == "Melody" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		posit = getThingPos(getCreatureSummons(cid)[1])
		local function storm(params)
		if #getCreatureSummons(params.cid) >= 1 then
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], params.el, posit, params.ar, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), params.ef)
		doAreaCombatCondition(getCreatureSummons(cid)[1], getThingPos(getCreatureSummons(cid)[1]), earthquake, thunderwavecondition, 255)
		else
		end
		end
		addEvent(storm, 0, {cid = cid, el = element, ar = earthquake, ef = 19})
		addEvent(storm, 1000, {cid = cid, el = element, ar = earthquake, ef = 19})
                addEvent(storm, 2000, {cid = cid, el = element, ar = earthquake, ef = 19})
                addEvent(storm, 3000, {cid = cid, el = element, ar = earthquake, ef = 19})
                addEvent(storm, 4000, {cid = cid, el = element, ar = earthquake, ef = 19})
                addEvent(storm, 5000, {cid = cid, el = element, ar = earthquake, ef = 19})
	        return 0
			
        elseif move.name == "Fist Machine" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..",  "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		if getCreatureLookDir(getCreatureSummons(cid)[1]) == 0 then
		local flamepos = getThingPos(getCreatureSummons(cid)[1])
		flamepos.x = flamepos.x+0
		flamepos.y = flamepos.y-1
		doSendMagicEffect(flamepos, 217)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wingdn, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 255)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 1 then
		local flamepos = getThingPos(getCreatureSummons(cid)[1])
		flamepos.x = flamepos.x+2
		flamepos.y = flamepos.y+0
		doSendMagicEffect(flamepos, 215)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wingde, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 255)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 2 then
		local flamepos = getThingPos(getCreatureSummons(cid)[1])
		flamepos.x = flamepos.x-0
		flamepos.y = flamepos.y+2
		doSendMagicEffect(flamepos, 218)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wingds, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 255)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 3 then
		local flamepos = getThingPos(getCreatureSummons(cid)[1])
		flamepos.x = flamepos.x-1
		flamepos.y = flamepos.y+0
		doSendMagicEffect(flamepos, 216)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wingdw, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 255)		
                end
		return 0
elseif move.name == "Transform" then
doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", "..move.name.."!", TALKTYPE_SAY)
exhaustion.set(cid, move.ex, move.cd, move.base1, move.base2, move.bonus, move.target, move.type)
doSetCreatureOutfit(getCreatureSummons(cid)[1], getCreatureOutfit(getCreatureTarget(cid)), 130000000)
return 0
	elseif move.name == "Mega Horn" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
			local function throw(params)
			if isMonster(getCreatureTarget(params.cid)) then
			doSendDistanceShoot(getThingPos(getCreatureSummons(params.cid)[1]), getThingPos(getCreatureTarget(params.cid)), 25)
			else
			end
			end
                        local function damage(params)
			if isMonster(getCreatureTarget(params.cid)) then
			doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 15)
			else
			end
			end
		addEvent(damage, 0, {cid = cid})
		addEvent(throw, 0, {cid = cid})
		return 0
	elseif move.name == "Water Bash" then
                doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
                doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
             	setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		        exhaustion.set(cid, move.ex, move.cd)
		        sendCooldown(cid)
                doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), skullb, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 30)
                return 0
elseif move.name == "Rock Bash" then
                doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
                doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		        setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		        exhaustion.set(cid, move.ex, move.cd)
		        sendCooldown(cid)
                doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), skullb, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 238)
                return 0
elseif move.name == "Scy Bash" then
                doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
                doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		        setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		        exhaustion.set(cid, move.ex, move.cd)
		        sendCooldown(cid)
                doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), skullb, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 249)
                return 0
elseif move.name == "Skull Bash" then
                doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
                doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		        setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		        exhaustion.set(cid, move.ex, move.cd)
		        sendCooldown(cid)
                doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), skullb, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 208)
                return 0
elseif move.name == "Punch Bash" then
                doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
                doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		        setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		        exhaustion.set(cid, move.ex, move.cd)
		        sendCooldown(cid)
                doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), skullb, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 112)
                return 0
elseif move.name == "Ghost Bash" then
                doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
                doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		        setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		        exhaustion.set(cid, move.ex, move.cd)
		        sendCooldown(cid)
                doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), skullb, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 115)
                return 0
		elseif move.name == "Whirlwind" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
	    setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		posit = getThingPos(getCreatureSummons(cid)[1])
		local function gust(params)
		if #getCreatureSummons(params.cid) >= 1 then
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, params.ar, params.br, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 42)
		else
		end
		end
		local posicao = getThingPos(getCreatureSummons(cid)[1])
		if getCreatureLookDir(getCreatureSummons(cid)[1]) == 0 then
		addEvent(gust, 0, {cid = cid, ar = {x=posicao.x, y=posicao.y-1, z=posicao.z}, br = sand1})
		addEvent(gust, 500, {cid = cid, ar = {x=posicao.x, y=posicao.y-2, z=posicao.z}, br = whirl3})
		addEvent(gust, 1000, {cid = cid, ar = {x=posicao.x, y=posicao.y-3, z=posicao.z}, br = whirl5})
		addEvent(gust, 1500, {cid = cid, ar = {x=posicao.x, y=posicao.y-4, z=posicao.z}, br = whirl5})
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 2 then
		addEvent(gust, 0, {cid = cid, ar = {x=posicao.x, y=posicao.y+1, z=posicao.z}, br = sand1})
		addEvent(gust, 500, {cid = cid, ar = {x=posicao.x, y=posicao.y+2, z=posicao.z}, br = whirl3})
		addEvent(gust, 1000, {cid = cid, ar = {x=posicao.x, y=posicao.y+3, z=posicao.z}, br = whirl5})
		addEvent(gust, 1500, {cid = cid, ar = {x=posicao.x, y=posicao.y+4, z=posicao.z}, br = whirl5})
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 1 then
		addEvent(gust, 0, {cid = cid, ar = {x=posicao.x+1, y=posicao.y, z=posicao.z}, br = sand1})
		addEvent(gust, 500, {cid = cid, ar = {x=posicao.x+2, y=posicao.y, z=posicao.z}, br = whirl32})
		addEvent(gust, 1000, {cid = cid, ar = {x=posicao.x+3, y=posicao.y, z=posicao.z}, br = whirl52})
		addEvent(gust, 1500, {cid = cid, ar = {x=posicao.x+4, y=posicao.y, z=posicao.z}, br = whirl52})
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 3 then
		addEvent(gust, 0, {cid = cid, ar = {x=posicao.x-1, y=posicao.y, z=posicao.z}, br = sand1})
		addEvent(gust, 500, {cid = cid, ar = {x=posicao.x-2, y=posicao.y, z=posicao.z}, br = whirl32})
		addEvent(gust, 1000, {cid = cid, ar = {x=posicao.x-3, y=posicao.y, z=posicao.z}, br = whirl52})
		addEvent(gust, 1500, {cid = cid, ar = {x=posicao.x-4, y=posicao.y, z=posicao.z}, br = whirl52})
		end
	        return 0
elseif move.name == "Scratch" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..",  "..move.name.."!", TALKTYPE_SAY)
	    setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 142)
		return 0
                elseif move.name == "Sleep Powder" then
                doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
                doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
             	setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		        exhaustion.set(cid, move.ex, move.cd)
		        sendCooldown(cid)
                doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), confusion, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 27)
				doAreaCombatCondition(getCreatureSummons(cid)[1], getThingPos(getCreatureSummons(cid)[1]), confusion, thunderwavecondition, 255)
                return 0
                elseif move.name == "Twister" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
	    setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		if getCreatureLookDir(getCreatureSummons(cid)[1]) == 0 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), twn, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 42)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 1 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), twe, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 42)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 2 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), tws, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 42)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 3 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), tww, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 42)
		end
		return 0
 elseif move.name == "Stomp Tomb" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
	    setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		if getCreatureLookDir(getCreatureSummons(cid)[1]) == 0 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), twn, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 118)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 1 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), twe, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 118)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 2 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), tws, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 118)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 3 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), tww, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 118)
		end
		return 0
                elseif move.name == "Stun Spore" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..",  "..move.name.."!", TALKTYPE_SAY)
	    setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		if getCreatureLookDir(getCreatureSummons(cid)[1]) == 0 then
		doAreaCombatCondition(getCreatureSummons(cid)[1], getThingPos(getCreatureSummons(cid)[1]), confusion, thunderwavecondition, 255)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), confusion, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 85)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 1 then
		doAreaCombatCondition(getCreatureSummons(cid)[1], getThingPos(getCreatureSummons(cid)[1]), confusion, thunderwavecondition, 255)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), confusion, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 85)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 2 then
		doAreaCombatCondition(getCreatureSummons(cid)[1], getThingPos(getCreatureSummons(cid)[1]), confusion, thunderwavecondition, 255)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), confusion, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 85)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 3 then
		doAreaCombatCondition(getCreatureSummons(cid)[1], getThingPos(getCreatureSummons(cid)[1]), confusion, thunderwavecondition, 255)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), confusion, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 85)
		end
		return 0
	        elseif move.name == "Hyper Fang" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
	    setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(getPlayerLevel(cid)*(num3))), -((num1)+(getPlayerLevel(cid)*(num3))), 159)
		return 0
                elseif move.name == "Tornado" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
	    setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		posit = getThingPos(getCreatureSummons(cid)[1])
		local function tornado(params)
		if #getCreatureSummons(params.cid) >= 1 then
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], params.el, posit, params.ar, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), params.ef)
		else
		end
		end
		addEvent(tornado, 0, {cid = cid, ef = 42, ar = tor1, el = element})
		addEvent(tornado, 500, {cid = cid, ef = 42, ar = tor2, el = element})
		addEvent(tornado, 1000, {cid = cid, ef = 42, ar = tor3, el = element})
		addEvent(tornado, 500, {cid = cid, ef = CONST_ME_POFF, ar = tor1, el = null})
		addEvent(tornado, 1200, {cid = cid, ef = CONST_ME_POFF, ar = tor2, el = null})
		addEvent(tornado, 1900, {cid = cid, ef = CONST_ME_POFF, ar = tor2, el = null})
		addEvent(tornado, 1900, {cid = cid, ef = CONST_ME_POFF, ar = tor3, el = null})
	        return 0
                elseif move.name == "Hydropump" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
	    setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		posit = getThingPos(getCreatureSummons(cid)[1])
		local function tornado(params)
		if #getCreatureSummons(params.cid) >= 1 then
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], params.el, posit, params.ar, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), params.ef)
		else
		end
		end
		addEvent(tornado, 0, {cid = cid, ef = 53, ar = pump1, el = element})
		addEvent(tornado, 500, {cid = cid, ef = 53, ar = pump2, el = element})
	        return 0
	elseif move.name == "Afro Rest" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
	    setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		doSendMagicEffect(getThingPos(getCreatureSummons(cid)[1]), 132)
		doCreatureAddHealth(getCreatureSummons(cid)[1], ((num2)+((getPlayerLevel(cid))*(num3))))
		doSendAnimatedText(getThingPos(getCreatureSummons(cid)[1]), "+"..((num2)+((getPlayerLevel(cid))*(num3))).."", 132)
		return 0
                elseif move.name == "Rest" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
	    setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		if getCreatureName(getCreatureSummons(cid)[1]) == "Snorlax" then
		doSetCreatureOutfit(getCreatureSummons(cid)[1], snorlax, 5000)
		doChangeSpeed(getCreatureSummons(cid)[1], 145)
               
		end
		setPlayerStorageValue(getCreatureSummons(cid)[1], 4, 1)
			local function rest(params)
			if isCreature(params.cid) then
			if isCreature(getCreatureSummons(params.cid)[1]) then
			if getCreatureCondition(getCreatureSummons(params.cid)[1], CONDITION_OUTFIT) == true then
		        doCreatureAddHealth(getCreatureSummons(cid)[1], ((num2)+((getPlayerLevel(cid))*(num3))))
		        doSendAnimatedText(getThingPos(getCreatureSummons(cid)[1]), "+"..((num2)+((getPlayerLevel(cid))*(num3))).."", 32)
			end
			end
			end
			end
		        for r = 1, 4 do
		        addEvent(rest, 1000*r, {cid = cid})
		        end
			local function stoprest(params)
			if isCreature(params.cid) then
			if isCreature(getCreatureSummons(params.cid)[1]) then
			doChangeSpeed(getCreatureSummons(params.cid)[1], -145)
			if getPlayerStorageValue(getCreatureSummons(params.cid)[1], 4) >= 1 then
			setPlayerStorageValue(getCreatureSummons(params.cid)[1], 4, 0)
			end
			end
			end
			end
		        addEvent(stoprest, 4300, {cid = cid})
		return 0
 elseif move.name == "Solar Beam" then
		alvo = getCreatureName(getCreatureTarget(cid))
		if getCreatureLookDir(getCreatureSummons(cid)[1]) == 0 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg1n, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 94)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg2n, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 93)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg3n, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 95)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 2 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg1s, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 91)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg2s, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 93)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg3s, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 92)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 1 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg1e, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 86)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg2e, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 88)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg3e, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 87)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 3 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg1w, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 89)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg2w, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 88)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg3w, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 90)
		end
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
	    setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		return 0
                elseif move.name == "Poison Powder" then
                doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
                doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
        	    setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		        exhaustion.set(cid, move.ex, move.cd)
		        sendCooldown(cid)
                doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), confusion, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 84)
                return 0
                elseif move.name == "Psychic" then
                doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
                doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
	            setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		        exhaustion.set(cid, move.ex, move.cd)
		        sendCooldown(cid)
                doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), confusion, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 133)
                return 0
	elseif move.name == "Fear" then
                doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
                doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
	            setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		        exhaustion.set(cid, move.ex, move.cd)
		        sendCooldown(cid)
                local t = getCreatureTarget(cid)
                setPlayerStorageValue(t, 5, 1)
                local function confused(params)
                if isCreature(params.t) then
                local spdc = getCreatureSpeed(params.t)
                if getCreatureLookDir(params.t) == 0 then
                confs = math.random(1,3)
                elseif getCreatureLookDir(params.t) == 1 then
                confurandom = math.random(1,99)
                if confurandom <= 33 then
                confs = 0
                elseif confurandom >= 67 then
                confs = 2
                else
                confs = 3
                end
                elseif getCreatureLookDir(params.t) == 2 then
                confurandom = math.random(1,99)
                if confurandom <= 33 then
                confs = 3
                elseif confurandom >= 67 then
                confs = 0
                else
                confs = 1
                end
                elseif getCreatureLookDir(params.t) == 3 then
                confs = math.random(0,2)
                end
                doPushCreature(params.t, confs, 1, 0)
                doSendMagicEffect(getThingPos(params.t), 214)
                end
                end
                local function nonc(params)
                if isCreature(params.t) then
                doChangeSpeed(params.t, -getCreatureSpeed(params.t))
                doChangeSpeed(params.t, getCreatureBaseSpeed(params.t))
                setPlayerStorageValue(params.t, 5, -1)
                end
                end
                doChangeSpeed(t, -( getCreatureSpeed(t)/3))
                doSendMagicEffect(getThingPos(t), 214)
                for i = 1, math.random(6,7) do
                addEvent(confused, 1000*i, {cid = cid, t = t})
                end
                addEvent(nonc, 7100, {cid - cid, t = t})
                return 0
  elseif move.name == "Psyusion" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
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
		addEvent(storm, 0, {cid = cid, el = element, ar = pu1, ef = 136})
		addEvent(storm, 500, {cid = cid, el = element, ar = pu2, ef = 133})
		addEvent(storm, 1000, {cid = cid, el = element, ar = pu3, ef = 136})
		addEvent(storm, 1500, {cid = cid, el = element, ar = pu4, ef = 137})
                addEvent(storm, 2000, {cid = cid, el = element, ar = pu5, ef = 133})
	        return 0
	        elseif move.name == "Water Gun" then
		if getCreatureLookDir(getCreatureSummons(cid)[1]) == 0 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg1n, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 74)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg2n, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 75)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg3n, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 76)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 2 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg1s, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 77)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg2s, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 75)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg3s, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 78)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 1 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg1e, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 69)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg2e, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 70)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg3e, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 71)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 3 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg1w, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 72)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg2w, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 70)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg3w, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 73)
		end
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
	    setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		return 0
                elseif move.name == "Reflect" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..",  "..move.name.."!", TALKTYPE_SAY)
	    setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		doSendMagicEffect(getThingPos(getCreatureSummons(cid)[1]), 135)
		setPlayerStorageValue(getCreatureSummons(cid)[1], 34, 1)
	        return 0
                elseif move.name == "Fire Blast" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..",  "..move.name.."!", TALKTYPE_SAY)
	    setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		posit = getThingPos(getCreatureSummons(cid)[1])
		local function gust(params)
		if #getCreatureSummons(params.cid) >= 1 then
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], null, params.ar, sand1, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), params.eee)
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, params.ar, whirl3, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 35)
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], null, params.arr, whirl3, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 35)
		else
		end
		end
		local posicao = getThingPos(getCreatureSummons(cid)[1])
		if getCreatureLookDir(getCreatureSummons(cid)[1]) == 0 then
		addEvent(gust, 0, {cid = cid, eee = 60, ar = {x=posicao.x, y=posicao.y-1, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 60, ar = {x=posicao.x, y=posicao.y-2, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-1, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 60, ar = {x=posicao.x, y=posicao.y-3, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-2, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 60, ar = {x=posicao.x, y=posicao.y-4, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-3, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 60, ar = {x=posicao.x, y=posicao.y-5, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-4, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 60, ar = {x=posicao.x, y=posicao.y-6, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-5, z=posicao.z}})
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 2 then
		addEvent(gust, 0, {cid = cid, eee = 62, ar = {x=posicao.x, y=posicao.y+1, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 62, ar = {x=posicao.x, y=posicao.y+2, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+1, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 62, ar = {x=posicao.x, y=posicao.y+3, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+2, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 62, ar = {x=posicao.x, y=posicao.y+4, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+3, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 62, ar = {x=posicao.x, y=posicao.y+5, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+4, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 62, ar = {x=posicao.x, y=posicao.y+6, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+5, z=posicao.z}})
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 1 then
		addEvent(gust, 0, {cid = cid, eee = 61, ar = {x=posicao.x+1, y=posicao.y, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 61, ar = {x=posicao.x+2, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+1, y=posicao.y, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 61, ar = {x=posicao.x+3, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+2, y=posicao.y, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 61, ar = {x=posicao.x+4, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+3, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 61, ar = {x=posicao.x+5, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+4, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 61, ar = {x=posicao.x+6, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+5, y=posicao.y, z=posicao.z}})
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 3 then
		addEvent(gust, 0, {cid = cid, eee = 63, ar = {x=posicao.x-1, y=posicao.y, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 63, ar = {x=posicao.x-2, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-1, y=posicao.y, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 63, ar = {x=posicao.x-3, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-2, y=posicao.y, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 63, ar = {x=posicao.x-4, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-3, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 63, ar = {x=posicao.x-5, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-4, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 63, ar = {x=posicao.x-6, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-5, y=posicao.y, z=posicao.z}})
		end
	 	return 0
elseif move.name == "Wind Oath" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..",  "..move.name.."!", TALKTYPE_SAY)
	    setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		addEvent(doAreaCombatHealth, 0, getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), waba, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 255)
		local function shoot(params)
		lugar = getThingPos(getCreatureSummons(params.cid)[1])
			for x= -3,3 do
				for y= -3,3 do
				topos = {x=lugar.x+x, y=lugar.y+y, z=lugar.z}
				doSendDistanceShoot(getThingPos(getCreatureSummons(params.cid)[1]), topos, 36)
				end
			end
		end
		addEvent(shoot, 0, {cid = cid})
	return 0
elseif move.name == "Ice Oath" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..",  "..move.name.."!", TALKTYPE_SAY)
	    setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		addEvent(doAreaCombatHealth, 0, getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), waba, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 255)
		local function shoot(params)
		lugar = getThingPos(getCreatureSummons(params.cid)[1])
			for x= -3,3 do
				for y= -3,3 do
				topos = {x=lugar.x+x, y=lugar.y+y, z=lugar.z}
				doSendDistanceShoot(getThingPos(getCreatureSummons(params.cid)[1]), topos, 35)
				end
			end
		end
		addEvent(shoot, 0, {cid = cid})
	return 0
elseif move.name == "Poison Oath" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..",  "..move.name.."!", TALKTYPE_SAY)
	    setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		addEvent(doAreaCombatHealth, 0, getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), waba, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 255)
		local function shoot(params)
		lugar = getThingPos(getCreatureSummons(params.cid)[1])
			for x= -3,3 do
				for y= -3,3 do
				topos = {x=lugar.x+x, y=lugar.y+y, z=lugar.z}
				doSendDistanceShoot(getThingPos(getCreatureSummons(params.cid)[1]), topos, 14)
				end
			end
		end
		addEvent(shoot, 0, {cid = cid})
	return 0
elseif move.name == "Horn Attack" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..",  "..move.name.."!", TALKTYPE_SAY)
	    setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		doSendDistanceShoot(getThingPos(getCreatureSummons(cid)[1]), getThingPos(getCreatureTarget(cid)), 15)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 3)
		return 0
elseif move.name == "Horn Oath" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..",  "..move.name.."!", TALKTYPE_SAY)
	    setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		addEvent(doAreaCombatHealth, 0, getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), waba, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 255)
		local function shoot(params)
		lugar = getThingPos(getCreatureSummons(params.cid)[1])
			for x= -3,3 do
				for y= -3,3 do
				topos = {x=lugar.x+x, y=lugar.y+y, z=lugar.z}
				doSendDistanceShoot(getThingPos(getCreatureSummons(params.cid)[1]), topos, 25)
				end
			end
		end
		addEvent(shoot, 0, {cid = cid})
	return 0
elseif move.name == "Thunder Oath" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..",  "..move.name.."!", TALKTYPE_SAY)
	    setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		addEvent(doAreaCombatHealth, 0, getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), waba, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 255)
		local function shoot(params)
		lugar = getThingPos(getCreatureSummons(params.cid)[1])
			for x= -3,3 do
				for y= -3,3 do
				topos = {x=lugar.x+x, y=lugar.y+y, z=lugar.z}
				doSendDistanceShoot(getThingPos(getCreatureSummons(params.cid)[1]), topos, 40)
				end
			end
		end
		addEvent(shoot, 0, {cid = cid})
	return 0
elseif move.name == "Leaf Magical" then
  doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..",  "..move.name.."!", TALKTYPE_SAY)
	    setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		addEvent(doAreaCombatHealth, 0, getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), waba, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 255)
		local function shoot(params)
		lugar = getThingPos(getCreatureSummons(params.cid)[1])
			for x= -3,3 do
				for y= -3,3 do
				topos = {x=lugar.x+x, y=lugar.y+y, z=lugar.z}
				doSendDistanceShoot(getThingPos(getCreatureSummons(params.cid)[1]), topos, 21)
				end
			end
		end
		addEvent(shoot, 0, {cid = cid})
	return 0
                elseif move.name == "Ice Beam" then
		alvo = getCreatureName(getCreatureTarget(cid))
		if getCreatureLookDir(getCreatureSummons(cid)[1]) == 0 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg1n, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 99)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg2n, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 105)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg3n, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 103)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 2 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg1s, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 98)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg2s, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 105)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg3s, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 102)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 1 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg1e, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 96)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg2e, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 104)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg3e, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 100)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 3 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg1w, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 97)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg2w, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 104)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg3w, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 101)
		end
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
	    setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		return 0
elseif move.name == "Wardog" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
	    setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
                        local function damage(params)
			if isMonster(getCreatureTarget(params.cid)) then
			doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 146)
			else
			end
			end
		addEvent(damage, 0, {cid = cid})
		addEvent(damage, 400, {cid = cid})
		addEvent(damage, 800, {cid = cid})
		addEvent(damage, 1200, {cid = cid})
		addEvent(damage, 1500, {cid = cid})
		return 0
                elseif move.name == "Selfdestruct" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
	    setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		addEvent(doCreatureAddHealth, 250, getCreatureSummons(cid)[1], -getCreatureHealth(getCreatureSummons(cid)[1]))
		doAreaCombatHealth(getCreatureSummons(cid)[1], NORMALDAMAGE, getThingPos(getCreatureSummons(cid)[1]), destruct1, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 5)
		addEvent(doAreaCombatHealth, 150, getCreatureSummons(cid)[1], NORMALDAMAGE, getThingPos(getCreatureSummons(cid)[1]), destruct2, -(((num1)+(getPlayerLevel(cid)*(num3)))*0.7), -(((num2)+(getPlayerLevel(cid)*(num3)))*0.8), 5)
		addEvent(doAreaCombatHealth, 250, getCreatureSummons(cid)[1], NORMALDAMAGE, getThingPos(getCreatureSummons(cid)[1]), destruct3, -(((num1)+(getPlayerLevel(cid)*(num3)))*0.4), -(((num2)+(getPlayerLevel(cid)*(num3)))*0.5), 5)
		setPlayerStorageValue(getCreatureSummons(cid)[1], 33, 1)
	        return 0
elseif move.name == "Healera" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..",  "..move.name.."!", TALKTYPE_SAY)
	    setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		doCreatureAddHealth(getCreatureSummons(cid)[1], ((num2)+((getPlayerLevel(cid))*(num3))))
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), hl, ((num1)+(getPlayerLevel(cid)*(num3))), ((num2)+(getPlayerLevel(cid)*(num3))), CONST_ME_MAGIC_BLUE)
        doSendAnimatedText(getThingPos(getCreatureSummons(cid)[1]), "+"..((num2)+((getPlayerLevel(cid))*(num3))).."", 35)
		return 0
	        elseif move.name == "Psycho Shift" then
		targetpos = getThingPos(getCreatureTarget(cid))
		targetposss = getThingPos(getCreatureTarget(cid))
		if math.random(1,100) >= 51 then
		targetpos.x = targetpos.x+2
		else
		targetpos.x = targetpos.x-2
		end
		if math.random(1,100) >= 51 then
		targetpos.y = targetpos.y-2
		else
		targetpos.y = targetpos.y+2
		end
		tile = getTileItemByType(targetpos, ground).itemid
		if getThingPos(cid).z > 7 then
			if isWalkable(targetpos, cid, 0, 0) then
			doTeleportThing(getCreatureTarget(cid), targetpos)
			doAreaCombatHealth(getCreatureSummons(cid)[1], element, targetpos, 0, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 134)
			doSendMagicEffect(targetpos, 12)
			else
			doAreaCombatHealth(getCreatureSummons(cid)[1], element, targetposss, 0, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 134)
			doSendMagicEffect(targetposss, 12)
			end
		else
		if not isInArray(imp, tile) then
			if not isInArray(imp, getTileThingByPos(targetpos).itemid) then
			doTeleportThing(getCreatureTarget(cid), targetpos)
			doAreaCombatHealth(getCreatureSummons(cid)[1], element, targetpos, 0, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 134)
			doSendMagicEffect(targetpos, 12)
			else
			doAreaCombatHealth(getCreatureSummons(cid)[1], element, targetposss, 0, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 134)
			doSendMagicEffect(targetposss, 12)
			end
		else
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 134)
		doSendMagicEffect(targetposss, 12)
		end
		end
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
	    setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		return 0
                elseif move.name == "Restore" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
	    setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		doSendMagicEffect(getThingPos(getCreatureSummons(cid)[1]), 14)
		doCreatureAddHealth(getCreatureSummons(cid)[1], ((num2)+((getPlayerLevel(cid))*(num3))))
		doSendAnimatedText(getThingPos(getCreatureSummons(cid)[1]), "+"..((num2)+((getPlayerLevel(cid))*(num3))).."", 35)
		return 0
      elseif move.name == "Roost" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
	    setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		doSendMagicEffect(getThingPos(getCreatureSummons(cid)[1]), 14)
		doCreatureAddHealth(getCreatureSummons(cid)[1], ((num2)+((getPlayerLevel(cid))*(num3))))
		doSendAnimatedText(getThingPos(getCreatureSummons(cid)[1]), "+"..((num2)+((getPlayerLevel(cid))*(num3))).."", 35)
		return 0
                elseif move.name == "Psywave" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
	    setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		if getCreatureLookDir(getCreatureSummons(cid)[1]) == 0 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), tsn, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 133)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 1 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), tse, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 133)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 2 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), tss, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 133)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 3 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), tsw, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 133)
		end
		return 0
	        elseif move.name == "Poison Bomb" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
	    setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		addEvent(doAreaCombatHealth, 100, getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), bomb, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 114)
		doSendDistanceShoot(getThingPos(getCreatureSummons(cid)[1]), getThingPos(getCreatureTarget(cid)), 14)
	        return 0
 elseif move.name == "Zzzzz" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
	    setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		doSendMagicEffect(getThingPos(getCreatureSummons(cid)[1]), 32)
		doCreatureAddHealth(getCreatureSummons(cid)[1], ((num2)+((getPlayerLevel(cid))*(num3))))
		doSendAnimatedText(getThingPos(getCreatureSummons(cid)[1]), "+"..((num2)+((getPlayerLevel(cid))*(num3))).."", 32)
		return 0
	         elseif move.name == "Psywave" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
	    setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		if getCreatureLookDir(getCreatureSummons(cid)[1]) == 0 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), tsn, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 133)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 1 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), tse, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 133)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 2 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), tss, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 133)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 3 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), tsw, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 133)
		end
		return 0
	        elseif move.name == "Blizzard" then
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
		addEvent(storm, 0, {cid = cid, el = element, ar = ws1, ef = 175})
		addEvent(storm, 500, {cid = cid, el = element, ar = ws2, ef = 175})
		addEvent(storm, 1000, {cid = cid, el = element, ar = ws3, ef = 175})
		addEvent(storm, 1500, {cid = cid, el = element, ar = ws4, ef = 175})
		addEvent(storm, 700, {cid = cid, el = null, ar = ws4, ef = 175})
		addEvent(storm, 1200, {cid = cid, el = null, ar = ws1, ef = 175})
		addEvent(storm, 1800, {cid = cid, el = null, ar = ws3, ef = 175})
	return 0
			

	        elseif move.name == "Magma Storm" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..",  "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
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
		addEvent(storm, 0, {cid = cid, el = element, ar = ws1, ef = 236})
		addEvent(storm, 500, {cid = cid, el = element, ar = ws2, ef = 236})
		addEvent(storm, 1000, {cid = cid, el = element, ar = ws3, ef = 236})
		addEvent(storm, 1500, {cid = cid, el = element, ar = ws4, ef = 236})
		addEvent(storm, 700, {cid = cid, el = null, ar = ws4, ef = 236})
		addEvent(storm, 1200, {cid = cid, el = null, ar = ws1, ef = 236})
		addEvent(storm, 1800, {cid = cid, el = null, ar = ws3, ef = 236})
	return 0
            elseif move.name == "Egg Storm" then
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
		addEvent(storm, 0, {cid = cid, el = element, ar = ws1, ef = 5})
		addEvent(storm, 500, {cid = cid, el = element, ar = ws2, ef = 5})
		addEvent(storm, 1000, {cid = cid, el = element, ar = ws3, ef = 5})
		addEvent(storm, 1500, {cid = cid, el = element, ar = ws4, ef = 5})
		addEvent(storm, 700, {cid = cid, el = null, ar = ws4, ef = 5})
		addEvent(storm, 1200, {cid = cid, el = null, ar = ws1, ef = 5})
		addEvent(storm, 1800, {cid = cid, el = null, ar = ws3, ef = 5})
	return 0

        elseif move.name == "Psy Storm" then
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
		addEvent(storm, 0, {cid = cid, el = element, ar = ws1, ef = 235})
		addEvent(storm, 500, {cid = cid, el = element, ar = ws2, ef = 235})
		addEvent(storm, 1000, {cid = cid, el = element, ar = ws3, ef = 235})
		addEvent(storm, 1500, {cid = cid, el = element, ar = ws4, ef = 235})
		addEvent(storm, 700, {cid = cid, el = null, ar = ws4, ef = 235})
		addEvent(storm, 1200, {cid = cid, el = null, ar = ws1, ef = 235})
		addEvent(storm, 1800, {cid = cid, el = null, ar = ws3, ef = 235})
	return 0
elseif move.name == "Pory Storm" then
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
		addEvent(storm, 0, {cid = cid, el = element, ar = ws1, ef = 230})
		addEvent(storm, 500, {cid = cid, el = element, ar = ws2, ef = 230})
		addEvent(storm, 1000, {cid = cid, el = element, ar = ws3, ef = 230})
		addEvent(storm, 1500, {cid = cid, el = element, ar = ws4, ef = 230})
		addEvent(storm, 700, {cid = cid, el = null, ar = ws4, ef = 230})
		addEvent(storm, 1200, {cid = cid, el = null, ar = ws1, ef = 230})
		addEvent(storm, 1800, {cid = cid, el = null, ar = ws3, ef = 230})
	return 0

                elseif move.name == "Hydro Cannon" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..",  "..move.name.."!", TALKTYPE_SAY)
	    setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		posit = getThingPos(getCreatureSummons(cid)[1])
		local function gust(params)
		if #getCreatureSummons(params.cid) >= 1 then
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], null, params.ar, sand1, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), params.eee)
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, params.ar, whirl3, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 68)
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], null, params.arr, whirl3, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 68)
		else
		end
		end
		local posicao = getThingPos(getCreatureSummons(cid)[1])
		if getCreatureLookDir(getCreatureSummons(cid)[1]) == 0 then
		addEvent(gust, 0, {cid = cid, eee = 66, ar = {x=posicao.x, y=posicao.y-1, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 66, ar = {x=posicao.x, y=posicao.y-2, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-1, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 66, ar = {x=posicao.x, y=posicao.y-3, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-2, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 66, ar = {x=posicao.x, y=posicao.y-4, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-3, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 66, ar = {x=posicao.x, y=posicao.y-5, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-4, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 66, ar = {x=posicao.x, y=posicao.y-6, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-5, z=posicao.z}})
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 2 then
		addEvent(gust, 0, {cid = cid, eee = 64, ar = {x=posicao.x, y=posicao.y+1, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 64, ar = {x=posicao.x, y=posicao.y+2, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+1, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 64, ar = {x=posicao.x, y=posicao.y+3, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+2, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 64, ar = {x=posicao.x, y=posicao.y+4, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+3, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 64, ar = {x=posicao.x, y=posicao.y+5, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+4, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 64, ar = {x=posicao.x, y=posicao.y+6, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+5, z=posicao.z}})
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 1 then
		addEvent(gust, 0, {cid = cid, eee = 67, ar = {x=posicao.x+1, y=posicao.y, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 67, ar = {x=posicao.x+2, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+1, y=posicao.y, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 67, ar = {x=posicao.x+3, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+2, y=posicao.y, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 67, ar = {x=posicao.x+4, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+3, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 67, ar = {x=posicao.x+5, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+4, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 67, ar = {x=posicao.x+6, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+5, y=posicao.y, z=posicao.z}})
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 3 then
		addEvent(gust, 0, {cid = cid, eee = 65, ar = {x=posicao.x-1, y=posicao.y, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 65, ar = {x=posicao.x-2, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-1, y=posicao.y, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 65, ar = {x=posicao.x-3, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-2, y=posicao.y, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 65, ar = {x=posicao.x-4, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-3, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 65, ar = {x=posicao.x-5, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-4, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 65, ar = {x=posicao.x-6, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-5, y=posicao.y, z=posicao.z}})
		end
		return 0
                elseif move.name == "Waterball" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
	    setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
			local function throw(params)
			if isMonster(getCreatureTarget(params.cid)) then
			doSendDistanceShoot(getThingPos(getCreatureSummons(params.cid)[1]), getThingPos(getCreatureTarget(params.cid)), 2)
			else
			end
			end
			local function damage(params)
			if isMonster(getCreatureTarget(params.cid)) then
			doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, getThingPos(getCreatureTarget(cid)), waba, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 68)
			else
			end
			end
		addEvent(damage, 100, {cid = cid})
		addEvent(throw, 0, {cid = cid})
		return 0
	elseif move.name == "Windstorm" then
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
                elseif move.name == "Earthquake" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
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
		addEvent(storm, 0, {cid = cid, el = element, ar = earthquake, ef = 118})
		addEvent(storm, 500, {cid = cid, el = element, ar = earthquake, ef = 118})
		addEvent(storm, 1000, {cid = cid, el = element, ar = earthquake, ef = 118})
		addEvent(storm, 1500, {cid = cid, el = element, ar = earthquake, ef = 118})
                addEvent(storm, 2000, {cid = cid, el = element, ar = earthquake, ef = 118})
                addEvent(storm, 2500, {cid = cid, el = element, ar = earthquake, ef = 118})
                addEvent(storm, 3000, {cid = cid, el = element, ar = earthquake, ef = 118})
                addEvent(storm, 3500, {cid = cid, el = element, ar = earthquake, ef = 118})
                addEvent(storm, 4000, {cid = cid, el = element, ar = earthquake, ef = 118})
                addEvent(storm, 4500, {cid = cid, el = element, ar = earthquake, ef = 118})
                addEvent(storm, 5000, {cid = cid, el = element, ar = earthquake, ef = 118})
                addEvent(storm, 5500, {cid = cid, el = element, ar = earthquake, ef = 118})
                addEvent(storm, 6000, {cid = cid, el = element, ar = earthquake, ef = 118})
                addEvent(storm, 6500, {cid = cid, el = element, ar = earthquake, ef = 118})
                addEvent(storm, 7000, {cid = cid, el = element, ar = earthquake, ef = 118})
                addEvent(storm, 7500, {cid = cid, el = element, ar = earthquake, ef = 118})
                addEvent(storm, 8000, {cid = cid, el = element, ar = earthquake, ef = 118})
                addEvent(storm, 8500, {cid = cid, el = element, ar = earthquake, ef = 118})
                addEvent(storm, 9000, {cid = cid, el = element, ar = earthquake, ef = 118})
                addEvent(storm, 9500, {cid = cid, el = element, ar = earthquake, ef = 118})
                addEvent(storm, 10000, {cid = cid, el = element, ar = earthquake, ef = 118})
                addEvent(storm, 10500, {cid = cid, el = element, ar = earthquake, ef = 118})
                addEvent(storm, 11000, {cid = cid, el = element, ar = earthquake, ef = 118})
                addEvent(storm, 11500, {cid = cid, el = element, ar = earthquake, ef = 118})
                addEvent(storm, 12000, {cid = cid, el = element, ar = earthquake, ef = 118})
	        return 0
                elseif move.name == "Wing Attack" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
	    setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		if getCreatureLookDir(getCreatureSummons(cid)[1]) == 0 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], COMBAT_PDAMAGE, getThingPos(getCreatureSummons(cid)[1]), wingn, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 128)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wingdn, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), CONST_ME_NONE)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 1 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], COMBAT_PDAMAGE, getThingPos(getCreatureSummons(cid)[1]), winge, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 129)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wingde, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), CONST_ME_NONE)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 2 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], COMBAT_PDAMAGE, getThingPos(getCreatureSummons(cid)[1]), wings, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 131)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wingds, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), CONST_ME_NONE)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 3 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], COMBAT_PDAMAGE, getThingPos(getCreatureSummons(cid)[1]), wingw, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 130)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wingdw, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), CONST_ME_NONE)
		end
		return 0
                elseif move.name == "Mega Kick" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
	    setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 113)
		return 0

	        elseif move.name == "Harden" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
	    setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		local hardname = getCreatureName(getCreatureSummons(cid)[1])
		setPlayerStorageValue(getCreatureSummons(cid)[1], 4, 1)
		local oldpos = getThingPos(getCreatureSummons(cid)[1])
			local function efect(params)
			if isCreature(getCreatureSummons(params.cid)[1]) then
			if getPlayerStorageValue(getCreatureSummons(params.cid)[1], 4) >= 1 then
			doSendMagicEffect(getThingPos(getCreatureSummons(params.cid)[1]), 144)
			end
			end
			end
		local function chard(params)
		if isCreature(getCreatureSummons(params.cid)[1]) then
		if getPlayerStorageValue(getCreatureSummons(params.cid)[1], 4) >= 1 then
		setPlayerStorageValue(getCreatureSummons(params.cid)[1], 4, -1)
		end
		end
		end
		addEvent(efect, 100, {cid = cid, hardname = hardname})
		addEvent(efect, 1600, {cid = cid, hardname = hardname})
		addEvent(efect, 3100, {cid = cid, hardname = hardname})
		addEvent(efect, 4600, {cid = cid, hardname = hardname})
		addEvent(efect, 6100, {cid = cid, hardname = hardname})
		addEvent(efect, 7600, {cid = cid, hardname = hardname})
		addEvent(efect, 9100, {cid = cid, hardname = hardname})
		addEvent(efect, 10600, {cid = cid, hardname = hardname})
		addEvent(chard, 11000, {cid = cid})		
	        return 0
	        elseif move.name == "Electric Storm" then
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
		addEvent(storm, 0, {cid = cid, el = element, ar = ws1, ef = 225})
		addEvent(storm, 500, {cid = cid, el = element, ar = ws2, ef = 225})
		addEvent(storm, 1000, {cid = cid, el = element, ar = ws3, ef = 225})
		addEvent(storm, 1500, {cid = cid, el = element, ar = ws4, ef = 225})
		addEvent(storm, 700, {cid = cid, el = null, ar = ws4, ef = 225})
		addEvent(storm, 1200, {cid = cid, el = null, ar = ws1, ef = 225})
		addEvent(storm, 1800, {cid = cid, el = null, ar = ws3, ef = 225})
	return 0
 elseif move.name == "Earthshock" then
	        doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
	        doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
	        setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		    exhaustion.set(cid, move.ex, move.cd)
		    sendCooldown(cid)
	        doAreaCombatHealth(getCreatureSummons(cid)[1], GROUNDDAMAGE, getThingPos(getCreatureSummons(cid)[1]), rollout, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 255)
	        local sps = getThingPos(getCreatureSummons(cid)[1])
	        sps.x = sps.x+1
	        sps.y = sps.y+1
	        doSendMagicEffect(sps, 127)
	        return 0
                elseif move.name == "Stomp" then
                doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
                doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
	            setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		        exhaustion.set(cid, move.ex, move.cd)
		        sendCooldown(cid)
                doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), stomp, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 118)
                return 0
                elseif move.name == "Mind Blast" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..",  "..move.name.."!", TALKTYPE_SAY)
	    setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		if math.random(1,3) == 1 then
		random = 133
		else
		if math.random(1,2) == 2 then
		random = 134
		else
		random = 136
		end
		end
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(getPlayerLevel(cid)*(num3))), -((num1)+(getPlayerLevel(cid)*(num3))), random)
		if math.random(1,3) == 1 then
		random = 133
		else
		if math.random(1,2) == 2 then
		random = 134
		else
		random = 136
		end
		end
		local function go(params)
		if isCreature(getCreatureSummons(params.cid)[1]) then
		if isCreature(getCreatureTarget(cid)) then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), psy2, -((num1)+(getPlayerLevel(cid)*(num3))), -((num1)+(getPlayerLevel(cid)*(num3))), random)
		end
		end
		end
		addEvent(go, 150, {cid = cid})
		if math.random(1,3) == 1 then
		random = 133
		else
		if math.random(1,2) == 2 then
		random = 134
		else
		random = 136
		end
		end
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), psy1, -((num1)+(getPlayerLevel(cid)*(num3))), -((num1)+(getPlayerLevel(cid)*(num3))), random)
		return 0
	elseif move.name == "Toxic Needle" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
	    setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		doSendDistanceShoot(getThingPos(getCreatureSummons(cid)[1]), getThingPos(getCreatureTarget(cid)), 15)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 8)
	return 0
	elseif move.name == "Thunderbolt" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
	    setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		local posalvo = getThingPos(getCreatureTarget(cid))
		local boltalvo = getCreatureTarget(cid)
		posalvo.x = posalvo.x-2
		posalvo.y = posalvo.y-6
		doSendDistanceShoot(posalvo, getThingPos(getCreatureTarget(cid)), 41)
		local function bolt(params)
		if isCreature(params.cid) then
		if isCreature(getCreatureTarget(cid)) then
		if getCreatureTarget(params.cid) == params.boltalvo then
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 48)
		end
		end
		end
		end
		addEvent(bolt, 200, {cid = cid, boltalvo = boltalvo})
	        return 0
                elseif move.name == "Thunder" then
                doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
                doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
	            setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		        exhaustion.set(cid, move.ex, move.cd)
		        sendCooldown(cid)
                doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), thunder, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 48)
                return 0
elseif move.name == "Rollout" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
	    setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		if getCreatureName(getCreatureSummons(cid)[1]) == "Voltorb" then
		doSetCreatureOutfit(getCreatureSummons(cid)[1], voltorb, 8300)
		doChangeSpeed(getCreatureSummons(cid)[1], 85)
		elseif getCreatureName(getCreatureSummons(cid)[1]) == "Electrode" then
		doSetCreatureOutfit(getCreatureSummons(cid)[1], electrode, 8300)
		doChangeSpeed(getCreatureSummons(cid)[1], 101)
		elseif getCreatureName(getCreatureSummons(cid)[1]) == "Sandshrew" then
		doSetCreatureOutfit(getCreatureSummons(cid)[1], sandshrew, 8300)
		doChangeSpeed(getCreatureSummons(cid)[1], 93)
		elseif getCreatureName(getCreatureSummons(cid)[1]) == "Sandslash" then
		doSetCreatureOutfit(getCreatureSummons(cid)[1], sandslash, 8300)
		doChangeSpeed(getCreatureSummons(cid)[1], 143)
		end
		setPlayerStorageValue(getCreatureSummons(cid)[1], 4, 1)
			local function roll(params)
			if isCreature(params.cid) then
			if isCreature(getCreatureSummons(params.cid)[1]) then
			if getCreatureCondition(getCreatureSummons(params.cid)[1], CONDITION_OUTFIT) == true then
			doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), rollout, -((num1)+(getPlayerLevel(cid)*(num3))), -((num1)+(getPlayerLevel(cid)*(num3))), 255)
			end
			end
			end
			end
		for r = 1, 8 do
		addEvent(roll, 1000*r, {cid = cid})
		end

			local function stoproll(params)
			if isCreature(params.cid) then
			if isCreature(getCreatureSummons(params.cid)[1]) then
			doChangeSpeed(getCreatureSummons(params.cid)[1], -101)
			if getPlayerStorageValue(getCreatureSummons(params.cid)[1], 4) >= 1 then
			setPlayerStorageValue(getCreatureSummons(params.cid)[1], 4, 0)
			end
			end
			end
			end
		addEvent(stoproll, 8300, {cid = cid})
		return 0 
                elseif move.name == "Super Sonic" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
	    setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		local t = getCreatureTarget(cid)
		setPlayerStorageValue(t, 5, 1)
		local function confused(params)
		if isCreature(params.t) then
		local spdc = getCreatureSpeed(params.t)
		if getCreatureLookDir(params.t) == 0 then
		confs = math.random(1,3)
		elseif getCreatureLookDir(params.t) == 1 then
			confurandom = math.random(1,99)
			if confurandom <= 33 then
			confs = 0
			elseif confurandom >= 67 then
			confs = 2
			else
			confs = 3
			end
		elseif getCreatureLookDir(params.t) == 2 then
			confurandom = math.random(1,99)
			if confurandom <= 33 then
			confs = 3
			elseif confurandom >= 67 then
			confs = 0
			else
			confs = 1
			end
		elseif getCreatureLookDir(params.t) == 3 then
		confs = math.random(0,2)
		end
		doPushCreature(params.t, confs, 1, 0)
		doSendMagicEffect(getThingPos(params.t), 31)
		end
		end
		local function nonc(params)
		if isCreature(params.t) then
		doChangeSpeed(params.t, -getCreatureSpeed(params.t))
		doChangeSpeed(params.t, getCreatureBaseSpeed(params.t))
		setPlayerStorageValue(params.t, 5, -1)
		end
		end
		doSendDistanceShoot(getThingPos(getCreatureSummons(cid)[1]), getThingPos(getCreatureTarget(cid)), 32)

		doChangeSpeed(t, -( getCreatureSpeed(t)/3))
		doSendMagicEffect(getThingPos(t), 31)
		for i = 1, math.random(6,7) do
		addEvent(confused, 1000*i, {cid = cid, t = t})
		end
		addEvent(nonc, 7100, {cid - cid, t = t})
		return 0
	end
return 0
end	