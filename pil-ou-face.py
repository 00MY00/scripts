


import os
clear = lambda: os.system('cls') # clear chat
os.system("taskkill /im iexplore.exe")
from random import randrange # impèort le random

ERREUR = "ERREUR DE SAISI ENTRE UN CHIFFER !!" # msg d'erreur

titre = """

██████╗ ██╗██╗          ██████╗ ██╗   ██╗    ███████╗ █████╗  ██████╗███████╗
██╔══██╗██║██║         ██╔═══██╗██║   ██║    ██╔════╝██╔══██╗██╔════╝██╔════╝
██████╔╝██║██║         ██║   ██║██║   ██║    █████╗  ███████║██║     █████╗  
██╔═══╝ ██║██║         ██║   ██║██║   ██║    ██╔══╝  ██╔══██║██║     ██╔══╝  
██║     ██║███████╗    ╚██████╔╝╚██████╔╝    ██║     ██║  ██║╚██████╗███████╗
╚═╝     ╚═╝╚══════╝     ╚═════╝  ╚═════╝     ╚═╝     ╚═╝  ╚═╝ ╚═════╝╚══════╝

"""

en_cours = """

██████╗  █████╗ ██████╗ ████████╗██╗███████╗    ███████╗███╗   ██╗     ██████╗ ██████╗ ██╗   ██╗██████╗ ███████╗
██╔══██╗██╔══██╗██╔══██╗╚══██╔══╝██║██╔════╝    ██╔════╝████╗  ██║    ██╔════╝██╔═══██╗██║   ██║██╔══██╗██╔════╝
██████╔╝███████║██████╔╝   ██║   ██║█████╗      █████╗  ██╔██╗ ██║    ██║     ██║   ██║██║   ██║██████╔╝███████╗
██╔═══╝ ██╔══██║██╔══██╗   ██║   ██║██╔══╝      ██╔══╝  ██║╚██╗██║    ██║     ██║   ██║██║   ██║██╔══██╗╚════██║
██║     ██║  ██║██║  ██║   ██║   ██║███████╗    ███████╗██║ ╚████║    ╚██████╗╚██████╔╝╚██████╔╝██║  ██║███████║
╚═╝     ╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝   ╚═╝╚══════╝    ╚══════╝╚═╝  ╚═══╝     ╚═════╝ ╚═════╝  ╚═════╝ ╚═╝  ╚═╝╚══════╝

"""




# controle de saisi pour garde *con*

while True: 
	clear()
	print(titre)
	print("\nCombien de partie veux tu jouer ?\n")
 	
	try:
		partie = int(input(": "))
		if partie > 0: # verifie que la valeur n'es pas inferieur de 0
			break

	except Exception:
		print(ERREUR.lower())
		input("Pause")

# fin de verification etap 1



cont = 0 # conteur de poin
		


for i in range(partie): # boucle de nombre de partilles

	random = randrange(1, 3) # nombre random entre 1 et 2

	while True: # controle de sesi empeche tous saufe 1 et 2
		clear()
		print(en_cours)
		print(f"Partie en coure {i} sure {partie}")

		print("c'est partie fait t'es parie\n1 = pile 2 = face\n")

		try:
			user = int(input(": "))
			if user == 1:
				break
			if user == 2:
				break
			else:
				print("TROP GRAND OU TROP PETIT	!!!")
				input("Pause")
		
		except Exception:
			print(ERREUR.lower()) # flaime de recrire en minuscule alord lower() sinon pas obliger
			input("Pause")

# verification terminer toute condition son OK

	if user == random: # teste logique si ganier ou non si oui ajoute 1 a un conteur de score
		print("Braveau")
		cont +=1 # plus 1 si reusit
		input("Pause")
	else:
		print("perdue")
		input("Pause")

clear()

print("      TABLEAU DE SCORE")
print("$$$$$$$$$$$$$$$$$$$$$$$$$$$$$")
print(f"{cont} ganier sur {partie}")
print("$$$$$$$$$$$$$$$$$$$$$$$$$$$$$")
			


input()
