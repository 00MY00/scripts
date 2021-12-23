
#Crée par Kuroakashiro

import os
clear = lambda: os.system('cls')

titre = """


  ██████╗ ██████╗ ███╗   ███╗██████╗ ██████╗ ███████╗███████╗███████╗██╗ ██████╗ ███╗   ██╗
 ██╔════╝██╔═══██╗████╗ ████║██╔══██╗██╔══██╗██╔════╝██╔════╝██╔════╝██║██╔═══██╗████╗  ██║
 ██║     ██║   ██║██╔████╔██║██████╔╝██████╔╝█████╗  ███████╗███████╗██║██║   ██║██╔██╗ ██║
 ██║     ██║   ██║██║╚██╔╝██║██╔═══╝ ██╔══██╗██╔══╝  ╚════██║╚════██║██║██║   ██║██║╚██╗██║
 ╚██████╗╚██████╔╝██║ ╚═╝ ██║██║     ██║  ██║███████╗███████║███████║██║╚██████╔╝██║ ╚████║
  ╚═════╝ ╚═════╝ ╚═╝     ╚═╝╚═╝     ╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝╚═╝ ╚═════╝ ╚═╝  ╚═══╝
                            ██╗███╗   ██╗███████╗ ██████╗                                 
                            ██║████╗  ██║██╔════╝██╔═══██╗                                
                            ██║██╔██╗ ██║█████╗  ██║   ██║                                
                            ██║██║╚██╗██║██╔══╝  ██║   ██║                                
                            ██║██║ ╚████║██║     ╚██████╔╝                                
                            ╚═╝╚═╝  ╚═══╝╚═╝      ╚═════╝                                 
                                                                                        
			        Crée par Kuroakashiro                                                                

"""


titreCalcul = """


 ██████╗ █████╗ ██╗      ██████╗██╗   ██╗██╗     ███████╗
██╔════╝██╔══██╗██║     ██╔════╝██║   ██║██║     ██╔════╝
██║     ███████║██║     ██║     ██║   ██║██║     █████╗  
██║     ██╔══██║██║     ██║     ██║   ██║██║     ██╔══╝  
╚██████╗██║  ██║███████╗╚██████╗╚██████╔╝███████╗███████╗
 ╚═════╝╚═╝  ╚═╝╚══════╝ ╚═════╝ ╚═════╝ ╚══════╝╚══════╝


"""




def rgba():
	while True:
				
		while True:
			clear()
			print(titreCalcul)
			print("\n\ncombien de couleur voulez vous retirez ?")

			try:
				couleur = int(input(": "))
				if couleur <= 0:
					print("Votre valeur est trop basse !")

				if couleur > 4:
					print("Votre valeur est trop grande !\nIl exist selement 4 couleur R,G,B,A")

				else:
					break

			except Exception:
				print("Erreur ! Donnez incoerente !!")


		while True:
			clear()
			print(titreCalcul)
			print("\n\nEntre le poi de la fauto en [ ko ]\n")
			try:
				pois = int(input(": "))

				if pois <= 0:
					print("Votre valeur est trop basse !")

				else:
					break
			except Exception:
				print("Erreur ! Donnez incoerente !!")

		result = pois / 4
		temp = 4 - couleur
		result = result * temp

		clear()
		print(titre)
		print(f"Votre Image pèsera : {result} ci vous retirer {couleur} sur 4 couleur 'R,G,B,A'")
		input()
		break


def poisImage():
	while True:
		
		while True:
			clear()
			print(titreCalcul)
			try:
				largeur = int(input("\n\nEntre la largeur de l'image en PX : "))
				if largeur <= 0:
					print("Votre valeur est trop basse !")

				else:
					break

			except Exception:
				print("Erreur ! Donnez incoerente !!")

		while True:
			clear()
			print(titreCalcul)
			try:
				hauteur = int(input("Entre la hauteur de l'image en PX : "))
				if hauteur <= 0:
					print("Votre valeur est trop basse !")

				else:
					break

			except Exception:
				print("Erreur ! Donnez incoerente !!")


		while True:
			clear()
			print(titreCalcul)
			try:
				bits = int(input("Entre le nobre de bits par couleur normalement 8 : "))
				if bits <= 0:
					print("Votre valeur est trop basse !")

				else:
					break

			except Exception:
				print("Erreur ! Donnez incoerente !!")

		result = largeur * hauteur * 3 * bits
		clear()
		print(titre)
		print(f"Votre Image pèse : {result} bits soit {result / 1000} Ko")
		input()
		break

		
def tauxCompretion():
	while True:
		clear()
		print(titreCalcul)
		while True:
		
			try:
				tCompreser = int(input("\n\nEntre la taille compreser en Octer : "))
				if tCompreser <= 0:
					print("Votre valeur est trop basse !")

				else:
					break

			except Exception:
				print("Erreur ! Donnez incoerente !!")



		while True:
			clear()
			print(titreCalcul)
			try:
				tNonCompreser = int(input("Entre la taille non compreser en Octer : "))
				if tNonCompreser <= 0:
					print("Votre valeur est trop basse !")

				else:
					break

			except Exception:
				print("Erreur ! Donnez incoerente !!")

		result = 100 - 100 * (tCompreser / tNonCompreser)
		clear()
		print(titre)
		print(f"Taut de compresion de : {result:.3} % ")
		input()
		break









while True:
	clear()
	print(titre)
	print("que voulez vous calculer ?")
	
	print("\nretirer une une couleur            -> 1")
	print("Calculer le pois d'une image en PX -> 2")
	print("calculer taut de compresion        -> 3")

	try:
		user = int(input(": "))

		if user == 1:
			rgba()

		if user == 2:
			poisImage()

		if user == 3:
			tauxCompretion()

	except Exception:
		print("Erreur ! Donnez incoerente !!")

	



		
		
		










input()

