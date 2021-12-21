
import os
clear = lambda: os.system('cls')


titre = """
      _ _      _   _                         _          
     | (_)    | | (_)                       (_)         
   __| |_  ___| |_ _  ___  _ __  _ __   __ _ _ _ __ ___ 
  / _` | |/ __| __| |/ _ \| '_ \| '_ \ / _` | | '__/ _ \
 | (_| | | (__| |_| | (_) | | | | | | | (_| | | | |  __/
  \__,_|_|\___|\__|_|\___/|_| |_|_| |_|\__,_|_|_|  \___|
                                                        
                                                        

"""
erreur = "Movaise donner saisi !!"

Mon_dictionaire = {}


def ajout_au_dico_cle():

	while True:
		clear()
		print("Création de dictionaire\n")

		try:
			ma_cle = input("Entre la clé qui permetra de retouver le txt\n: ")
			ma_cle = ma_cle.lower()
			if ma_cle == "":
				print("le chan est vide ce n'est pas possible")

			else:
				break

		except Exception:
			print(erreur)
	return ma_cle


def ajout_au_dico_txt():
	clear()
	while True:

		try:
			mon_txt = input("Entre le txt relier a la clé\n: ")
			mon_txt = mon_txt.lower()
			if mon_txt == "":
				print("le chan est vide ce n'est pas possible")
			else:
				break

		except Exception:
			print(erreur)

		clear()
	return mon_txt



def cherche():
	while True:
		clear()
		print("entre la clé a chercher")
		user = input()

		Mon_dictionaire.get(user,"Existe pas")
		if True:
			print(Mon_dictionaire[user])
		input()
		break








while True:
	clear()
	print("add pour ajouter list pour afficher")
	user = input("entre une commande :-> ")

	if user.lower() == "add":
		ma_cle = ajout_au_dico_cle()
		mon_txt = ajout_au_dico_txt()
		print(f"Vous avez entre comme clé {ma_cle} et contiendra : {mon_txt}")
		Mon_dictionaire[ma_cle] = mon_txt
		input()

	if user.lower() == "list":
		for cle in Mon_dictionaire.keys():
			print(cle," ",end='')
			for val in Mon_dictionaire.values():
				print(val)
			print()
		input()




	if user.lower() == "cherch":
		cherche()



		

	if user.lower() == "exit":
		break




input()


