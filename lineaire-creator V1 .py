import os
from random import randrange
clear = lambda: os.system('cls')
pause = lambda: os.system('pause')


print("\n\n Créateur de ligne est courbe\n\n")


a = int(randrange(9))

x = int(randrange(9))

b = int(randrange(9))

r = int(randrange(9))

m = int(randrange(10))

if m < r:
	a = -a

if m == r:
	x = -x

if m >r:
	b = -b
else:
	pass

if b >= 0:
	plus = "+"
else:
	plus = " "


if r < 1:
	while True:

		print(f"f(x) = {a}")
		User = input("que suis je comme ligne\n: ")

		if User.lower() == "constante" or User.lower() == "constant" or User.lower() == "constente":
			clear()
			print("\n\nBraveau c'est juste\n\n")
			print(f"Dessine la ligne !\n\nf(x) = {a}")
			pause()
			break
		else:
			clear()
	
else:
	pass	

clear()

if r <= 6:
	while True:

		print(f"f(x) = {a} x {plus}{b}")
		User = input("que suis je comme ligne\n: ")

		if User.lower() == "affines" or User.lower() == "afine" or User.lower() == "affine":
			clear()
			print("\n\nBraveau c'est juste\n\n")
			print(f"Dessine la ligne !\n\nf(x) = {a} {x} +{b}")
			pause()
			break
		else:
			clear()	
else:
	pass


clear()

if r <= 7:
	while True:

		print(f"f(x) = {a} {x}")
		User = input("que suis je comme ligne\n: ")

		if User.lower() == "linéaire" or User.lower() == "linéaires" or User.lower() == "lineair" or User.lower() == "lineaire" or User.lower() == "lineair":
			clear()
			print("\n\nBraveau c'est juste\n\n")
			print(f"Dessine la ligne !\n\nf (x) = {a} {x}")
			pause()
			break
		else:
			clear()
else:
	pass


clear()

if r <= 9:
	while True:

		print(f"a x2 +bx +c")
		User = input("que suis je comme fonction ?\n: ")

		if User.lower() == "quoidratique" or User.lower() == "quoidratiqu" or User.lower() == "coidratique" or User.lower() == "coidratic":
			clear()
			print("\n\nBraveau c'est juste\n\n")
			while True:
				print(f"quelle est cette forme de fonction ?\n ")
				quoidra = input(": ")
				
				if quoidra.lower() == "standar" or quoidra.lower() == "standare" or quoidra.lower() == "standard" or quoidra.lower() == "stendard":
					clear()
					break

			while True:
				clear()
				print("\n\nBraveau c'est aussi juste\n\n")
				print(f"ci je tecrit: a (x - x1)(x - x2) quelle est la forme ?\n")
				quoidra_factoriser = input(": ")

				if quoidra_factoriser.lower() == "factoriser" or quoidra_factoriser.lower() == "factorisée" or quoidra_factoriser.lower() == "factorisé":
					clear()
					print("\n\nBraveau c'est aussi juste\n\n")
					
					print(f"\nDessine la courbe\na({plus}{b} {a})({a} {x})\n\n")
					pause()
					break
			pause()
			break
		else:
			clear()
else:
	pass





input()
