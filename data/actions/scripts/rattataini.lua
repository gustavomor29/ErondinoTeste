function onUse(cid, item, frompos, item2, topos)
local zub = {x=850,y=1077,z=5}
local odd = {x=852,y=1077,z=5}
local pid = {x=854,y=1077,z=5}
local pox = getPlayerPosition(cid)

if getPlayerStorageValue(cid, 54842) ~= 1 then
local health = 350
local maxhealth = 350
local description = "Cont�m um Rattata."
local poke1 = "This is Rattata's pokeball. HP = ["..health.."/"..maxhealth.."]"
item = doCreateItemEx(2219)
doItemSetAttribute(item, "poke", poke1)
doItemSetAttribute(item, "nome", "Rattata")
doItemSetAttribute(item, "description", description)
doPlayerAddItemEx(cid, item, true)
doTransformItem(item, 2222)
doPlayerSendTextMessage(cid, 27, "Voce pegou um pokemon.")
doPlayerSendTextMessage(cid, 27, "Nao esqueca de usar a Pokedex para descobrir mais sobre pokemons na sua jornada!")
doPlayerAddExp(cid, 9300)
doSendMagicEffect(pox, 21)
doPlayerAddSoul(cid, 1)
setPlayerStorageValue(cid, 54842, 1)
else
doPlayerSendTextMessage(cid, 27, "Voce ja pegou o pokemon.")
end
return TRUE
end