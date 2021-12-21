import os
clear = lambda: os.system('cls')

print ("hello World")

txt = ("""

          _______  _        _        _______ 
|\     /|(  ____ \( \      ( \      (  ___  )
| )   ( || (    \/| (      | (      | (   ) |
| (___) || (__    | |      | |      | |   | |
|  ___  ||  __)   | |      | |      | |   | |
| (   ) || (      | |      | |      | |   | |
| )   ( || (____/\| (____/\| (____/\| (___) |
|/     \|(_______/(_______/(_______/(_______)                                  
	""")

print(txt)

print("entre les chifres")

test = input()

test1 = input()

print ("exemple + - * /")
oper = input("operater = ")



if oper == "+":
	r = int(test) + int(test1)

if oper == "-":
	r = int(test) - int(test1)

if oper == "*":
	r = int(test) * int(test1)


if oper == "/":
	r = int(test) / int(test1)

clear()

if r < 10:
	print("inferieur de 10")

else:
	print ("le resultat est superieur a 10")


print(r)




input()



