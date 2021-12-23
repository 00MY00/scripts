import os
clear = lambda: os.system('cls')

from math import pi #import pi du modul math

#   mes fonction
#--------------------------------------
def calcul_aire_cercle(reyon):
	return pi*(reyon*reyon)

def calcul_perimetr_cercle(reyon):
	return (reyon*reyon)*pi **2

#$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$

		
		




titre = """


	 ██████╗ █████╗ ██╗      ██████╗██╗   ██╗██╗     ███████╗
	██╔════╝██╔══██╗██║     ██╔════╝██║   ██║██║     ██╔════╝
	██║     ███████║██║     ██║     ██║   ██║██║     █████╗  
	██║     ██╔══██║██║     ██║     ██║   ██║██║     ██╔══╝  
	╚██████╗██║  ██║███████╗╚██████╗╚██████╔╝███████╗███████╗
	 ╚═════╝╚═╝  ╚═╝╚══════╝ ╚═════╝ ╚═════╝ ╚══════╝╚══════╝

			        Crée par Kuroakashiro      

"""


by = """


	██████╗ ██╗   ██╗    ██████╗ ██╗   ██╗
	██╔══██╗╚██╗ ██╔╝    ██╔══██╗╚██╗ ██╔╝
	██████╔╝ ╚████╔╝     ██████╔╝ ╚████╔╝ 
	██╔══██╗  ╚██╔╝      ██╔══██╗  ╚██╔╝  
	██████╔╝   ██║       ██████╔╝   ██║   
	╚═════╝    ╚═╝       ╚═════╝    ╚═╝   


"""







erreur = "\nLa valeur entrée est pas valide !!"





while True:
	clear()
	print(titre)

	print("		[ Exit ] = partire")
	print("		[ 1 ]    = surface d'un cercle")
	print("		[ 2 ]    = périmètre d'un cercle")


	user = input("\n\n: ")

	if user == "1":
		while True:
			try:
				clear()
				print(titre)
				print("entrée le reillon du cercle")
				r = float(input("cm: "))
				print ("\n\nvotre cercle a une surface de: " + str(calcul_aire_cercle(r)) +" cm2")
				input("\n\nPause")
				break
			except Exception:
				print(erreur)

		

	if user == "2":

		while True:
			
			try:
				clear()
				print(titre)
				print("entrée le reillon du cercle")
				r = float(input("cm: "))
				print ("\n\nvotre cercle a un périmètre de: " + str(calcul_perimetr_cercle(r)) +" cm2")
				input("\n\nPause")
				break
			except Exception:
				print(erreur)
		

	if user.lower() == "exit":
		break



clear()
print(by)


input("\n\n\n")
