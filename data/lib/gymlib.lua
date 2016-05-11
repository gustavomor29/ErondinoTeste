funcpokemon = {2220, 2222, 2651, 2653, 2655} -- ID das pokebolas (o pokemon tem que estar vivo nessas IDs)
bpslot = CONST_SLOT_BACKPACK --em outros servers, pode ser que seja CONST_SLOT_BACKPACK o lugar onde fica a backpack no inventory

---lideres de ginasio
ginasios = {
["Brock"] = { storage = 992,
          msgdefeat = "Voc� Perdeu! Voc� ainda n�o est� preparado para mim Hahaha, N�o volte antes de ficar mais forte!",
          msgafk = "Vaza voc� n�o tem pokemons!",
          msgwin = "Parab�ns, Voc� � muito fera, me venceu! Tome a Insignia de Rocha.",
          [1] = { msggo = "Vamos l�! Eu escolho voc�, Onix!",
            msgba = "� o bastante, Onix!",
            pokem = "Brock Onix",
            nextp = "finish"},
},


["Misty"] = { storage = 993,
          msgdefeat = "Perdeu leru-leru! Voc� ainda n�o ganha de mim, passa mais tarde bebe!",
          msgafk = "Voc� n�o tem pokemons anjo, sai!",
          msgwin = "Uau parab�ns, Voc� � muito forte! Tome a Insignia de Cascata.",
          [1] = { msggo = "Vamos lutar! Eu escolho voc�, Gyarados!",
            msgba = "� o bastante , Gyarados!",
            pokem = "Misty Gyarados",
            nextp = "finishe"},

},

["Surge"] = { storage = 994,
          msgdefeat = "Perdedor! Sabia que n�o deveria ter perdido meu tempo, volte s� quando estiver pronto!",
          msgafk = "Saia ja daqui voc� n�o tem pokemons!",
          msgwin = "Meus parab�ns, Voc� � bom, mas pode melhorar! Tome a Insignia do Trov�o.",
          [1] = { msggo = "Vai l�, Raichu!",
            msgba = "Volte, Raichu!",
             pokem = "Surge Raichu",
            nextp = "finishee"},
},


["Erika"] = { storage = 995,
          msgdefeat = "Voc� simplesmente perdeu hihi! N�o est� preparado sinto muito, volte quando estiver forte!",
          msgafk = "Se retire voc� n�o possui pokemons!",
          msgwin = "Nossa, Voc� me impressionou, meus parab�ns! Tome a Insignia de Arco-Iris.",
          [1] = { msggo = "Vaiiii Tangela!",
            msgba = "Ok, volte Tangela!",
            pokem = "Erika Tangela",
            nextp = "finisheee"},
},


["Sabrina"] = { storage = 996,
          msgdefeat = "Perdedor! Se retire daqui e s� volte quando estiver preparado para uma batalha descente!",
          msgafk = "V� embora voc� n�o possui pokemons, insolente!",
          msgwin = "Rummmm conseguiu, por muito pouco mas foi o suficiente! Tome a Insignia do Pantano.",
          [1] = { msggo = "Eu escolho voc� Kadabra!",
            msgba = "N�ooooo Kadabra!",
            pokem = "Sabrina Kadabra",
            nextp = "finisheeee"},
},


["Koga"] = { storage = 997,
          msgdefeat = "Voc� perdeu! Disciplina � a base para o sucesso, treine e volte quando se sentir melhor!",
          msgafk = "Saia voc� n�o possui pokemons!",
          msgwin = "Parab�ns, Voc� mereceu! Tome a Insignia da Alma.",
          [1] = { msggo = "Vaiiii Venomoth!",
            msgba = "� o bastante, Venomoth!",
            pokem = "Koga Venomoth",
            nextp = "finisheeeee"},

},

["Blaine"] = { storage = 998,
          msgdefeat = "Uuuuhahahaha voc� perdeu, saia daqui logo e v� chorar em casa!",
          msgafk = "Saia voc� n�o possui pokemons e aqui � muito perigoso!",
          msgwin = "Parab�ns, Voc� realmente me surpreendeu! Tome a Insignia de Vulc�o.",
          [1] = { msggo = "Vamos lutar, vaii Ninetales!",
            msgba = "Droga, volte Ninetales!",
            pokem = "Blaine Ninetales",
            nextp = "finisheeeeee"},

},

["Giovanni"] = { storage = 991,
          msgdefeat = "Voc� perdeu feio, n�o estava preparado para voltar aqui, saia j�!",
          msgafk = "Que insolente, vir at� aqui sem nenhum pokemon, saia j� daqui!",
          msgwin = "Parab�ns, me surpreendeu! Tome a Insignia da Terra.",
          [1] = { msggo = "Vaii l� Persian!",
            msgba = "volte, Persian!",
            pokem = "Giovanni Persian",
            nextp = "finiishe"},

},
["Agatha"] = { storage = 926,
          msgdefeat = "Uuuuhahahaha voc� perdeu, saia daqui logo e v� chorar em casa!",
          msgafk = "Saia voc� n�o possui pokemons e aqui � muito perigoso!",
          msgwin = "Parab�ns, Voc� realmente me surpreendeu! Tome a Insignia de Terra.",
          [1] = { msggo = "Vamos lutar, vaii Gengar!",
            msgba = "Droga, volte Gengar!",
            pokem = "Gengar",
            nextp = "finiishe"},

},

["falkner"] = { storage = 901,
          msgdefeat = "Voc� perdeu feio, n�o estava preparado, saia j�!",
          msgafk = "Que insolente, vir at� aqui sem nenhum pokemon, saia j� daqui!",
          msgwin = "Parab�ns, me surpreendeu! Tome seu premio.",
          [1] = { msggo = "Vaii l� Pidgeot!",
            msgba = "volte, Pidgeot!",
        
            nextp = "finiishee"},
},

["bugsy2"] = { storage = 911,
          msgdefeat = "Voc� perdeu feio, n�o estava preparado, saia j�!",
          msgafk = "Que insolente, vir at� aqui sem nenhum pokemon, saia j� daqui!",
          msgwin = "Parab�ns, me surpreendeu! Tome seu premio.",
    [1] = { msggo = "Vaii l� Pidgeot!",
            msgba = "volte, Pidgeot!",
     
            nextp = "finiiishee"},
},
["whitney"] = { storage = 915,
          msgdefeat = "Voc� perdeu feio, n�o estava preparado, saia j�!",
          msgafk = "Que insolente, vir at� aqui sem nenhum pokemon, saia j� daqui!",
          msgwin = "Parab�ns, me surpreendeu! Tome seu premio.",
          [1] = { msggo = "Vaii l� Pidgeot!",
            msgba = "volte, Pidgeot!",
        
            nextp = "finiisheeee"},
},

["bugsy"] = { storage = 912,
          msgdefeat = "Voc� perdeu feio, n�o estava preparado, saia j�!",
          msgafk = "Que insolente, vir at� aqui sem nenhum pokemon, saia j� daqui!",
          msgwin = "Parab�ns, me surpreendeu! Tome seu premio.",
          [1] = { msggo = "Vaii l� Pidgeot!",
            msgba = "volte, Pidgeot!",
        
            nextp = "fimishe"},
},

["Treinador Joao"] = { storage = 925,
          msgdefeat = "Voc� perdeu feio, n�o estava preparado para voltar aqui, saia j�!",
          msgafk = "Que insolente, vir at� aqui sem nenhum pokemon, saia j� daqui!",
          msgwin = "Parab�ns, me surpreendeu! Tome seu premio.",
          [1] = { msggo = "Vaii l� Pinsir!",
            msgba = "volte, Pinsir!",
            pokem = "Joao Pinsir",
            nextp = "Joao Scyther"},
          [2] = { msggo = "Sua vez Scyther!",
            msgba = "volte Scyther!",
            pokem = "Joao Scyther",
            nextp = "Joao Taurus"},
          [3] = { msggo = "Sua vez Taurus!",
            msgba = "volte Taurus!",
            pokem = "Joao Taurus",
            nextp = "Joao Cubone"},
          [4] = { msggo = "Vaiiii Cubone!",
            msgba = "N�ooo Cubone!",
            pokem = "Joao Cubone",
            nextp = "finalllll"},



}
}

function noPokeAtAll(cid, gympoke, npcname, msgafk)
     if not isCreature(cid) then
         return false
     end
     if not isCreature(gympoke) then
         return false
     end
     if #getCreatureSummons(cid) == 0 and getPlayerStorageValue(cid, 991) == 0 and getPlayerStorageValue(cid, ginasios[npcname].storage) ~= 2 then
     setPlayerStorageValue(cid, 991, -1)
     doCreatureSay(getCreatureByName(npcname), msgafk, 1)
         doSendMagicEffect(getThingPos(gympoke), 10)
     setPlayerStorageValue(cid, ginasios[npcname].storage, 0)
         doRemoveCreature(gympoke)
    return true
    end
end
 
function gymChecker(cid, duel, nb, npcname)
         if not isCreature(cid) then
         return true
         end
     if not isCreature(duel) then
     doSendMagicEffect(getThingPos(cid), 10)
     doRemoveCreature(cid)
     return true
     end
     if getDistanceBetween(getThingPos(getCreatureByName(npcname)), getThingPos(duel)) >= 8 then
            doSendMagicEffect(getThingPos(cid), 10)
            doRemoveCreature(cid)
            setPlayerStorageValue(duel, ginasios[npcname].storage, 0)
     return true
     end
     if isCreature(duel) and getPlayerStorageValue(duel, 991) == 0 then
     addEvent(noPokeAtAll, 6000, duel, cid, npcname, ginasios[npcname].msgafk)
     end
         if isCreature(duel) and getPlayerStorageValue(duel, 991) == -1 then
            doSendMagicEffect(getThingPos(cid), 10)
            doRemoveCreature(cid)
            setPlayerStorageValue(duel, ginasios[npcname].storage, 0)
            doCreatureSay(getCreatureByName(npcname), ginasios[npcname].msgdefeat, 1)
         return true
         end
         if isCreature(duel) and not hasPokemon(duel) then
         setPlayerStorageValue(duel, 991, -1)
         end
         if not isCreature(getCreatureTarget(cid)) then
            if nb == 0 then
            addEvent(gymChecker, 10000, cid, duel, 1, npcname)
            else
            doSendMagicEffect(getThingPos(cid), 10)
            doRemoveCreature(cid)
                if isCreature(duel) then
                setPlayerStorageValue(duel, ginasios[npcname].storage, 0)
                end
            end
         return true
         end
         addEvent(gymChecker, 11500, cid, duel, 0, npcname)
end

function hasPokemon(cid)

    if #getCreatureSummons(cid) >= 1 then
    return true
    end

    if isInArray(funcpokemon, getPlayerSlotItem(cid, CONST_SLOT_FEET).itemid) then
    return true
    end

    local bp = getPlayerSlotItem(cid, bpslot)

    for cc = 1, #funcpokemon do
        if #getItemsInContainerById(bp.uid, funcpokemon[cc]) >= 1 then
        return true
        end 
    end

    return false
    end

function doGymBattle(npcname, gympoke, cid, turn)
    doCreatureSay(getCreatureByName(npcname), ginasios[npcname][turn].msggo, 1)
    local x = doSummonCreature(gympoke, getThingPos(getCreatureByName(npcname)))
    registerCreatureEvent(x, "Gym1")
    registerCreatureEvent(x, "Gym2")
    registerCreatureEvent(x, "Gym3")
    registerCreatureEvent(x, "Gym4")
    setPlayerStorageValue(x, 201, ".")
    setPlayerStorageValue(x, 201, npcname)
    setPlayerStorageValue(x, 202, turn)
    doSendMagicEffect(getThingPos(x), 10)
    setPlayerStorageValue(x, ginasios[npcname].storage, 1)
    addEvent(gymChecker, 11500, x, cid, 0, npcname)
end

--ex: doGymBattle("Brock", "Brock Geodude", cid, 1)