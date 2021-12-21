
import os
clear = lambda: os.system('cls') #pour clear le chat




def valeur_numerique(demande): #permet de recuperer les int de l'utilisateur en adapten le txt
	while True:
		clear()
		print(demande,end='')

		try:
			l = int(input(": "))
			if l < 1:
				print("Entre un chiffre plus grand")
				input("Pause ")
			else:
				break
		
		except Exception:
			print("Entre une valeur numerique")
			input("Pause")
	return l


def caractt(prems_segon): #recuperation des caractair
	while True:
		print(f"entre le {prems_segon} carractaire de ton drapeau ",end='')

		try:
			caract = input(": ")
			if caract == "":
				print("valeur nul")
				input("Pause")
			if len(caract) >= 2:
				print("un sel caractaire et suporter")
				input("Pause")
			else:
				break

		except Exception:
			print("valeur imposible")
			input("Pause")
	return caract

		


def boucle(h,l1,l2,caract1,caract2,): # gener le drapeau
	for i in range(h):
		for j in range(l1):
			print(caract1,end='')
		for k in range(l2):
			print(caract2,end='')
		print()



def pair_impair(longueur): #verifi pair impaire

	cont = 0 #conaitre ci impaire ou non
	if longueur% 2 == 1:
		cont+=1

	longueur = longueur // 2

	longueur = longueur + cont
	return longueur



#------------------------ les appel de fontion
demande = "Entre la longueur du drapeu"

longeur = valeur_numerique(demande)

demande = "Entre la hauteur du drapeau"

hauteur = valeur_numerique(demande)


longueur1 = pair_impair(longeur)

longueur2 = longeur // 2

time = "premier"

caract1 = caractt(time)

time = "deuxiemme"

caract2 = caractt(time)

clear()

print(f"\nLa longeur = : {longeur} la hauteur = : {hauteur}\n")


boucle(hauteur, longueur1, longueur2, caract1, caract2)






input()
