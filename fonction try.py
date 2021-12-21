
import os
clear = lambda: os.system('cls')

def cjeck():
	while True:
		clear()
		print ("Entre un chifre supreieur a 5")
		try:
			user = int(input(": "))
			if user > 5:
				break
		
		except Exception:
			print("Ereuure de saisi")
	return user
	boucle(user)


def boucle(x):
	for i in range(x):
		print("B")



cjeck()


print("GG", user)




input()


