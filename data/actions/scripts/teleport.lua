function onUse (cid,item,frompos,item2,topos)
pos = {x=1059, y=904, z=7}
pos2 = getPlayerPosition(cid)

        UID_DO_BAU = 5650
        STORAGE_VALUE = 5650
        

        if getPlayerLevel(cid) >= 1 then
  if item.uid == UID_DO_BAU then
          queststatus = getPlayerStorageValue(cid,STORAGE_VALUE)
          if queststatus == -1 then
          doTeleportThing(cid,pos)
        doPlayerSendTextMessage(cid,22,"Parabens.") -- Msg que ira aparecer
        setPlayerStorageValue(cid,STORAGE_VALUE,1)
		doTeleportThing(cid, pos)
		doSendMagicEffect(pos2, CONST_ME_TELEPORT)
          else
        doPlayerSendTextMessage(cid,22,"Vazio.")
          end
  end
        else
  doPlayerSendCancel(cid,'Somente levels 15+ conseguem abrir este bau.')
        end
return 1
end