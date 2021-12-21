import os
clear = lambda: system.os('cls')



def choix():
	while True:
		clear()
		print("Faite votre choix")
		print("1 -> verifier ci paralelograme")
		print("2 -> inversion du txte")
		print("3 -> conte le nombre de lettre du txte")
		print("4 -> exit")

		try:
			choi = int(input())
			if choi <= 0:
				print("valeur nule !")
				input()
			else:
				break


		except Exception:
			print("valeur imposible !")
			input()
	return choi





def action(choi,txt):
	


	if choi = 1:
		x = txt[::-1]

		print(f"Votre txte a l'endroi : {txt}\nA l'envaire : {x}")




	if choi == 2:

		if txt == x:
			print(f"c'est un paralelograme \nVotre txte : {txt}\nLe paralelograme : {x}")

		else:
			print(f"Ce n'est pas un paralelograme \nVotre txte : {txt}\n A l'envaire donne : {x}")

	if choi == 3:
		x = txt.split()
		x = len(x)
		print(f"Ton mot contien {x} lettres")


	input()





while True:
	clear()
	print("entre une phrase \n: ",end='')
	try:
		txt = input()
		if txt == "":
			print("valeur vide imposible")
			input()
		else:
			break
	
	except Exception:
		print("Entre une valeur juste")
		input()
	
while True:
	choi = choix()

	if choi == 4:
		break

	action(choi,txt)













input
