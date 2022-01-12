import os
clear = lambda: os.system('cls')
os.system("taskkill /im iexplore.exe")

from random import randrange

# s = selecteur e = exposent m = mantisse

while True:

	s = int(randrange(0,2))
	e_bit_1 = int(randrange(0,2))
	e_bit_2 = int(randrange(0,2))
	e_bit_3 = int(randrange(0,2))
	e_bit_4 = int(randrange(0,2))
	e_bit_5 = int(randrange(0,2))
	e_bit_6 = int(randrange(0,2))
	e_bit_7 = int(randrange(0,2))
	e_bit_8 = int(randrange(0,2))

	m_bit_1 = int(randrange(0,2))
	m_bit_2 = int(randrange(0,2))
	m_bit_3 = int(randrange(0,2))
	m_bit_4 = int(randrange(0,2))



	clear()

	title_1 = """
 	 _   _____   _____   _____        _____   _____   _   _       
	| | | ____| | ____| | ____|      |___  | |  ___| | | | |      
	| | | |__   | |__   | |__            / / | |___  | |_| |      
	| | |  __|  |  __|  |  __|          / /  \___  \ \___  |      
	| | | |___  | |___  | |___         / /    ___| |     | |      
	|_| |_____| |_____| |_____|       /_/    \_____|     |_|
	"""

	title_2 = """
	 _____   _____   __   _   _____   _____        ___   _____   _____   _   _   _____   
	/  ___| | ____| |  \ | | | ____| |  _  \      /   | |_   _| | ____| | | | | |  _  \  
	| |     | |__   |   \| | | |__   | |_| |     / /| |   | |   | |__   | | | | | |_| |  
	| |  _  |  __|  | |\   | |  __|  |  _  /    / / | |   | |   |  __|  | | | | |  _  /  
	| |_| | | |___  | | \  | | |___  | | \ \   / /  | |   | |   | |___  | |_| | | | \ \  
	\_____/ |_____| |_|  \_| |_____| |_|  \_\ /_/   |_|   |_|   |_____| \_____/ |_|  \_\ 
	"""


	title = """
	 _____   _   _____  
	|  _  \ | | |_   _| 
	| |_| | | |   | |   
	|  _  { | |   | |   
	| |_| | | |   | |   
	|_____/ |_|   |_|

	"""

	dec_titre = """
	 _____   _____   _____   _       ___  ___       ___   _      
	|  _  \ | ____| /  ___| | |     /   |/   |     /   | | |     
	| | | | | |__   | |     | |    / /|   /| |    / /| | | |     
	| | | | |  __|  | |     | |   / / |__/ | |   / / | | | |     
	| |_| | | |___  | |___  | |  / /       | |  / /  | | | |___  
	|_____/ |_____| \_____| |_| /_/        |_| /_/   |_| |_____| 

	"""



	mantiss = m_bit_1 + m_bit_2 + m_bit_3 + m_bit_4

	if mantiss == 0:
		m_bit_4 = 1

	exposent = e_bit_1 + e_bit_2 + e_bit_3 + e_bit_4 + e_bit_5 + e_bit_6 + e_bit_7 + e_bit_8

	if exposent == 0:
		e_bit_8 = 1





	print(title_1)
	print()
	print(title_2)

	print(f"LE nouveau coder et le suivent \n\n: {s}|{e_bit_1,e_bit_2,e_bit_3,e_bit_4,e_bit_5,e_bit_6,e_bit_7,e_bit_8}|{m_bit_1,m_bit_2,m_bit_3,m_bit_4}0000000000000000000")
	print("\ns = selecteur e = exposent m = mantisse\n")
	print(" exit : pour quiter\n bit : pour crée un octer\n dec : pour des decimal\n")


	user = input(": ")

	if user.lower() == "bit":
		while True:
			clear()

			bit_1 = int(randrange(0,2))
			bit_2 = int(randrange(0,2))
			bit_3 = int(randrange(0,2))
			bit_4 = int(randrange(0,2))
			bit_5 = int(randrange(0,2))
			bit_6 = int(randrange(0,2))
			bit_7 = int(randrange(0,2))
			bit_8 = int(randrange(0,2))

			bit = bit_1 + bit_2 + bit_3 + bit_4 + bit_5 + bit_6 + bit_7 + bit_8

			if bit == 0:
				bit_8 = 1

			print(title)
			print()
			print(f"Byt : {bit_1, bit_2, bit_3, bit_4, bit_5, bit_6, bit_7, bit_8}")
			print(" \nback = retour en arrière | exit pour quiter\n")
			user = input(": ")

			if user.lower() == "back":
				break

			if user.lower() == "exit":
				break


	if user.lower() == "dec":
		while True:
			clear()
			dec = int(randrange(0,256))

			print(dec_titre)
			print(f"\ndécimal : {dec}\nback = retour | exit pour quiter\n")

			user = input(": ")

			if user.lower() == "back":
				break

			if user.lower() == "exit":
				break


	if user.lower() == "exit":
		break













