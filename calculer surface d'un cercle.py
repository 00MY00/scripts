import os
clear = lambda: os.system('cls') # importe la commande cls de dos





#   mes fonction
#--------------------------------------
def calcul_surface_cercle(reyon):
	from math import pi #import pi du modul math
	return pi*(reyon*reyon)

#$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$


print("\n\nCe programme calcule la surface d'un cercle\nQuel est le rayon de votre cercle ?\n")#information pour l'utilisateur

r = float(input("cm: "))#variable pour le reillon


print ("votre cercle a une surface de: " + str(calcul_surface_cercle(r)) +" cm2")#affichage du resulta avec apelle de fonction





input()