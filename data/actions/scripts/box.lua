local a = {
[7884] = {balltype = "super", ballid = 2222,
        pokemons = {"Venusaur", "Blastoise", "Charizard", "Gengar", "Alakazam", "Ampharos"}},
[7885] = {balltype = "great", ballid = 2222,
        pokemons = {"Wobbuffet", "Misdreavus", "Kingdra", "Tentacruel", "Sudowoodo", "Girafarig"}},
[7886] = {balltype = "super", ballid = 2222,
        pokemons = {"Hitmonlee", "Hitmonchan", "Hitmontop"}},
[11641] = {balltype = "ultra", ballid = 2222,
        pokemons = {"Houndoom", "Skarmory", "Crobat", "Machamp", "Smeargle", "Electabuzz", "Magmar", "Gyarados", "Lapras", "Slowking", "Tyranitar", "Steelix", "Scyther", "Scizor"}},
[13678] = {balltype = "normal", ballid = 11826, -- Ditto BOX
        pokemons = {"Ditto"}}
}

local happy = 220

function onUse(cid, item, frompos, item2, topos)
  local b = a[item.itemid]
    if not b then return true end
       local pokemon = b.pokemons[math.random(#b.pokemons)]
       local btype = b.balltype
	   local pokeball = b.ballid
     if not pokeballs[btype] then return true end
        doPlayerSendTextMessage(cid, 27, "You opened a pokemon box!")
   doSendMagicEffect(getThingPos(cid), 29)
   local description = "Contains a "..pokemon.."."
   local poke1 = pokemon
 if getPlayerFreeCap(cid) <= 0.99 then
   ball = doCreateItemEx(pokeball)
   doItemSetAttribute(ball, "poke", poke1)
   doItemSetAttribute(ball, "hp", 1)
   doItemSetAttribute(ball, "maxhealth", 1)
   doItemSetAttribute(ball, "nome", poke1)
   doItemSetAttribute(ball, "description", description)
   doPlayerSendMailByName(getCreatureName(params.cid), ball, 1)
   doPlayerSendTextMessage(cid, 27, "Congratulations, you caught a "..pokemon.."!")
   doPlayerSendTextMessage(cid, 27, "Since you are already holding six pokemons, this pokeball has been sent to your depot.")
else
   ball = doCreateItemEx(pokeball)
   doItemSetAttribute(ball, "poke", poke1)
   doItemSetAttribute(ball, "hp", 1)
   doItemSetAttribute(ball, "maxhealth", 1)
   doItemSetAttribute(ball, "nome", poke1)
   doItemSetAttribute(ball, "description", description)
   doPlayerSendTextMessage(cid, 27, "Congratulations, you caught a "..pokemon.."!")
   doPlayerAddItemEx(cid, ball, true)
   doTransformItem(ball, pokeball)
end
        doRemoveItem(item.uid, 1)
        return true
     end
