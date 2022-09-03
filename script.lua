bleu = Color.new(0,0,255)

screen:print(15,15,"Loading modules...",bleu)
screen:flip()

-------------------------------------

dofile("fonctions.lua")

excommande=""
commande=""

type_clavier = 1
y=10
type_clavier2 = 0

modes = Font.load("Complete in Him.ttf")
modes:setPixelSizes(20,22)

Adhoc.init()
Adhoc.connect()

rouge = Color.new(255,0,0)
bleu = Color.new(0,0,255) 

fond = Image.load("fond.png")

minuteur = Timer.new()
minuteur:start()

sendtime = Timer.new()
sendtime:stop()

while true do
screen:clear()
pad = Controls.read()

Time = minuteur:time()

screen:blit(0,0,fond)

texte1 = Adhoc.recv()
Adhoc.recv() 

screen:fontPrint(modes,25,38,"Message > "..commande.."_",bleu)

screen:print(25,140,"Your friend sent:",rouge) 
screen:fontPrint(modes,25,160,texte1,bleu)

screen:print(25,238,"Press start to send the message",bleu)
screen:print(25,260,"SELECT : Infos on the pad",rouge)

aff_clavier_()


if pad:start() then
parse(commande)
excommande=commande

send1 = mot[1]

if send1 == "unactiveadhoc" then
Adhoc.term()
elseif send1 == "reactiveadhoc" then
dofile("script.lua")
elseif send1 == "exit" then
System.Quit()
else



sendtime:start()
while sendtime:time() < 800 do
Adhoc.send(send1)
end

sendtime:stop()
sendtime:reset()

type_clavier = 1
y=10
type_clavier2 = 0

excommande=""
commande=""
end
end

if pad:select() then
screen:clear()
screen:blit(0,0,fond)
screen:print(10,20,"Commands :",rouge) 
screen:print(10,45,"unactiveadhoc --> Unactivates adhoc function",rouge)
screen:print(10,60,"reactiveadhoc --> Reactivates adhoc function",rouge)
screen:print(10,75,"exit --> Ruturn to the XMB",rouge)
screen:print(10,100,"PSPAdhocMessenger By Mickael2054",rouge)
screen:print(10,160,"Thanks:",rouge)
screen:print(10,190,"Fableboss1 / Flav1994 /",rouge)
screen:print(10,205,"Homemister and PickDat /",rouge)
screen:print(10,220,"DevsGen and PSPGen",rouge)
end 

oldpad = pad
screen.waitVblankStart()
screen.flip()
end 