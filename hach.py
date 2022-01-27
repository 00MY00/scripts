import os


if True:
    version = os.system('ver')
    if version == 0:
        os.system('mode con cols=60 lines=30')
        version = "Microsoft"
        clear = lambda: os.system('cls')

if False:
    version = os.system('cat /proc/version')
    if version == 0:
        os.system('resize -s 60 30')
        version = "Linux"
        clear = lambda: os.system('clear')


if False:
    version = os.system('sw_vers')
    if version == 0:
        os.system('resize -s 60 30')
        version = "Mac OS"
        clear = lambda: os.system('clear')


titre = """
    ┌============================================┐
    |                                            |
    |       ██╗  ██╗ █████╗ ███████╗██╗  ██╗     |
    |       ██║  ██║██╔══██╗██╔════╝██║  ██║     |
    |       ███████║███████║███████╗███████║     |
    |       ██╔══██║██╔══██║╚════██║██╔══██║     |
    |       ██║  ██║██║  ██║███████║██║  ██║     |
    |       ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝     |
    └============================================┘
"""


titre_by = """
    ┌======================┐
    |                      |
    |   ██████╗ ██╗   ██╗  |
    |   ██╔══██╗╚██╗ ██╔╝  |
    |   ██████╔╝ ╚████╔╝   |
    |   ██╔══██╗  ╚██╔╝    |
    |   ██████╔╝   ██║     |
    |   ╚═════╝    ╚═╝     |
    └======================┘
"""









def nomm():
    while True:

        clear()
        print("        OS: ",version)
        print(titre)

        print ("entre le nom")

        nom = input(": ")
        if nom.lower() == 'exit':
            break

        total = 0

        ii = len(nom)

        for i in range(ii):
            acsii = nom[i]
            total = ord(acsii) + total


        print (total)


        print (f"le Hash du txt avec modulo 30 =: {total%30}")

        print("\n\n oui ou exit pour quiter\n\n")
        fin = input(": Fin : ")
        if fin.lower() == "oui" or fin.lower() == "exit":
        	break

        nomm()





def chiffre():
    while True:
        clear()
        print("        OS: ",version)
        print(titre)

        print ("selon le modulo le chiffre - 1 = le nombre de posibiliter")
        print("entre le chifre")


        hashe = float(input(": "))
    
        if hashe == "exit":
            break

        print ("mon modulo")

        modulo = float(input(": "))


        print(f"Resulta de {hashe} = : {hashe % modulo}")

    
        print("\n\n oui ou exit pour quiter\n\n")
        fin = input(": Fin : ")
        if fin.lower() == "oui" or fin.lower() == "exit":
        	break

        chiffre()



while True:
    clear()
    print(titre)
    print("        OS: ",version)

    print("\n\n     1 : pour le Hash d'un nom")
    print("     2 : pour le Hash d'un chiffre\n\n")

    user = input("  : ")

    if user.lower() == 'exit':
        clear()
        print(titre_by)
        input()
        break


    if user == '1':
        nomm()

    if user == '2':
        chiffre()




