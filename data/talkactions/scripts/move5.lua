-- Boost sistem --
boostrate = 1




local confusion = createCombatArea{
{0, 1, 1, 1, 0},
{1, 1, 1, 1, 1},
{1, 1, 2, 1, 1},
{1, 1, 1, 1, 1},
{0, 1, 1, 1, 0}
}

local waba = createCombatArea{
{0, 1, 1, 1, 0},
{1, 1, 1, 1, 1},
{1, 1, 3, 1, 1},
{1, 1, 1, 1, 1},
{0, 1, 1, 1, 0}
}

local scyther = {lookType = 15}

local swaven = createCombatArea{
	{0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0},
	{0, 0, 3, 0, 0},
	{0, 0, 1, 0, 0},
	{0, 0, 1, 0, 0}
}

local swaves = createCombatArea{
	{0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0},
	{0, 1, 2, 0, 0},
	{0, 1, 0, 0, 0},
	{0, 1, 0, 0, 0}
}


local rollout = createCombatArea{
{1, 1, 1}, 
{1, 2, 1}, 
{1, 1, 1}, 
}


local hitmontop = {lookType = 668}



local swavee = createCombatArea{
	{0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0},
	{0, 0, 2, 0, 0},
	{1, 1, 1, 0, 0},
	{0, 0, 0, 0, 0}
}

local swavew = createCombatArea{
	{0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0},
	{0, 0, 3, 1, 1},
	{0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0}
}

local charge = createCombatArea{
{1, 1, 1}, 
{1, 2, 1}, 
{1, 1, 1}, 
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

local iwn = createCombatArea{
{0, 0, 0, 2, 0, 0, 0},
{0, 0, 0, 1, 0, 0, 0},
{0, 0, 1, 1, 1, 0, 0},
{0, 0, 1, 1, 1, 0, 0},  
{0, 1, 0, 1, 0, 1, 0},
}
local iws = createCombatArea{
{0, 1, 0, 1, 0, 1, 0},
{0, 0, 1, 1, 1, 0, 0},
{0, 0, 1, 1, 1, 0, 0},
{0, 0, 0, 1, 0, 0, 0},
{0, 0, 0, 2, 0, 0, 0},  
}
local iwe = createCombatArea{
{0, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 1, 1, 0, 0},
{0, 0, 1, 1, 1, 1, 2},
{0, 0, 0, 1, 1, 0, 0},
{0, 0, 1, 0, 0, 0, 0},  
}
local iww = createCombatArea{
{0, 0, 0, 0, 0, 0, 1},
{0, 0, 0, 0, 1, 1, 0},
{0, 0, 2, 1, 1, 1, 1},
{0, 0, 0, 0, 1, 1, 0},
{0, 0, 0, 0, 0, 0, 1},  
}

local bomb = createCombatArea{
        {1, 1, 1}, 
        {1, 3, 1}, 
        {1, 1, 1}, 
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

local gl1 = createCombatArea{
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
local gl2 = createCombatArea{
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
	{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
	{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
	{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
	{0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
	{1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1},
	{0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
	{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
	{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
	{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0}
}

local stomp = createCombatArea{
        {1, 0, 1, 0, 1},
	{0, 1, 1, 1, 0},
	{1, 1, 2, 1, 1},
	{0, 1, 1, 1, 0},
	{1, 0, 1, 0, 1}
}

local toxicn = createCombatArea{
{0, 2, 0}, 
{0, 1, 0}, 
{0, 1, 0},
{0, 1, 0}, 
{0, 1, 0}, 
}

local toxics = createCombatArea{
{0, 1, 0}, 
{0, 1, 0}, 
{0, 1, 0},
{0, 1, 0}, 
{0, 2, 0}, 
}

local toxice = createCombatArea{ 
{0, 1, 1, 1, 1, 2}, 
}

local toxicw = createCombatArea{ 
{2, 1, 1, 1, 1, 0}, 
}

 sand1 = createCombatArea{
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

local flamen = createCombatArea{
	{0, 0, 2, 0, 0},
	{0, 1, 1, 1, 0},
	{0, 1, 1, 1, 0},
	{0, 1, 1, 1, 0},
	{0, 0, 0, 0, 0}
}
local flames = createCombatArea{
	{0, 0, 0, 0, 0},
	{0, 1, 1, 1, 0},
	{0, 1, 1, 1, 0},
	{0, 1, 1, 1, 0},
	{0, 0, 2, 0, 0}
}
local flamew = createCombatArea{
	{0, 0, 0, 0, 0},
	{0, 1, 1, 1, 0},
	{2, 1, 1, 1, 0},
	{0, 1, 1, 1, 0},
	{0, 0, 0, 0, 0}
}
local flamee = createCombatArea{
	{0, 0, 0, 0, 0},
	{0, 1, 1, 1, 0},
	{0, 1, 1, 1, 2},
	{0, 1, 1, 1, 0},
	{0, 0, 0, 0, 0}
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

local pokeis = {'bulbasaur','ivysaur','venusaur','Charmander','Charmeleon','Charizard','Squirtle','wartortle','Blastoise', 'metapod','Butterfree', 'Kakuna', 'Beedrill', 'Pidgeotto', 'Pidgeot', 'Raticate', 'fearow', 'ekans', 'arbok', 'pikachu', 'raichu','Sandshrew','Sandslash', 'nidoranfe', 'nidorina', 'nidoqueen', 'nidoranma','nidorino', 'nidoking', 'clefairy', 'clefable', 'vulpix', 'Ninetales', 'Jigglypuff', 'Wigglytuff', 'zubat', 'golbat','Gloom', 'Vileplume', 'Parasect', 'Venonat', 'Venomoth', 'Diglett', 'Dugtrio', 'Meowth','persian', 'Psyduck', 'Golduck', 'Mankey', 'Primeape','Growlithe', 'arcanine', 'Poliwhirl', 'Poliwrath', 'Abra', 'Kadabra', 'Alakazam', 'machop', 'machoke', 'machamp', 'Weepinbell', 'Victreebel', 'tentacool', 'tentacruel', 'Geodude', 'Graveler', 'Golem', 'Ponyta', 'Rapidash', 'Slowpoke','Slowbro', 'Magnemite', 'Magneton', 'Farfetchd','Doduo', 'Dodrio', 'seel', 'dewgong', 'Grimer', 'Muk', 'Shellder', 'Cloyster', 'gastly', 'haunter', 'gengar', 'onix', 'drowzee','hypno', 'krabby', 'kingler', 'Voltorb', 'Electrode', 'Exeggcute', 'Exeggutor', 'cubone', 'Marowak', 'Hitmonlee','Hitmonchan', 'Lickitung', 'Koffing','Weezing', 'Rhyhorn', 'Rhydon', 'Chansey', 'Tangela', 'Kangaskhan', 'Horsea', 'Seadra', 'Goldeen', 'Seaking', 'Staryu', 'Starmie', 'MrMime','Scyther', 'Jynx', 'Electabuzz', 'Magmar', 'Pinsir', 'Tauros', 'Gyarados', 'Lapras', 'Ditto', 'eevee', 'Vaporeon', 'Jolteon', 'Flareon','Porygon', 'Omanyte', 'Omastar', 'Kabuto', 'Kabutops', 'Aerodactyl', 'Snorlax', 'Articuno', 'Zapdos', 'Moltres', 'Dratini','Dragonair', 'Dragonite', 'Mewtwo', 'Mew','chikorita','bayleef','meganium', 'cyndaquil','quilava','typhlosion','Totodile','Croconaw','Feraligatr', 'Sentret', 'Furret', 'Hoothoot', 'Noctowl', 'Ledyba', 'Ledian', 'Ariados', 'Crobat', 'Chinchou', 'lanturn', 'Pichu', 'cleffa', 'igglypuff', 'Togepi', 'Togetic', 'Natu', 'Xatu', 'Mareep', 'Flaaffy', 'Ampharos', 'Bellossom', 'Marill', 'azumarill', 'Sudowoodo', 'Politoed', 'Skiploom', 'jumpluff', 'Aipom', 'Sunflora', 'Yanma', 'Wooper', 'Quagsire', 'Espeon', 'Umbreon', 'Murkrow', 'Slowking', 'Misdreavus', 'unown a', 'unown b', 'unown c', 'unown d', 'unown e', 'unown f', 'unown g', 'unown h', 'unown i', 'unown j', 'unown k', 'unown l', 'unown m', 'unown n', 'unown o', 'unown p', 'unown q', 'unown r', 'unown s', 'unown t', 'unown u', 'unown v', 'unown x', 'unown w', 'unown y', 'unown z', 'Wobbuffet', 'Girafarig', 'Pineco', 'Forretress', 'Dunsparce', 'Gligar', 'Steelix', 'Snubbull', 'Granbull', 'Qwilfish', 'Scizor', 'Shuckle', 'Heracross', 'Sneasel', 'Teddiursa', 'Ursaring', 'Slugma', 'Magcargo', 'Swinub', 'Piloswine', 'Corsola', 'Remoraid', 'Octillery', 'Delibird', 'Mantine', 'Skarmory', 'houndour', 'houndoom', 'Kingdra', 'Phanpy', 'Donphan', 'Porygon2', 'Stantler', 'Tyrogue', 'Hitmontop', 'Smoochum', 'Elekid', 'magby', 'miltank', 'Blissey', 'Raikou', 'Entei', 'Suicune', 'larvitar', 'Pupitar', 'Tyranitar', 'Lugia', 'Ho Oh', 'Celebi','spearow', 'Dark Abra', 'Elder Charizard', 'Crystal Onix', 'Elite Hitmonchan', 'Elite Hitmonlee', 'Elite Farfetchd', 'Shiny Arcanine', 'Shiny Beedrill', 'Shiny Blastoise', 'Shiny Butterfree', 'Shiny Dratini', 'Shiny Electabuzz', 'Shiny Electrode', 'Shiny Gengar', 'Shiny Grimer', 'Shiny Growlithe', 'Shiny Horsea', 'Shiny Jynx', 'Shiny Kingler', 'Shiny Krabby', 'Shiny Muk', 'Shiny Parasect', 'Shiny Raichu', 'Shiny Raticate', 'Shiny Scyther', 'Shiny Seadra', 'Shiny Tentacool', 'Shiny Tentacruel', 'Shiny Venomoth', 'Shiny Venonat', 'Shiny Venusaur', 'Shiny Voltorb', 'Shiny Zubat', 'Mini Gyarados', 'Shiny Golbat', 'Red Gyarados', 'Smeargle Tm 1', 'Smeargle Tm 2', 'Smeargle Tm 3', 'Smeargle Tm 4', 'Smeargle Tm 5', 'Smeargle Tm 6', 'Smeargle Tm 7', 'Shiny Tangela', 'Big Snorlax', 'Shiny Alakazam', 'Shiny Cubone', 'Shiny Dodrio', 'Shiny Dragonair', 'Shiny Fearow', 'Shiny Flareon', 'Shiny Golem', 
'Shiny Hypno', 'Shiny Jolteon', 'Shiny Machamp', 'Shiny Magneton', 'Shiny Marowak', 'Shiny MrMime', 'Shiny Nidoking', 'Shiny Ninetales', 'Shiny Pidgeot', 'Shiny Pinsir', 'Shiny Rhydon', 'Shiny Tauros', 'Shiny Vaporeon', 'Shiny Vileplume', 'Shiny Magmar'}

function onSay(cid)
    local it = "5"
	local cdzin = "move"..it..""
	local mypoke = getCreatureSummons(cid)[1]
	if getCreatureName(mypoke) == "Ditto" or getCreatureName(mypoke) == "Shiny Ditto" then
       name = getPlayerStorageValue(mypoke, 1010)   --edited
    else
       name = getCreatureName(mypoke)
    end
	local move = movestable[name].move5
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
		doPlayerSendTextMessage(cid, MESSAGE_EVENT_DEFAULT, "Sorry, you have to wait "..seconds.." seconds to cast "..move.name..".")
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
	if move.name == "Wing Attack" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		exhaustion.set(cid, move.ex, move.cd)
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
                elseif move.name == "Hyper Voice" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		if getCreatureLookDir(getCreatureSummons(cid)[1]) == 0 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), tsn, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 19)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 1 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), tse, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 19)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 2 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), tss, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 19)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 3 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), tsw, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 19)
		end
		return 0
	        elseif move.name == "Poisonous Wing" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		if getCreatureLookDir(getCreatureSummons(cid)[1]) == 0 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], COMBAT_PDAMAGE, getThingPos(getCreatureSummons(cid)[1]), wingn, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 128)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wingdn, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 114)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 1 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], COMBAT_PDAMAGE, getThingPos(getCreatureSummons(cid)[1]), winge, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 129)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wingde, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 114)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 2 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], COMBAT_PDAMAGE, getThingPos(getCreatureSummons(cid)[1]), wings, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 131)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wingds, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 114)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 3 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], COMBAT_PDAMAGE, getThingPos(getCreatureSummons(cid)[1]), wingw, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 130)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wingdw, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 114)
		end
	        elseif move.name == "Body Slam" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		sendCooldown(cid)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 110)
		local hitalvo = getCreatureTarget(cid)
		local function hit(params)
		if isCreature(getCreatureSummons(params.cid)[1]) then
		if isCreature(getCreatureTarget(params.cid)) then
		if getCreatureTarget(params.cid) == params.hitalvo then
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], FLYDAMAGE, getThingPos(getCreatureTarget(params.cid)), 0, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 110)
		end
		end
		end
		end
		addEvent(hit, 480, {cid = cid, hitalvo = hitalvo})
		return 0
	        elseif move.name == "Poison Bomb" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		doSendDistanceShoot(getThingPos(getCreatureSummons(cid)[1]), getThingPos(getCreatureTarget(cid)), 14)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), bomb, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 114)
	        return 0
                elseif move.name == "Multi-Slap" then
                doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
                doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
                doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), charge, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 148)
                return 0

	        elseif move.name == "Mud Bomb" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		doSendDistanceShoot(getThingPos(getCreatureSummons(cid)[1]), getThingPos(getCreatureTarget(cid)), 38)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), bomb, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 116)
		doAreaCombatHealth(getCreatureSummons(cid)[1], null, getThingPos(getCreatureTarget(cid)), bomb, 0, 0, 34)
	return 0
	elseif move.name == "Sonicboom" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		doSendDistanceShoot(getThingPos(getCreatureSummons(cid)[1]), getThingPos(getCreatureTarget(cid)), 33)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 1)
	return 0
	elseif move.name == "Mega Punch" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 112)
		return 0
	elseif move.name == "Selfdestruct" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		addEvent(doCreatureAddHealth, 250, getCreatureSummons(cid)[1], -getCreatureHealth(getCreatureSummons(cid)[1]))
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), destruct1, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 5)
		addEvent(doAreaCombatHealth, 150, getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), destruct2, -(((num1)+(getPlayerLevel(cid)*(num3)))*0.7), -(((num2)+(getPlayerLevel(cid)*(num3)))*0.8), 5)
		addEvent(doAreaCombatHealth, 250, getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), destruct3, -(((num1)+(getPlayerLevel(cid)*(num3)))*0.4), -(((num2)+(getPlayerLevel(cid)*(num3)))*0.5), 5)
		setPlayerStorageValue(getCreatureSummons(cid)[1], 33, 1)
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
	        elseif move.name == "Drill Peck" then
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
		end
		end
		end
		end
		addEvent(hit, 480, {cid = cid, hitalvo = hitalvo})
		addEvent(hit, 880, {cid = cid, hitalvo = hitalvo})
		return 0
		-----------------------------------------------------ADICIONADAS-------------------------------------------------------------------
		-------------------------      -------------------------      -------------------------      -------------------------      -------------------------
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
	elseif move.name == "Psycho Shift" then
		local pos = getThingPos(getCreatureTarget(cid))
		local pos2 = getThingPos(getCreatureTarget(cid))
		pos.x = pos.x + math.random(-4,4)
		pos.y = pos.y + math.random(-4,4)
		if hasSqm(pos) and isSightClear(getThingPos(getCreatureSummons(cid)[1]), pos, false) then
		if getTileThingByPos(pos) and getTileThingByPos(pos).itemid >= 1 and not isInArray({919, 460, 4820, 4821, 4822, 4823, 4824, 4825}, getTileThingByPos(pos).itemid) and isWalkable(pos) then
		pos = getClosestFreeTile(getCreatureTarget(cid), pos)
		doSendDistanceShoot(pos2, pos, 39)
		doTeleportThing(getCreatureTarget(cid), pos, false)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 134)
		doSendMagicEffect(pos2, 12)
		else
		local newpos = getClosestFreeTile(getCreatureTarget(cid), pos)
		doSendDistanceShoot(pos2, newpos, 39)
		doTeleportThing(getCreatureTarget(cid), newpos, false)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 134)
		doSendMagicEffect(pos2, 12)
		end
		else
		doSendDistanceShoot(pos2, getThingPos(getCreatureTarget(cid)), 39)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 134)
		doSendMagicEffect(pos2, 12)
		end
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..",  "..move.name.."!", TALKTYPE_SAY)
		--setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		return 0
elseif move.name == "Water Sky" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..",  "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), rageblast1, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 30)
		local function damage(params)
		if isCreature(getCreatureSummons(params.cid)[1]) then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), params.x, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 30)
		end
		end
		addEvent(damage, 200, {cid = cid, x = gl1})
		addEvent(damage, 400, {cid = cid, x = gl2})
		addEvent(damage, 600, {cid = cid, x = gl1})
	return 0
elseif move.name == "Transform" then
doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", "..move.name.."!", TALKTYPE_SAY)
setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
exhaustion.set(cid, move.ex, move.cd, move.base1, move.base2, move.bonus, pokemon.x.target, move.type)
sendCooldown(cid)
doSetCreatureOutfit(getCreatureSummons(cid)[1], getCreatureOutfit(getCreatureTarget(cid)), 130000000)
return 0
elseif move.name == "Evasion Kick" then
			doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..",  "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), rageblast1, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 113)
		local function damage(params)
		if isCreature(getCreatureSummons(params.cid)[1]) then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), params.x, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 113)
		end
		end
		addEvent(damage, 200, {cid = cid, x = gl1})
		addEvent(damage, 400, {cid = cid, x = gl2})
		addEvent(damage, 600, {cid = cid, x = gl1})
	return 0
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
		-------------------------      -------------------------      -------------------------      -------------------------
		-------------------------      -------------------------      -------------------------      -------------------------      -------------------------
		-------------------------      -------------------------      -------------------------      -------------------------
                elseif move.name == "Flame Wheel" then
                doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
                doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
                doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), charge, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 6)
                return 0
  elseif move.name == "Bug Wheel" then
                doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
                doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
                doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), charge, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 20)
                return 0
                elseif move.name == "Poison Powder" then
                doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
                doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
                setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
                doAreaCombatCondition(getCreatureSummons(cid)[1], getThingPos(getCreatureSummons(cid)[1]), confusion, condition2, 255)
                doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), confusion, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 27)
                return 0
                elseif move.name == "Horn Attack" then
                doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
                doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
                exhaustion.set(cid, move.ex, move.cd)
                doSendDistanceShoot(getThingPos(getCreatureSummons(cid)[1]), getThingPos(getCreatureTarget(cid)), 15)
                doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 9)
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
                elseif move.name == "Icy Wind" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..",  "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		if getCreatureLookDir(getCreatureSummons(cid)[1]) == 0 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), iwn, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 41)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 1 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), iwe, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 41)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 2 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), iws, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 41)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 3 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), iww, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 41)
		end
		return 0
                elseif move.name == "Poison Fang" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(getPlayerLevel(cid)*(num3))), -((num1)+(getPlayerLevel(cid)*(num3))), 138)
		return 0
   elseif move.name == "Dark Fang" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(getPlayerLevel(cid)*(num3))), -((num1)+(getPlayerLevel(cid)*(num3))), 221)
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
                doSendMagicEffect(getThingPos(t), 139)
                for i = 1, math.random(6,7) do
                addEvent(confused, 1000*i, {cid = cid, t = t})
                end
                addEvent(nonc, 7100, {cid - cid, t = t})
                return 0
elseif move.name == "Strafe" then
        doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
        doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..",  "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), 0, 0, 0, 255)
		doChangeSpeed(getCreatureSummons(cid)[1],50)
        local function haste(params)
		if getCreatureSummons(params.cid)[1] >= 1 then
		doSendMagicEffect(getThingPos(getCreatureSummons(params.cid)[1]), 14)
        end
		end
		local function volta()
		if getCreatureSummons(cid)[1] >= 1 then
		doChangeSpeed(getCreatureSummons(cid)[1],-50)
		end
		end
for r = 1, 6 do
addEvent(haste, 1000*r, {cid = cid})
end
addEvent(volta, 6000)
return 0
				
                elseif move.name == "Aqua Tail" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..",  "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 68)
		return 0
 elseif move.name == "Trepadera" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		doSendDistanceShoot(getThingPos(getCreatureSummons(cid)[1]), getThingPos(getCreatureTarget(cid)), 4)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 50)
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
                elseif move.name == "Zap Cannon" then
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
                elseif move.name == "Slash" then
                doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
                doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
                doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 142)
                return 0
                elseif move.name == "Shockwave" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		posit = getThingPos(getCreatureSummons(cid)[1])
		local function sandattack(params)
		if #getCreatureSummons(params.cid) >= 1 then
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], null, params.ar, 0, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), params.ef)
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, params.ar, params.wave, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 255)
		else
		end
		end
		local posicao = getThingPos(getCreatureSummons(cid)[1])
		if getCreatureLookDir(getCreatureSummons(cid)[1]) == 0 then
		addEvent(sandattack, 0, {cid = cid, ar = {x=posicao.x+1, y=posicao.y-1, z=posicao.z}, ef = 126, wave = swaven})
		addEvent(sandattack, 400, {cid = cid, ar = {x=posicao.x+1, y=posicao.y-2, z=posicao.z}, ef = 126, wave = swaven})
		addEvent(sandattack, 800, {cid = cid, ar = {x=posicao.x+1, y=posicao.y-3, z=posicao.z}, ef = 126, wave = swaven})
		addEvent(sandattack, 1200, {cid = cid, ar = {x=posicao.x+1, y=posicao.y-4, z=posicao.z}, ef = 126, wave = swaven})
		addEvent(sandattack, 1600, {cid = cid, ar = {x=posicao.x+1, y=posicao.y-5, z=posicao.z}, ef = 126, wave = swaven})
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 2 then
		addEvent(sandattack, 0, {cid = cid, ar = {x=posicao.x+1, y=posicao.y+2, z=posicao.z}, ef = 125, wave = swaves})
		addEvent(sandattack, 400, {cid = cid, ar = {x=posicao.x+1, y=posicao.y+3, z=posicao.z}, ef = 125, wave = swaves})
		addEvent(sandattack, 800, {cid = cid, ar = {x=posicao.x+1, y=posicao.y+4, z=posicao.z}, ef = 125, wave = swaves})
		addEvent(sandattack, 1200, {cid = cid, ar = {x=posicao.x+1, y=posicao.y+5, z=posicao.z}, ef = 125, wave = swaves})
		addEvent(sandattack, 1600, {cid = cid, ar = {x=posicao.x+1, y=posicao.y+6, z=posicao.z}, ef = 125, wave = swaves})
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 1 then
		addEvent(sandattack, 0, {cid = cid, ar = {x=posicao.x+2, y=posicao.y+1, z=posicao.z}, ef = 124, wave = swavee})
		addEvent(sandattack, 400, {cid = cid, ar = {x=posicao.x+3, y=posicao.y+1, z=posicao.z}, ef = 124, wave = swavee})
		addEvent(sandattack, 800, {cid = cid, ar = {x=posicao.x+4, y=posicao.y+1, z=posicao.z}, ef = 124, wave = swavee})
		addEvent(sandattack, 1200, {cid = cid, ar = {x=posicao.x+5, y=posicao.y+1, z=posicao.z}, ef = 124, wave = swavee})
		addEvent(sandattack, 1600, {cid = cid, ar = {x=posicao.x+6, y=posicao.y+1, z=posicao.z}, ef = 124, wave = swavee})
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 3 then
		addEvent(sandattack, 0, {cid = cid, ar = {x=posicao.x-1, y=posicao.y+1, z=posicao.z}, ef = 123, wave = swavew})
		addEvent(sandattack, 400, {cid = cid, ar = {x=posicao.x-2, y=posicao.y+1, z=posicao.z}, ef = 123, wave = swavew})
		addEvent(sandattack, 800, {cid = cid, ar = {x=posicao.x-3, y=posicao.y+1, z=posicao.z}, ef = 123, wave = swavew})
		addEvent(sandattack, 1200, {cid = cid, ar = {x=posicao.x-4, y=posicao.y+1, z=posicao.z}, ef = 123, wave = swavew})
		addEvent(sandattack, 1600, {cid = cid, ar = {x=posicao.x-5, y=posicao.y+1, z=posicao.z}, ef = 123, wave = swavew})
		end
	        return 0
                elseif move.name == "Healarea" then
                doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
                doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
                doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), healarea, ((num1)+(getPlayerLevel(cid)*(num3))), ((num2)+(getPlayerLevel(cid)*(num3))), 12)
                doCreatureAddHealth(getCreatureSummons(cid)[1], ((num2)+((getPlayerLevel(cid))*(num3))))
                doSendAnimatedText(getThingPos(getCreatureSummons(cid)[1]), "+"..((num2)+((getPlayerLevel(cid))*(num3))).."", 12)
                return 0


	        elseif move.name == "Dizzy Punch" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 3)
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
		doSendDistanceShoot(getThingPos(getCreatureSummons(cid)[1]), getThingPos(getCreatureTarget(cid)), 26)
		doChangeSpeed(t, -( getCreatureSpeed(t)/3))
		doSendMagicEffect(getThingPos(t), 31)
		for i = 1, math.random(6,7) do
		addEvent(confused, 1000*i, {cid = cid, t = t})
		end
		addEvent(nonc, 7100, {cid - cid, t = t})
	        return 0
                elseif move.name == "Psychic" then
                doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
                doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
 		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
                doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), confusion, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 133)
                return 0
                elseif move.name == "Thunder" then
                doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
                doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
                doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), thunder, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 48)
                return 0
     elseif move.name == "Punch Master" then
                doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
                doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
                doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), thunder, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 234)
                return 0
                elseif move.name == "Poison Fang" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(getPlayerLevel(cid)*(num3))), -((num1)+(getPlayerLevel(cid)*(num3))), 138)
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
                elseif move.name == "Shredder Team" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		if getCreatureName(getCreatureSummons(cid)[1]) == "Scyther s" then
		doSetCreatureOutfit(getCreatureSummons(cid)[1], Scyther, 8300)
		doChangeSpeed(getCreatureSummons(cid)[1], 145)
		end
		setPlayerStorageValue(getCreatureSummons(cid)[1], 4, 1)
			local function team(params)
			if isCreature(params.cid) then
			if isCreature(getCreatureSummons(params.cid)[1]) then
			if getCreatureCondition(getCreatureSummons(params.cid)[1], CONDITION_OUTFIT) == true then
		        doSendAnimatedText(getThingPos(getCreatureSummons(cid)[1]), "+"..((num2)+((getPlayerLevel(cid))*(num3))).."", 15)
			end
			end
			end
			end
		        for r = 1, 8 do
		        addEvent(team, 1000*r, {cid = cid})
		        end
			local function stopteam(params)
			if isCreature(params.cid) then
			if isCreature(getCreatureSummons(params.cid)[1]) then
			doChangeSpeed(getCreatureSummons(params.cid)[1], -145)
			if getPlayerStorageValue(getCreatureSummons(params.cid)[1], 4) >= 1 then
			setPlayerStorageValue(getCreatureSummons(params.cid)[1], 4, 0)
			end
			end
			end
			end
		        addEvent(stopteam, 8300, {cid = cid})
		return 0
                elseif move.name == "Poison Powder" then
                doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
                doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
                doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), confusion, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 84)
                return 0
                elseif move.name == "Selfheal" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		doSendMagicEffect(getThingPos(getCreatureSummons(cid)[1]), 132)
		doCreatureAddHealth(getCreatureSummons(cid)[1], ((num2)+((getPlayerLevel(cid))*(num3))))
		doSendAnimatedText(getThingPos(getCreatureSummons(cid)[1]), "+"..((num2)+((getPlayerLevel(cid))*(num3))).."", 132)
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
                elseif move.name == "Rock Throw" then
                doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
                doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
                doSendDistanceShoot(getThingPos(getCreatureSummons(cid)[1]), getThingPos(getCreatureTarget(cid)), 11)
                doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 3)
                return 0
 elseif move.name == "Metronome" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..",  "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		doSendMagicEffect(getThingPos(getCreatureSummons(cid)[1]), 161)
		local function variavel(cid, elemento, defec, mefec)
		if isCreature(cid) then
		if isCreature(getCreatureSummons(cid)[1]) then
		local pos = getThingPos(getCreatureSummons(cid)[1])
		pos.x = pos.x + math.random(-4,4)
		pos.y = pos.y + math.random(-4,4)
		local frompos = getThingPos(getCreatureSummons(cid)[1])
		frompos.x = pos.x - 7
		frompos.y = pos.y - 6
		doSendDistanceShoot(frompos, pos, defec)
		doAreaCombatHealth(getCreatureSummons(cid)[1], elemento, pos, 0, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), mefec)
		end
		end
		end
		local function leaf(params)
		lugar = getThingPos(getCreatureSummons(params.cid)[1])
			for x= -7,7 do
				for y= -6,6 do
				topos = {x=lugar.x+x, y=lugar.y+y, z=lugar.z}
				doSendDistanceShoot(getThingPos(getCreatureSummons(params.cid)[1]), topos, 8)
				end
			end
		end
		posit = getThingPos(getCreatureSummons(cid)[1])
        local function fogo(params)
		if #getCreatureSummons(params.cid) >= 1 then
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], params.el, posit, params.ar, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), params.ef)
		else
		end
		end
		local function sortear()
        local magias = math.random(1,7)
        if magias == 1 then
        for r = 1, 72 do
        addEvent(variavel, r*35, cid,ELECTRICDAMAGE,42,225)
        end
        elseif magias == 2 then
        for r = 1, 72 do
        addEvent(variavel, r*35,cid,ICEDAMAGE,42,175)
        end
        elseif magias == 3 then
        for r = 1, 72 do
        addEvent(variavel, r*35,cid,GHOSTDAMAGE,18,140)
        end
        elseif magias == 4 then
        for r = 1, 72 do
        addEvent(variavel, r*35,cid,WATERDAMAGE,42,237)
        end
        elseif magias == 5 then
        for r = 1, 72 do
        addEvent(variavel, r*35,cid,ROCKDAMAGE,11,238)
        end
        elseif magias == 6 then
        addEvent(leaf, 0, {cid = cid})
        addEvent(doAreaCombatHealth, 0, getCreatureSummons(cid)[1], GRASSDAMAGE, getThingPos(getCreatureSummons(cid)[1]), grassarea, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 50)
       elseif magias == 7 then
        for r = 1, 72 do
        addEvent(variavel, r*35,cid,FIREDAMAGE,42,236)
        end
        end
        end
        addEvent(sortear, 1000)
        return 0
                elseif move.name == "Bubble Blast" then
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
			doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 68)
			else
			end
			end
		addEvent(throw, 0, {cid = cid})
		addEvent(damage, 0, {cid = cid})
                addEvent(throw, 400, {cid = cid})
		addEvent(damage, 400, {cid = cid})
                addEvent(throw, 800, {cid = cid})
		addEvent(damage, 800, {cid = cid})
                addEvent(throw, 1200, {cid = cid})
		addEvent(damage, 1200, {cid = cid})
		return 0
                elseif move.name == "Headbutt" then
                doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
                doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
                doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 3)
                return 0
                elseif move.name == "Thunder Punch" then
	 	doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
			local function damage(params)
			if isMonster(getCreatureTarget(params.cid)) then
			doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 48)
			else
			end
			end
		addEvent(damage, 0, {cid = cid})
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
                elseif move.name == "Fury Cutter" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
                local function attaque(params)
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
                end
		addEvent(attaque, 0, {cid = cid})
		addEvent(attaque, 500, {cid = cid})
		return 0
                elseif move.name == "Confusion" then
                doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
                doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
                doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), confusion, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 136)
                return 0
                elseif move.name == "Acid" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		doSendDistanceShoot(getThingPos(getCreatureSummons(cid)[1]), getThingPos(getCreatureTarget(cid)), 14)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 20)
		return 0
                elseif move.name == "Fire Fang" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..",  "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		doSendMagicEffect(getThingPos(getCreatureTarget(cid)), 146)
		local function damage(params)
		if isCreature(params.cid) then
		if isCreature(getCreatureTarget(params.cid)) then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 5)
		end
		end
		end
		addEvent(damage, 200, {cid = cid})
		return 0
                elseif move.name == "Stomp" then
                doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
                doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
                doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), stomp, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 118)
                return 0
                elseif move.name == "Thunder Punch" then
	 	doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
			local function damage(params)
			if isMonster(getCreatureTarget(params.cid)) then
			doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 48)
			else
			end
			end
		addEvent(damage, 0, {cid = cid})
		return 0
 elseif move.name == "Flames" then
		   doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
                doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
                doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), stomp, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 226)
                return 0
                elseif move.name == "Thunder Punch" then
	 	doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
			local function damage(params)
			if isMonster(getCreatureTarget(params.cid)) then
			doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 6)
			else
			end
			end
		addEvent(damage, 0, {cid = cid})
		return 0
                elseif move.name == "Bubblebeam" then
		if getCreatureLookDir(getCreatureSummons(cid)[1]) == 0 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg1n, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 25)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg2n, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 25)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg3n, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 25)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 2 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg1s, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 25)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg2s, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 25)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg3s, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 25)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 1 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg1e, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 25)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg2e, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 25)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg3e, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 25)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 3 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg1w, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 25)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg2w, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 25)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg3w, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 25)
		end
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		return 0
                elseif move.name == "Water Pulse" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		posit = getThingPos(getCreatureSummons(cid)[1])
		local function gust(params)
		if #getCreatureSummons(params.cid) >= 1 then
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, params.ar, sand1, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 68)
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
                elseif move.name == "Mud Shot" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		setPlayerStorageValue(getCreatureTarget(cid), 3, 1)
		local mudalvo = getCreatureTarget(cid)
	        local function ver(params)
	        if isCreature(params.mudalvo) then
	        if getPlayerStorageValue(params.mudalvo, 3) >= 1 then
	        setPlayerStorageValue(params.mudalvo, 3, -1)
	        end
	        end
	        end
		local function muds(params)
		if isCreature(params.alvo) then
		if getPlayerStorageValue(params.alvo, 3) >= 1 then
		doSendMagicEffect(getThingPos(params.alvo), 34)
		end
		end
		end
		addEvent(muds, 500, {alvo = mudalvo})
		addEvent(muds, 1000, {alvo = mudalvo})
		addEvent(muds, 1500, {alvo = mudalvo})
		addEvent(muds, 2000, {alvo = mudalvo})
		addEvent(muds, 2500, {alvo = mudalvo})
		addEvent(muds, 3000, {alvo = mudalvo})
		addEvent(muds, 3500, {alvo = mudalvo})
		addEvent(muds, 4000, {alvo = mudalvo})
		addEvent(ver, 4100, {mudalvo = mudalvo})
		doSendDistanceShoot(getThingPos(getCreatureSummons(cid)[1]), getThingPos(getCreatureTarget(cid)), 1)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 34)
		return 0   
	        elseif move.name == "Poison Gas" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
                local function gas(params)
	        if isCreature(getCreatureSummons(params.cid)[1]) then
	        doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), confusion, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 114)
	        end
	        end
                addEvent(gas, 000, {cid = cid, cb = cb})
                addEvent(gas, 500, {cid = cid, cb = cb})
                addEvent(gas, 1000, {cid = cid, cb = cb})
                addEvent(gas, 1500, {cid = cid, cb = cb})
                addEvent(gas, 2200, {cid = cid, cb = cb})
                addEvent(gas, 2700, {cid = cid, cb = cb})
                addEvent(gas, 3200, {cid = cid, cb = cb})
                addEvent(gas, 3900, {cid = cid, cb = cb})
                addEvent(gas, 4400, {cid = cid, cb = cb})
                addEvent(gas, 4900, {cid = cid, cb = cb})
	        return 0
	        elseif move.name == "Earth Power" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
                local function gas(params)
	        if isCreature(getCreatureSummons(params.cid)[1]) then
	        doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), confusion, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 118)
	        end
	        end
                addEvent(gas, 000, {cid = cid, cb = cb})
                addEvent(gas, 500, {cid = cid, cb = cb})
                addEvent(gas, 1000, {cid = cid, cb = cb})
                addEvent(gas, 1500, {cid = cid, cb = cb})
                addEvent(gas, 2200, {cid = cid, cb = cb})
                addEvent(gas, 2700, {cid = cid, cb = cb})
                addEvent(gas, 3200, {cid = cid, cb = cb})
                addEvent(gas, 3900, {cid = cid, cb = cb})
                addEvent(gas, 4400, {cid = cid, cb = cb})
                addEvent(gas, 4900, {cid = cid, cb = cb})
	        return 0
  elseif move.name == "Whirlpool" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
                local function gas(params)
	        if isCreature(getCreatureSummons(params.cid)[1]) then
	        doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), confusion, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 25)
	        end
	        end
                addEvent(gas, 000, {cid = cid, cb = cb})
                addEvent(gas, 500, {cid = cid, cb = cb})
                addEvent(gas, 1000, {cid = cid, cb = cb})
                addEvent(gas, 1500, {cid = cid, cb = cb})
                addEvent(gas, 2200, {cid = cid, cb = cb})
                addEvent(gas, 2700, {cid = cid, cb = cb})
                addEvent(gas, 3200, {cid = cid, cb = cb})
                addEvent(gas, 3900, {cid = cid, cb = cb})
                addEvent(gas, 4400, {cid = cid, cb = cb})
                addEvent(gas, 4900, {cid = cid, cb = cb})
	        return 0
  elseif move.name == "Smooch" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
                local function gas(params)
	        if isCreature(getCreatureSummons(params.cid)[1]) then
	        doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), confusion, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 34)
	        end
	        end
                addEvent(gas, 000, {cid = cid, cb = cb})
                addEvent(gas, 500, {cid = cid, cb = cb})
                addEvent(gas, 1000, {cid = cid, cb = cb})
                addEvent(gas, 1500, {cid = cid, cb = cb})
                addEvent(gas, 2200, {cid = cid, cb = cb})
                addEvent(gas, 2700, {cid = cid, cb = cb})
                addEvent(gas, 3200, {cid = cid, cb = cb})
                addEvent(gas, 3900, {cid = cid, cb = cb})
                addEvent(gas, 4400, {cid = cid, cb = cb})
                addEvent(gas, 4900, {cid = cid, cb = cb})
	        return 0
 elseif move.name == "Air Area" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
                local function gas(params)
	        if isCreature(getCreatureSummons(params.cid)[1]) then
	        doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), confusion, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 2)
	        end
	        end
                addEvent(gas, 000, {cid = cid, cb = cb})
                addEvent(gas, 500, {cid = cid, cb = cb})
                addEvent(gas, 1000, {cid = cid, cb = cb})
                addEvent(gas, 1500, {cid = cid, cb = cb})
                addEvent(gas, 2200, {cid = cid, cb = cb})
                addEvent(gas, 2700, {cid = cid, cb = cb})
                addEvent(gas, 3200, {cid = cid, cb = cb})
                addEvent(gas, 3900, {cid = cid, cb = cb})
                addEvent(gas, 4400, {cid = cid, cb = cb})
                addEvent(gas, 4900, {cid = cid, cb = cb})
	        return 0
 elseif move.name == "Aeroblast" then
doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
if getCreatureName(getCreatureSummons(cid)[1]) == "Pidgeot" then
doSetCreatureOutfit(getCreatureSummons(cid)[1], {lookType = 799}, 8300)
elseif getCreatureName(getCreatureSummons(cid)[1]) == "Shiny Pidgeot" then
doSetCreatureOutfit(getCreatureSummons(cid)[1], {lookType = 799}, 8300)
doChangeSpeed(getCreatureSummons(cid)[1], 100)
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
if getPlayerStorageValue(getCreatureSummons(params.cid)[1], 5) >= 1 then
setPlayerStorageValue(getCreatureSummons(params.cid)[1], 4, 1)
end
end
end
end
addEvent(stoproll, 8300, {cid = cid})
return 0
                elseif move.name == "Horn Drill" then
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
			doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 9)
			else
			end
			end
		addEvent(damage, 0, {cid = cid})
		addEvent(throw, 0, {cid = cid})
		return 0
                elseif move.name == "Iron Tail" then
	 	doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
			local function damage(params)
			if isMonster(getCreatureTarget(params.cid)) then
			doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 160)
			else
			end
			end
		addEvent(damage, 0, {cid = cid})
		return 0
elseif move.name == "Bug Bite" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..",  "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 20)
		return 0
elseif move.name == "Bite" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..",  "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 146)
		return 0
                elseif move.name == "Thunder Bolt" then
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
elseif move.name == "Invisible" then
	doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
	doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
	doAddCondition(getCreatureSummons(cid)[1], condition)
                elseif move.name == "Fire Punch" then
 	 	doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
			local function throw(params)
			if isMonster(getCreatureTarget(params.cid)) then
			doSendDistanceShoot(getThingPos(getCreatureSummons(params.cid)[1]), getThingPos(getCreatureTarget(params.cid)), 3)
			else
			end
			end
			local function damage(params)
			if isMonster(getCreatureTarget(params.cid)) then
			doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 15)
			else
			end
			end
		addEvent(throw, 0, {cid = cid})
		addEvent(damage, 0, {cid = cid})
		return 0
                elseif move.name == "Falling Rocks" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		local function fall(params)
		if isCreature(params.cid) then
		if isCreature(getCreatureSummons(params.cid)[1]) then
		local pos = getThingPos(getCreatureSummons(cid)[1])
		pos.x = pos.x + math.random(-4,4)
		pos.y = pos.y + math.random(-4,4)
		local frompos = getThingPos(getCreatureSummons(cid)[1])
		frompos.x = pos.x - 7
		frompos.y = pos.y - 6
		doSendDistanceShoot(frompos, pos, 11)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, pos, 0, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 44)
		end
		end
		end	
                for rocks = 1, 72 do
                addEvent(fall, rocks*35, {cid = cid})
                end
	        return 0
                elseif move.name == "Thunder Wave" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		if getCreatureLookDir(getCreatureSummons(cid)[1]) == 0 then
		
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), tsn, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 48)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 1 then

		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), tse, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 48)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 2 then
		
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), tss, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 48)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 3 then
		
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), tsw, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 48)
		end
		return 0
                elseif move.name == "Leech Seed" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		doSendDistanceShoot(getThingPos(getCreatureSummons(cid)[1]), getThingPos(getCreatureTarget(cid)), 5)
		local alvo = getCreatureTarget(cid)
		local leecher = getCreatureSummons(cid)[1]
		local function suck(params)
		if isCreature(getCreatureSummons(params.cid)[1]) then
		if isCreature(params.alvo) then
		if getCreatureSummons(cid)[1] == leecher then
		doSendMagicEffect(getThingPos(getCreatureSummons(params.cid)[1]), 14)
		local life = getCreatureHealth(alvo)
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, getThingPos(params.alvo), 0, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 45)
		local newlife = life - getCreatureHealth(alvo)
		if newlife >= 1 then
		doCreatureAddHealth(getCreatureSummons(params.cid)[1], newlife)
		doSendAnimatedText(getThingPos(getCreatureSummons(params.cid)[1]), "+"..newlife.."", 35)
		end
		end
		end
		end
		end
		addEvent(suck, 2000, {cid = cid, alvo = alvo})
		addEvent(suck, 4000, {cid = cid, alvo = alvo})
		addEvent(suck, 6000, {cid = cid, alvo = alvo})
		addEvent(suck, 8000, {cid = cid, alvo = alvo})
		addEvent(suck, 10000, {cid = cid, alvo = alvo})
		return 0
	        elseif move.name == "Air Gust" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		doSendDistanceShoot(getThingPos(getCreatureSummons(cid)[1]), getThingPos(getCreatureTarget(cid)), 36)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 42)
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
                elseif move.name == "Fireball" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..",  "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
			local function throw(params)
			if isMonster(getCreatureTarget(params.cid)) then
			doSendDistanceShoot(getThingPos(getCreatureSummons(params.cid)[1]), getThingPos(getCreatureTarget(params.cid)), 3)
			else
			end
			end
			local function damage(params)
			if isMonster(getCreatureTarget(params.cid)) then
			doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, getThingPos(getCreatureTarget(cid)), waba, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 15)
			else
			end
			end
		addEvent(damage, 100, {cid = cid})
		addEvent(throw, 0, {cid = cid})
		return 0
	        elseif move.name == "Rock Tomb" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 228)
		local hitalvo = getCreatureTarget(cid)
		local function hit(params)
		if isCreature(getCreatureSummons(params.cid)[1]) then
		if isCreature(getCreatureTarget(params.cid)) then
		if getCreatureTarget(params.cid) == params.hitalvo then
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], FLYDAMAGE, getThingPos(getCreatureTarget(params.cid)), 0, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 228)
		end
		end
		end
		end
		addEvent(hit, 480, {cid = cid, hitalvo = hitalvo})
		return 0
   elseif move.name == "Shadow Shadow" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 222)
		local hitalvo = getCreatureTarget(cid)
		local function hit(params)
		if isCreature(getCreatureSummons(params.cid)[1]) then
		if isCreature(getCreatureTarget(params.cid)) then
		if getCreatureTarget(params.cid) == params.hitalvo then
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], FLYDAMAGE, getThingPos(getCreatureTarget(params.cid)), 0, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 17)
		end
		end
		end
		end
		addEvent(hit, 480, {cid = cid, hitalvo = hitalvo})
		return 0
 elseif move.name == "Ground Chop" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		posit = getThingPos(getCreatureSummons(cid)[1])
		local function gust(params)
		if #getCreatureSummons(params.cid) >= 1 then
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, params.ar, sand1, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 111)
		else
		end
		end
		local posicao = getThingPos(getCreatureSummons(cid)[1])
		if getCreatureLookDir(getCreatureSummons(cid)[1]) == 0 then
		addEvent(gust, 0, {cid = cid, ar = {x=posicao.x, y=posicao.y-1, z=posicao.z}})
		addEvent(gust, 500, {cid = cid, ar = {x=posicao.x, y=posicao.y-2, z=posicao.z}})
		addEvent(gust, 1000, {cid = cid, ar = {x=posicao.x, y=posicao.y-3, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, ar = {x=posicao.x, y=posicao.y-4, z=posicao.z}})
                addEvent(gust, 2000, {cid = cid, ar = {x=posicao.x, y=posicao.y-4, z=posicao.z}})
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 2 then
		addEvent(gust, 0, {cid = cid, ar = {x=posicao.x, y=posicao.y+1, z=posicao.z}})
		addEvent(gust, 500, {cid = cid, ar = {x=posicao.x, y=posicao.y+2, z=posicao.z}})
		addEvent(gust, 1000, {cid = cid, ar = {x=posicao.x, y=posicao.y+3, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, ar = {x=posicao.x, y=posicao.y+4, z=posicao.z}})
                addEvent(gust, 2000, {cid = cid, ar = {x=posicao.x, y=posicao.y+5, z=posicao.z}})
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 1 then
		addEvent(gust, 0, {cid = cid, ar = {x=posicao.x+1, y=posicao.y, z=posicao.z}})
		addEvent(gust, 500, {cid = cid, ar = {x=posicao.x+2, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1000, {cid = cid, ar = {x=posicao.x+3, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, ar = {x=posicao.x+4, y=posicao.y, z=posicao.z}})
                addEvent(gust, 2000, {cid = cid, ar = {x=posicao.x+5, y=posicao.y, z=posicao.z}})
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 3 then
		addEvent(gust, 0, {cid = cid, ar = {x=posicao.x-1, y=posicao.y, z=posicao.z}})
		addEvent(gust, 500, {cid = cid, ar = {x=posicao.x-2, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1000, {cid = cid, ar = {x=posicao.x-3, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, ar = {x=posicao.x-4, y=posicao.y, z=posicao.z}})
                addEvent(gust, 1500, {cid = cid, ar = {x=posicao.x-5, y=posicao.y, z=posicao.z}})
		end
		return 0

elseif move.name == "Guillotine" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..",  "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		local function slap(params)
		if isMonster(getCreatureTarget(params.cid)) then
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, getThingPos(getCreatureTarget(params.cid)), 0, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 146)
		else
		end
		end
		addEvent(slap, 0, {cid = cid})
		addEvent(slap, 300, {cid = cid})
		return 0
                elseif move.name == "Taur Attack" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		doSendDistanceShoot(getThingPos(getCreatureSummons(cid)[1]), getThingPos(getCreatureTarget(cid)), 10)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 3)
		return 0
                elseif move.name == "Ground Chop" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		posit = getThingPos(getCreatureSummons(cid)[1])
		local function gust(params)
		if #getCreatureSummons(params.cid) >= 1 then
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, params.ar, sand1, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 111)
		else
		end
		end
		local posicao = getThingPos(getCreatureSummons(cid)[1])
		if getCreatureLookDir(getCreatureSummons(cid)[1]) == 0 then
		addEvent(gust, 0, {cid = cid, ar = {x=posicao.x, y=posicao.y-1, z=posicao.z}})
		addEvent(gust, 500, {cid = cid, ar = {x=posicao.x, y=posicao.y-2, z=posicao.z}})
		addEvent(gust, 1000, {cid = cid, ar = {x=posicao.x, y=posicao.y-3, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, ar = {x=posicao.x, y=posicao.y-4, z=posicao.z}})
                addEvent(gust, 2000, {cid = cid, ar = {x=posicao.x, y=posicao.y-4, z=posicao.z}})
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 2 then
		addEvent(gust, 0, {cid = cid, ar = {x=posicao.x, y=posicao.y+1, z=posicao.z}})
		addEvent(gust, 500, {cid = cid, ar = {x=posicao.x, y=posicao.y+2, z=posicao.z}})
		addEvent(gust, 1000, {cid = cid, ar = {x=posicao.x, y=posicao.y+3, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, ar = {x=posicao.x, y=posicao.y+4, z=posicao.z}})
                addEvent(gust, 2000, {cid = cid, ar = {x=posicao.x, y=posicao.y+5, z=posicao.z}})
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 1 then
		addEvent(gust, 0, {cid = cid, ar = {x=posicao.x+1, y=posicao.y, z=posicao.z}})
		addEvent(gust, 500, {cid = cid, ar = {x=posicao.x+2, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1000, {cid = cid, ar = {x=posicao.x+3, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, ar = {x=posicao.x+4, y=posicao.y, z=posicao.z}})
                addEvent(gust, 2000, {cid = cid, ar = {x=posicao.x+5, y=posicao.y, z=posicao.z}})
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 3 then
		addEvent(gust, 0, {cid = cid, ar = {x=posicao.x-1, y=posicao.y, z=posicao.z}})
		addEvent(gust, 500, {cid = cid, ar = {x=posicao.x-2, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1000, {cid = cid, ar = {x=posicao.x-3, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, ar = {x=posicao.x-4, y=posicao.y, z=posicao.z}})
                addEvent(gust, 1500, {cid = cid, ar = {x=posicao.x-5, y=posicao.y, z=posicao.z}})
		end
		return 0
                elseif move.name == "Psybeam" then
		alvo = getCreatureName(getCreatureTarget(cid))
		if getCreatureLookDir(getCreatureSummons(cid)[1]) == 0 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg1n, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 109)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg2n, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 108)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg3n, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 109)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 2 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg1s, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 108)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg2s, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 109)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg3s, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 108)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 1 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg1e, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 106)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg2e, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 107)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg3e, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 106)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 3 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg1w, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 107)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg2w, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 106)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg3w, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 107)
		end
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		return 0
        elseif move.name == "Earthshock" then
	doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
	doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
	doAreaCombatHealth(getCreatureSummons(cid)[1], GROUNDDAMAGE, getThingPos(getCreatureSummons(cid)[1]), charge, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 255)
	local sps = getThingPos(getCreatureSummons(cid)[1])
	sps.x = sps.x+1
	sps.y = sps.y+1
	doSendMagicEffect(sps, 127)
	return 0
	elseif move.name == "Discharge" then
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		setPlayerStorageValue(getCreatureSummons(cid)[1], 15, 0)
		local chac = getCreatureSummons(cid)[1]
			local function discharge(params)
			if isCreature(params.cid) then
			if isCreature(getCreatureSummons(params.cid)[1]) then
			if getCreatureSummons(params.cid)[1] == chac then
			if getPlayerStorageValue(getCreatureSummons(params.cid)[1], 15) >= 1 then
			return true
			end
				if math.random(1,100) >= 75 then
				doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
				doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(params.cid)[1]), charge, -(((num1)+(getPlayerLevel(cid)*(num3)))*(params.charges)), -(((num2)+(getPlayerLevel(cid)*(num3)))*(params.charges)), 48)
				setPlayerStorageValue(getCreatureSummons(params.cid)[1], 15, 1)
				else
					if params.charges == 5 then
					doSendAnimatedText(getThingPos(getCreatureSummons(params.cid)[1]), "FAIL", 215)
					else
				doSendAnimatedText(getThingPos(getCreatureSummons(params.cid)[1]), "CHARGING", 210)
				doSendMagicEffect(getThingPos(getCreatureSummons(params.cid)[1]), 48)
				end
				end
			end
			end
			end
			end
		doSendMagicEffect(getThingPos(getCreatureSummons(cid)[1]), 48)
		doSendAnimatedText(getThingPos(getCreatureSummons(cid)[1]), "CHARGING", 210)
		for charges = 1, 5 do
		addEvent(discharge, charges*1000, {cid = cid, charges = charges})
		end
		return 0
                elseif move.name == "Mega Punch" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 112)
		return 0
                elseif move.name == "Flamethrower" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..",  "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		if getCreatureLookDir(getCreatureSummons(cid)[1]) == 0 then
		local flamepos = getThingPos(getCreatureSummons(cid)[1])
		flamepos.x = flamepos.x+1
		flamepos.y = flamepos.y-1
		doSendMagicEffect(flamepos, 55)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), flamen, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 255)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 1 then
		local flamepos = getThingPos(getCreatureSummons(cid)[1])
		flamepos.x = flamepos.x+3
		flamepos.y = flamepos.y+1
		doSendMagicEffect(flamepos, 58)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), flamee, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 255)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 2 then
		local flamepos = getThingPos(getCreatureSummons(cid)[1])
		flamepos.x = flamepos.x+1
		flamepos.y = flamepos.y+3
		doSendMagicEffect(flamepos, 56)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), flames, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 255)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 3 then
		local flamepos = getThingPos(getCreatureSummons(cid)[1])
		flamepos.x = flamepos.x-1
		flamepos.y = flamepos.y+1
		doSendMagicEffect(flamepos, 57)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), flamew, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 255)		
                end
		return 0
                elseif move.name == "Toxic" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		if getCreatureLookDir(getCreatureSummons(cid)[1]) == 0 then
		area = toxicn
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 1 then
		area = toxice
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 2 then
		area = toxics
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 3 then
		area = toxicw
		end
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), area, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 114)
		return 0
                elseif move.name == "Harden" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..",  "..move.name.."!", TALKTYPE_SAY)
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
	        elseif move.name == "Gunk Shot" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
	local alvinho = getCreatureTarget(cid)
	local function rocksup(params)
	if isCreature(getCreatureSummons(params.cid)[1]) then
	if isCreature(getCreatureTarget(params.cid)) then
	if getCreatureTarget(params.cid) ~= params.alvinho then
	return true
	end
	jus = getThingPos(getCreatureSummons(params.cid)[1])
	jusa = getThingPos(getCreatureTarget(params.cid))
	if jusa.x > jus.x then
	xx = 0
	elseif jusa.x < jus.x then
	xx = -1
	else
	xx = 0
	end
	local newpos = {x = getThingPos(getCreatureSummons(params.cid)[1]).x+(xx), y = jusa.y - 3, z = getThingPos(getCreatureSummons(params.cid)[1]).z}
	doSendDistanceShoot(getThingPos(getCreatureSummons(params.cid)[1]), newpos, 6)
	end
	end
	end

	local function rocksdown(params)
	if isCreature(getCreatureSummons(params.cid)[1]) then
	if isCreature(getCreatureTarget(params.cid)) then
	if getCreatureTarget(params.cid) ~= params.alvinho then
	return true
	end
	jus = getThingPos(getCreatureSummons(params.cid)[1])
	jusa = getThingPos(getCreatureTarget(params.cid))
	if jusa.x > jus.x then
	xx = 0
	elseif jusa.x < jus.x then
	xx = -1
	else
	xx = 0
	end
	local newpos = {x = getThingPos(getCreatureSummons(params.cid)[1]).x+(xx), y = jusa.y - 3, z = getThingPos(getCreatureSummons(params.cid)[1]).z}
	doSendDistanceShoot(newpos, getThingPos(getCreatureTarget(params.cid)), 6)
	doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), bomb, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 116)
	end
	end
	end
	addEvent(rocksup, 0, {cid = cid, alvinho = alvinho})
	addEvent(rocksdown, 300, {cid = cid, alvinho = alvinho})
		return 0
                elseif move.name == "Fire Fang" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..",  "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		doSendMagicEffect(getThingPos(getCreatureTarget(cid)), 146)
		local function damage(params)
		if isCreature(params.cid) then
		if isCreature(getCreatureTarget(params.cid)) then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 5)
		end
		end
		end
		addEvent(damage, 200, {cid = cid})
		return 0
                elseif move.name == "Shadow Storm" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		local function fall(params)
		if isCreature(params.cid) then
		if isCreature(getCreatureSummons(params.cid)[1]) then
		local pos = getThingPos(getCreatureSummons(cid)[1])
		pos.x = pos.x + math.random(-4,4)
		pos.y = pos.y + math.random(-4,4)
		local frompos = getThingPos(getCreatureSummons(cid)[1])
		frompos.x = pos.x - 7
		frompos.y = pos.y - 6
		doSendDistanceShoot(frompos, pos, 18)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, pos, 0, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 140)
		end
		end
		end
                for rocks = 1, 72 do
                addEvent(fall, rocks*35, {cid = cid})
                end
	        return 0
                elseif move.name == "Great Love" then
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
		addEvent(storm, 0, {cid = cid, el = element, ar = gl1, ef = 147})
		addEvent(storm, 500, {cid = cid, el = element, ar = gl2, ef = 147})
	        return 0
	elseif move.name == "Mega Prick" then
		doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
		doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
		doSendDistanceShoot(getThingPos(getCreatureSummons(cid)[1]), getThingPos(getCreatureTarget(cid)), 25)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(getPlayerLevel(cid)*(num3))), -((num2)+(getPlayerLevel(cid)*(num3))), 3)
return 0
elseif move.name == "Transform" then
doCreatureSay(getCreatureSummons(cid)[1], ""..string.upper(move.name).."!", TALKTYPE_MONSTER)
doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", "..move.name.."!", TALKTYPE_SAY)
		setCD(getPlayerSlotItem(cid, 8).uid, cdzin, move.cd)
		exhaustion.set(cid, move.ex, move.cd)
		sendCooldown(cid)
doSetCreatureOutfit(getCreatureSummons(cid)[1], getCreatureOutfit(getCreatureTarget(cid)), 13000)
return 0
end
return 0
end