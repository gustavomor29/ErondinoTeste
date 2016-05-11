-- Pre�os das apostas --
price_21 = 1000 -- 1k ou 1000gold
price_jogo6 = 5000
local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}                                                                                               
function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end
function onThink() npcHandler:onThink() end
function creatureSayCallback(cid, type, msg)
if(not npcHandler:isFocused(cid)) then
return false
end
local talkUser = NPCHANDLER_CONVbehavior == CONVERSATION_DEFAULT and 0 or cid
if(msgcontains(msg, 'apostar')) then
selfSay('Eu fa�o 2 jogos: {21},{Jogo do 6} escolha um deles!', cid)
talkState[talkUser] = 5
elseif (msgcontains(msg, 'Jogo do 6') and talkState[talkUser] == 5)    then
selfSay('O Jogo do 6 funciona assim: Eu vou rodar um dado, e se cair no n�mero 6 voc� ganha o s�xtuplo (6 vezes) do valor apostado.', cid)
selfSay('Caso n�o caia no 6, voc� perde apenas o dinheiro da aposta.', cid)
selfSay('Est� pronto para {come�ar}?.', cid)
talkState[talkUser] = 3
elseif(msgcontains(msg, 'come�ar') and talkState[talkUser] == 3) then
selfSay('Voc� possui o {dinheiro} da aposta ('..price_jogo6..')golds ?', cid)
if doPlayerRemoveMoney(cid, price_jogo6) == TRUE then
talkState[talkUser] = 2
else
selfSay('Desculpe, mais voc� n�o tem dinheiro para apostar comigo.',cid)
end
elseif(msgcontains(msg, 'dinheiro') and talkState[talkUser] == 2) then
sorteio6 = math.random(1,6)
if sorteio6 == 6 then
talkState[talkUser] = 3
selfSay('Par�bens, o n�mero sorteado foi 6 e voc� acaba de ganhar '..(price_jogo6*6) ..'golds, mais o dinheiro que voc� pagou da aposta.',cid)
doPlayerAddMoney(cid,price_jogo6*6) else
talkState[talkUser] = 2
selfSay('Que azar, o n�mero sorteado foi '..sorteio6..', mais sorte na proxima.',cid)
end
elseif(msgcontains(msg, '21') and talkState[talkUser] == 5) then
selfSay('O 21 funciona assim: Voc� ira ganhar 1 n�mero e o n�mero tem quer ser 21, ou chegar o mais pr�ximo poss�vel sem ultrapassar esse valor.', cid)
selfSay('E a mesma coisa ser� feita comigo, ganharei 1 n�mero.', cid)
selfSay('Voc� pode ir comprando mais n�meros dizendo [comprar] e se quiser parar � s� dizer [parar].', cid)
selfSay('Se voc� ganhar de mim, voc� leva o triplo do dinheiro apostado.', cid)
selfSay('Est� pronto para {come�ar}?.', cid)
talkState[talkUser] = 0
elseif(msgcontains(msg, 'come�ar') and talkState[talkUser] == 0) then
selfSay('Voc� possui o {dinheiro} da aposta ('..price_21..')golds ?', cid)
talkState[talkUser] = 1
elseif(msgcontains(msg, 'dinheiro') and talkState[talkUser] == 1) then
if doPlayerRemoveMoney(cid, price_21) == TRUE then
talkState[talkUser] = 0
local mpn = math.random(1,21) 
setPlayerStorageValue(cid, 55411,mpn)  local pn = getPlayerStorageValue(cid, 55411)        
selfSay('Seu n�mero � '..pn..', quer comprar mais ou parar?',cid)
else
selfSay('Desculpe, mais voc� n�o tem dinheiro para apostar comigo.',cid)
end
elseif(msgcontains(msg, 'comprar') and talkState[talkUser] == 0) then
local cp = math.random(1,10)
setPlayerStorageValue(cid, 55411, (getPlayerStorageValue(cid, 55411))+cp)
selfSay('Seu n�mero � '..getPlayerStorageValue(cid, 55411)..', quer comprar mais ou parar?',cid)
talkState[talkUser] = 0  
elseif(msgcontains(msg, 'parar') and talkState[talkUser] == 0) then
local npcn = math.random(15,21)
setPlayerStorageValue(cid, 2224, npcn)
if getPlayerStorageValue(cid, 55411) < getPlayerStorageValue(cid, 2224)then
selfSay('Meu n�mero � '..getPlayerStorageValue(cid, 2224)..'.',cid)       
selfSay('Seu n�mero final � '..getPlayerStorageValue(cid, 55411)..'.',cid)  
selfSay('Ganhei, mais sorte na proxima vez.',cid)   
talkState[talkUser] = 1
elseif getPlayerStorageValue(cid, 55411) == getPlayerStorageValue(cid, 2224) then
selfSay('Meu n�mero � '..getPlayerStorageValue(cid, 2224)..'.',cid)       
selfSay('Seu n�mero final � '..getPlayerStorageValue(cid, 55411)..'.',cid)  
selfSay('Empato, portanto ninguem ganha nada.',cid) 
talkState[talkUser] = 1
elseif  getPlayerStorageValue(cid, 55411) > getPlayerStorageValue(cid, 2224)  then
selfSay('Meu n�mero � '..getPlayerStorageValue(cid, 2224)..'.',cid)       
selfSay('Seu n�mero final � '..getPlayerStorageValue(cid, 55411)..'.',cid)  local somag = (price_21*3)
selfSay('Voc� ganhou '..somag..'golds, mais os seus '..price_21..'golds de volta. Par�bens !!!',cid)   
doPlayerAddMoney(cid, somag)
doPlayerAddMoney(cid, price_21)
talkState[talkUser] = 1
else
selfSay('Desculpe, mais voc� n�o possui dinheiro est� aposta',cid)
end                       end
return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())


