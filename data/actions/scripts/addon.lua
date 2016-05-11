function onUse(cid, item, fromPosition, itemEx, toPosition)

local addons = {
[226] = {pokemon= "Tangela" , looktype = 811, count = 1},
[227] = {pokemon= "Tangela" , looktype = 810, count = 1},
}  
        if #getCreatureSummons(cid) > 0 then
            doPlayerSendCancel(cid, "Please back your pokemon.")
        return false
        end     
local numero = addons[item.itemid].looktype
local count = addons[item.itemid].count
local pb = getPlayerSlotItem(cid, 8).uid
local pk = addons[item.itemid].pokemon
 
        if pb <= 0 then
            doPlayerSendCancel(cid, "Sorry, you don't have a "..pk.." in the slot")
    return false
end
 
        if getItemAttribute(pb,"poke") ~= pk then
            doPlayerSendCancel(cid, "Sorry, you can't use this addon on this poke.")
        return false
        end
       

            if(doRemoveItem(item.uid, count)) then
                doPlayerSendTextMessage(cid, 27, "Congratulations! You have performed successfully. To remove the addon says: !addons remove")
                doSetItemAttribute(pb,"addon", numero)
            else
                doPlayerSendCancel(cid, "You dont have cont this item for addon of your "..pk..".")
            end   
                
return true
end