clavier = Image.load("images/clavier.png")
clavier1 = Image.load("images/clavier1.png")
clavier2 = Image.load("images/clavier2.png")
clavier3 = Image.load("images/clavier3.png")

mot={}
lignep=""

function parse(txt)
txt=txt.." "
b=1
nb_mot=0
a=1
max=string.len(txt)
i=1
while i<=max do 
lettre=string.sub(txt,i,i)
if lettre==" " then
mot[a]=string.sub(txt,b,i-1)
b=i+1
nb_mot=nb_mot+1
a=a+1
end
i=i+1
end
end


function aff_clavier_()
	if pad:l() and oldpad:l() ~= pad:l() then
		if type_clavier == 1 then
			type_clavier = 2
		elseif type_clavier == 2 then
			type_clavier = 1
		end
	end
	if pad:r() then
		if type_clavier == 1 then
			type_clavier2 = 1
		end
		if type_clavier == 2 then
			type_clavier2 = 2
		end
	else
		type_clavier2 = 0
	end
	
		
		
   if type_clavier == 1 and type_clavier2 ~= 1 then
	screen:blit(323,100,clavier,0,0,151,151)
	 --milieu
	 if pad:analogX() > -50 and pad:analogX() < 50 and pad:analogY() > -50 and pad:analogY() < 50 then
	    screen:blit(374,151,clavier,202,51,49,49)
	    if pad:triangle() and oldpad:triangle() ~= pad:triangle() then effacer() end
	    if pad:square() and oldpad:square() ~= pad:square() then ajouter_lettre("m") end
	    if pad:cross() and oldpad:cross() ~= pad:cross() then ajouter_lettre(" ") end
	    if pad:circle() and oldpad:circle() ~= pad:circle() then ajouter_lettre("n") end
	 end
	 --haut gauche
	 if pad:analogX() < -50 and pad:analogY() < -50 then
	    screen:blit(324,101,clavier,152,1,49,49)
	    if pad:triangle() and oldpad:triangle() ~= pad:triangle() then ajouter_lettre(",") end
	    if pad:square() and oldpad:square() ~= pad:square() then ajouter_lettre("a") end
	    if pad:cross() and oldpad:cross() ~= pad:cross() then ajouter_lettre("b") end
	    if pad:circle() and oldpad:circle() ~= pad:circle() then ajouter_lettre("c") end
	 end
	 --haut milieu
	 if pad:analogX() > -50 and pad:analogX() < 50 and pad:analogY() < -50 then
	    screen:blit(374,101,clavier,202,1,49,49)
	    if pad:triangle() and oldpad:triangle() ~= pad:triangle() then ajouter_lettre(".") end
	    if pad:square() and oldpad:square() ~= pad:square() then ajouter_lettre("d") end
	    if pad:cross() and oldpad:cross() ~= pad:cross() then ajouter_lettre("e") end
	    if pad:circle() and oldpad:circle() ~= pad:circle() then ajouter_lettre("f") end
	 end
	 --haut droite
	 if pad:analogX() > 50 and pad:analogY() < -50 then
	    screen:blit(424,101,clavier,252,1,49,49)
	    if pad:triangle() and oldpad:triangle() ~= pad:triangle() then ajouter_lettre("!") end
	    if pad:square() and oldpad:square() ~= pad:square() then ajouter_lettre("g") end
	    if pad:cross() and oldpad:cross() ~= pad:cross() then ajouter_lettre("h") end
	    if pad:circle() and oldpad:circle() ~= pad:circle() then ajouter_lettre("i") end
	 end
	 --gauche
	 if pad:analogX() < -50 and pad:analogY() > -50 and pad:analogY() < 50 then
	    screen:blit(324,151,clavier,152,51,49,49)
	    if pad:triangle() and oldpad:triangle() ~= pad:triangle() then ajouter_lettre("-") end
	    if pad:square() and oldpad:square() ~= pad:square() then ajouter_lettre("j") end
	    if pad:cross() and oldpad:cross() ~= pad:cross() then ajouter_lettre("k") end
	    if pad:circle() and oldpad:circle() ~= pad:circle() then ajouter_lettre("l") end
	 end
	 --droite
	 if pad:analogX() > 50 and pad:analogY() > -50 and pad:analogY() < 50 then
	    screen:blit(424,151,clavier,252,51,49,49)
	    if pad:triangle() and oldpad:triangle() ~= pad:triangle() then ajouter_lettre("?") end
	    if pad:square() and oldpad:square() ~= pad:square() then ajouter_lettre("o") end
	    if pad:cross() and oldpad:cross() ~= pad:cross() then ajouter_lettre("p") end
	    if pad:circle() and oldpad:circle() ~= pad:circle() then ajouter_lettre("q") end
	 end
	 --bas gauche
	 if pad:analogX() < -50 and pad:analogY() > 50 then
	    screen:blit(324,201,clavier,152,101,49,49)
	    if pad:triangle() and oldpad:triangle() ~= pad:triangle() then ajouter_lettre("(") end
	    if pad:square() and oldpad:square() ~= pad:square() then ajouter_lettre("r") end
	    if pad:cross() and oldpad:cross() ~= pad:cross() then ajouter_lettre("s") end
	    if pad:circle() and oldpad:circle() ~= pad:circle() then ajouter_lettre("t") end
	 end
	 --bas milieu
	 if pad:analogX() > -50 and pad:analogX() < 50 and pad:analogY() > 50 then
	    screen:blit(374,201,clavier,202,101,49,49)
	    if pad:triangle() and oldpad:triangle() ~= pad:triangle() then ajouter_lettre(":") end
	    if pad:square() and oldpad:square() ~= pad:square() then ajouter_lettre("u") end
	    if pad:cross() and oldpad:cross() ~= pad:cross() then ajouter_lettre("v") end
	    if pad:circle() and oldpad:circle() ~= pad:circle() then ajouter_lettre("w") end
	 end
	 --bas droite
	 if pad:analogX() > 50 and pad:analogY() > 50 then
	    screen:blit(424,201,clavier,252,101,49,49)
	    if pad:triangle() and oldpad:triangle() ~= pad:triangle() then ajouter_lettre(")") end
	    if pad:square() and oldpad:square() ~= pad:square() then ajouter_lettre("x") end
	    if pad:cross() and oldpad:cross() ~= pad:cross() then ajouter_lettre("y") end
	    if pad:circle() and oldpad:circle() ~= pad:circle() then ajouter_lettre("z") end
	 end
   end
   if type_clavier == 2 and type_clavier2 ~= 2 then
		screen:blit(323,100,clavier1,0,0,151,151)
	 --milieu
	 if pad:analogX() > -50 and pad:analogX() < 50 and pad:analogY() > -50 and pad:analogY() < 50 then
	    screen:blit(374,151,clavier1,202,51,49,49)
	    if pad:triangle() and oldpad:triangle() ~= pad:triangle() then effacer() end
	    if pad:cross() and oldpad:cross() ~= pad:cross() then ajouter_lettre(" ") end
	    if pad:circle() and oldpad:circle() ~= pad:circle() then ajouter_lettre("5") end
	 end
	 --haut gauche
	 if pad:analogX() < -50 and pad:analogY() < -50 then
	    screen:blit(324,101,clavier1,152,1,49,49)
	    if pad:circle() and oldpad:circle() ~= pad:circle() then ajouter_lettre("1") end
	 end
	 --haut milieu
	 if pad:analogX() > -50 and pad:analogX() < 50 and pad:analogY() < -50 then
	    screen:blit(374,101,clavier1,202,1,49,49)
	    if pad:circle() and oldpad:circle() ~= pad:circle() then ajouter_lettre("2") end
	 end
	 --haut droite
	 if pad:analogX() > 50 and pad:analogY() < -50 then
	    screen:blit(424,101,clavier1,252,1,49,49)
	    if pad:circle() and oldpad:circle() ~= pad:circle() then ajouter_lettre("3") end
	 end
	 --gauche
	 if pad:analogX() < -50 and pad:analogY() > -50 and pad:analogY() < 50 then
	    screen:blit(324,151,clavier1,152,51,49,49)
	    if pad:circle() and oldpad:circle() ~= pad:circle() then ajouter_lettre("4") end
	 end
	 --droite
	 if pad:analogX() > 50 and pad:analogY() > -50 and pad:analogY() < 50 then
	    screen:blit(424,151,clavier1,252,51,49,49)
	    if pad:circle() and oldpad:circle() ~= pad:circle() then ajouter_lettre("6") end
	 end
	 --bas gauche
	 if pad:analogX() < -50 and pad:analogY() > 50 then
	    screen:blit(324,201,clavier1,152,101,49,49)
	    if pad:circle() and oldpad:circle() ~= pad:circle() then ajouter_lettre("7") end
	 end
	 --bas milieu
	 if pad:analogX() > -50 and pad:analogX() < 50 and pad:analogY() > 50 then
	    screen:blit(374,201,clavier1,202,101,49,49)
	    if pad:circle() and oldpad:circle() ~= pad:circle() then ajouter_lettre("8") end
	 end
	 --bas droite
	 if pad:analogX() > 50 and pad:analogY() > 50 then
	    screen:blit(424,201,clavier1,252,101,49,49)
	    if pad:cross() and oldpad:cross() ~= pad:cross() then ajouter_lettre("0") end
	    if pad:circle() and oldpad:circle() ~= pad:circle() then ajouter_lettre("9") end
	 end
   end
	
	if type_clavier2 == 1 then
	screen:blit(323,100,clavier2,0,0,151,151)
	 --milieu
	 if pad:analogX() > -50 and pad:analogX() < 50 and pad:analogY() > -50 and pad:analogY() < 50 then
	    screen:blit(374,151,clavier2,202,51,49,49)
	    if pad:triangle() and oldpad:triangle() ~= pad:triangle() then effacer() end
	    if pad:square() and oldpad:square() ~= pad:square() then ajouter_lettre("M") end
	    if pad:cross() and oldpad:cross() ~= pad:cross() then ajouter_lettre(" ") end
	    if pad:circle() and oldpad:circle() ~= pad:circle() then ajouter_lettre("N") end
	 end
	 --haut gauche
	 if pad:analogX() < -50 and pad:analogY() < -50 then
	    screen:blit(324,101,clavier2,152,1,49,49)
	    if pad:triangle() and oldpad:triangle() ~= pad:triangle() then ajouter_lettre("^") end
	    if pad:square() and oldpad:square() ~= pad:square() then ajouter_lettre("A") end
	    if pad:cross() and oldpad:cross() ~= pad:cross() then ajouter_lettre("B") end
	    if pad:circle() and oldpad:circle() ~= pad:circle() then ajouter_lettre("C") end
	 end
	 --haut milieu
	 if pad:analogX() > -50 and pad:analogX() < 50 and pad:analogY() < -50 then
	    screen:blit(374,101,clavier2,202,1,49,49)
	    if pad:triangle() and oldpad:triangle() ~= pad:triangle() then ajouter_lettre("@") end
	    if pad:square() and oldpad:square() ~= pad:square() then ajouter_lettre("D") end
	    if pad:cross() and oldpad:cross() ~= pad:cross() then ajouter_lettre("E") end
	    if pad:circle() and oldpad:circle() ~= pad:circle() then ajouter_lettre("F") end
	 end
	 --haut droite
	 if pad:analogX() > 50 and pad:analogY() < -50 then
	    screen:blit(424,101,clavier2,252,1,49,49)
	    if pad:triangle() and oldpad:triangle() ~= pad:triangle() then ajouter_lettre("*") end
	    if pad:square() and oldpad:square() ~= pad:square() then ajouter_lettre("G") end
	    if pad:cross() and oldpad:cross() ~= pad:cross() then ajouter_lettre("H") end
	    if pad:circle() and oldpad:circle() ~= pad:circle() then ajouter_lettre("I") end
	 end
	 --gauche
	 if pad:analogX() < -50 and pad:analogY() > -50 and pad:analogY() < 50 then
	    screen:blit(324,151,clavier2,152,51,49,49)
	    if pad:triangle() and oldpad:triangle() ~= pad:triangle() then ajouter_lettre("_") end
	    if pad:square() and oldpad:square() ~= pad:square() then ajouter_lettre("J") end
	    if pad:cross() and oldpad:cross() ~= pad:cross() then ajouter_lettre("K") end
	    if pad:circle() and oldpad:circle() ~= pad:circle() then ajouter_lettre("L") end
	 end
	 --droite
	 if pad:analogX() > 50 and pad:analogY() > -50 and pad:analogY() < 50 then
	    screen:blit(424,151,clavier2,252,51,49,49)
	    if pad:triangle() and oldpad:triangle() ~= pad:triangle() then ajouter_lettre("\"") end
	    if pad:square() and oldpad:square() ~= pad:square() then ajouter_lettre("O") end
	    if pad:cross() and oldpad:cross() ~= pad:cross() then ajouter_lettre("P") end
	    if pad:circle() and oldpad:circle() ~= pad:circle() then ajouter_lettre("Q") end
	 end
	 --bas gauche
	 if pad:analogX() < -50 and pad:analogY() > 50 then
	    screen:blit(324,201,clavier2,152,101,49,49)
	    if pad:triangle() and oldpad:triangle() ~= pad:triangle() then ajouter_lettre("=") end
	    if pad:square() and oldpad:square() ~= pad:square() then ajouter_lettre("R") end
	    if pad:cross() and oldpad:cross() ~= pad:cross() then ajouter_lettre("S") end
	    if pad:circle() and oldpad:circle() ~= pad:circle() then ajouter_lettre("T") end
	 end
	 --bas milieu
	 if pad:analogX() > -50 and pad:analogX() < 50 and pad:analogY() > 50 then
	    screen:blit(374,201,clavier2,202,101,49,49)
	    if pad:triangle() and oldpad:triangle() ~= pad:triangle() then ajouter_lettre(";") end
	    if pad:square() and oldpad:square() ~= pad:square() then ajouter_lettre("U") end
	    if pad:cross() and oldpad:cross() ~= pad:cross() then ajouter_lettre("V") end
	    if pad:circle() and oldpad:circle() ~= pad:circle() then ajouter_lettre("W") end
	 end
	 --bas droite
	 if pad:analogX() > 50 and pad:analogY() > 50 then
	    screen:blit(424,201,clavier2,252,101,49,49)
	    if pad:triangle() and oldpad:triangle() ~= pad:triangle() then ajouter_lettre("/") end
	    if pad:square() and oldpad:square() ~= pad:square() then ajouter_lettre("X") end
	    if pad:cross() and oldpad:cross() ~= pad:cross() then ajouter_lettre("Y") end
	    if pad:circle() and oldpad:circle() ~= pad:circle() then ajouter_lettre("Z") end
	 end
   end
	if type_clavier2 == 2 then
	screen:blit(323,100,clavier3,0,0,151,151)
	 --milieu
	 if pad:analogX() > -50 and pad:analogX() < 50 and pad:analogY() > -50 and pad:analogY() < 50 then
	    screen:blit(374,151,clavier3,202,51,49,49)
	    if pad:triangle() and oldpad:triangle() ~= pad:triangle() then effacer() end
	    if pad:cross() and oldpad:cross() ~= pad:cross() then ajouter_lettre(" ") end
	 end
	 --haut gauche
	 if pad:analogX() < -50 and pad:analogY() < -50 then
	    screen:blit(324,101,clavier3,152,1,49,49)
	    if pad:triangle() and oldpad:triangle() ~= pad:triangle() then ajouter_lettre(",") end
	    if pad:square() and oldpad:square() ~= pad:square() then ajouter_lettre("(") end
	    if pad:cross() and oldpad:cross() ~= pad:cross() then ajouter_lettre(".") end
	    if pad:circle() and oldpad:circle() ~= pad:circle() then ajouter_lettre(")") end
	 end
	 --haut milieu
	 if pad:analogX() > -50 and pad:analogX() < 50 and pad:analogY() < -50 then
	    screen:blit(374,101,clavier3,202,1,49,49)
	    if pad:triangle() and oldpad:triangle() ~= pad:triangle() then ajouter_lettre("\"") end
	    if pad:square() and oldpad:square() ~= pad:square() then ajouter_lettre("<") end
	    if pad:cross() and oldpad:cross() ~= pad:cross() then ajouter_lettre("'") end
	    if pad:circle() and oldpad:circle() ~= pad:circle() then ajouter_lettre(">") end
	 end
	 --haut droite
	 if pad:analogX() > 50 and pad:analogY() < -50 then
	    screen:blit(424,101,clavier3,252,1,49,49)
	    if pad:triangle() and oldpad:triangle() ~= pad:triangle() then ajouter_lettre("-") end
	    if pad:square() and oldpad:square() ~= pad:square() then ajouter_lettre("[") end
	    if pad:cross() and oldpad:cross() ~= pad:cross() then ajouter_lettre("_") end
	    if pad:circle() and oldpad:circle() ~= pad:circle() then ajouter_lettre("]") end
	 end
	 --gauche
	 if pad:analogX() < -50 and pad:analogY() > -50 and pad:analogY() < 50 then
	    screen:blit(324,151,clavier3,152,51,49,49)
	    if pad:triangle() and oldpad:triangle() ~= pad:triangle() then ajouter_lettre("!") end
	    if pad:square() and oldpad:square() ~= pad:square() then ajouter_lettre("{") end
	    if pad:cross() and oldpad:cross() ~= pad:cross() then ajouter_lettre("?") end
	    if pad:circle() and oldpad:circle() ~= pad:circle() then ajouter_lettre("}") end
	 end
	 --droite
	 if pad:analogX() > 50 and pad:analogY() > -50 and pad:analogY() < 50 then
	    screen:blit(424,151,clavier3,252,51,49,49)
	    if pad:triangle() and oldpad:triangle() ~= pad:triangle() then ajouter_lettre("+") end
	    if pad:square() and oldpad:square() ~= pad:square() then ajouter_lettre("\\") end
	    if pad:cross() and oldpad:cross() ~= pad:cross() then ajouter_lettre("=") end
	    if pad:circle() and oldpad:circle() ~= pad:circle() then ajouter_lettre("/") end
	 end
	 --bas gauche
	 if pad:analogX() < -50 and pad:analogY() > 50 then
	    screen:blit(324,201,clavier3,152,101,49,49)
	    if pad:triangle() and oldpad:triangle() ~= pad:triangle() then ajouter_lettre(":") end
	    if pad:square() and oldpad:square() ~= pad:square() then ajouter_lettre("@") end
	    if pad:cross() and oldpad:cross() ~= pad:cross() then ajouter_lettre(";") end
	    if pad:circle() and oldpad:circle() ~= pad:circle() then ajouter_lettre("#") end
	 end
	 --bas milieu
	 if pad:analogX() > -50 and pad:analogX() < 50 and pad:analogY() > 50 then
	    screen:blit(374,201,clavier3,202,101,49,49)
	    if pad:triangle() and oldpad:triangle() ~= pad:triangle() then ajouter_lettre("~") end
	    if pad:square() and oldpad:square() ~= pad:square() then ajouter_lettre("$") end
	    if pad:cross() and oldpad:cross() ~= pad:cross() then ajouter_lettre("`") end
	    if pad:circle() and oldpad:circle() ~= pad:circle() then ajouter_lettre("%") end
	 end
	 --bas droite
	 if pad:analogX() > 50 and pad:analogY() > 50 then
	    screen:blit(424,201,clavier3,252,101,49,49)
	    if pad:triangle() and oldpad:triangle() ~= pad:triangle() then ajouter_lettre("*") end
	    if pad:square() and oldpad:square() ~= pad:square() then ajouter_lettre("^") end
	    if pad:cross() and oldpad:cross() ~= pad:cross() then ajouter_lettre("|") end
	    if pad:circle() and oldpad:circle() ~= pad:circle() then ajouter_lettre("&") end
	 end
   end
end   

function ajouter_lettre(lettre)
   if commande==nil then
   commande = lettre
   else
	 commande = commande .. lettre
   end
end

function effacer()
   if commande == nil then
   else
	 enleve_fond = string.sub(commande,0,string.len(commande) - 1)
	 commande = enleve_fond
   end
end