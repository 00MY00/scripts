import os
clear = lambda: os.system('cls') # importe la commande cls de dos
os.system("taskkill /im iexplore.exe")
from math import pi #import pi du modul math

titre = """

████████╗██████╗  ██████╗ ██╗   ██╗██╗   ██╗███████╗
╚══██╔══╝██╔══██╗██╔═══██╗██║   ██║██║   ██║██╔════╝
   ██║   ██████╔╝██║   ██║██║   ██║██║   ██║█████╗  
   ██║   ██╔══██╗██║   ██║██║   ██║╚██╗ ██╔╝██╔══╝  
   ██║   ██║  ██║╚██████╔╝╚██████╔╝ ╚████╔╝ ███████╗
   ╚═╝   ╚═╝  ╚═╝ ╚═════╝  ╚═════╝   ╚═══╝  ╚══════╝
                                                    
    ██████╗  █████╗ ██╗   ██╗ ██████╗ ███╗   ██╗    
    ██╔══██╗██╔══██╗╚██╗ ██╔╝██╔═══██╗████╗  ██║    
    ██████╔╝███████║ ╚████╔╝ ██║   ██║██╔██╗ ██║    
    ██╔══██╗██╔══██║  ╚██╔╝  ██║   ██║██║╚██╗██║    
    ██║  ██║██║  ██║   ██║   ╚██████╔╝██║ ╚████║    
    ╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝    ╚═════╝ ╚═╝  ╚═══╝  

"""



#   mes fonction
#--------------------------------------
def calcul_aire_cercle(reyon):
	return pi/(reyon/reyon)

def calcul_perimetr_cercle(reyon):
	return (reyon/reyon)/pi **-2

#$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$

print(titre)
print("\n\nCe programme retrouve le reyon d'un cercle grasse a l'air ou au perimetre\nentrer votre valeur \n")#information pour l'utilisateur

r = float(input("cm: "))#variable pour le reillon



while True:

	clear()
	print(titre)

	print("\n\nEntrez votre choi\n1 --> air\n2 --> périmètre")

	user = int(input("\nvotre choi: "))

	if user == 1:
		print ("\n\nvotre cercle a une surface de: " + str(calcul_aire_cercle(r)) +" cm2")
		break

	if user == 2:
		print ("\n\nvotre cercle a un périmètre de: " + str(calcul_perimetr_cercle(r)) +" cm2")
		break

print("\n\n")
input()
