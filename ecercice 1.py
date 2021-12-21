
#1
def john(): #déclaration fonction nomer john
    print("AAA")# affiche AAA
def marcel(): #fontion nomer marcel 
    print("CCC") #affiche CCC
marcel() #appele fonction macel affiche CCC
john() #appele fonction john affiche AAA


#2
def alpha():#déclaration fonction  alpha
    print("Red ") 
    print("John ")
def story():#déclaration fonction story
    print("AAA ")
def bonjour():#déclaration fonction bonjour
    print("*** ")
bonjour() # affiche "*** "
story()# affiche AAA
alpha()# affiche Red saut_de_ligne John 
bonjour()#affiche "*** "

#3
def toto(par): # nom de fonction toto
    return par + 4 #toto retourne la valeur 4
a = toto(10) # fait une adition de la valeur de base de toto + 10
b = toto(1) # 4 + 1 = 5
print(f"a = {a}") #affiche 14
print(f"b = {b}")#affiche 5



#4
def mono():
    print("A ")
def duo() :
    print("BB ")
def trio() :
    print("CCC ")
def quad() :
    print("DDDD ")
trio()#affiche CCC
for i in range(5):
    mono()# affiche 5 x A
trio() # affiche CCC



#5
def mono():
    print("mono")
def trio():  
    print("trio")
    mono()
trio()# affiche trio et mono
mono() # affiche mono


#6
def mono():
    return 42
a = mono() # a = 42
print(f"john {a}") # a = 42


#7
def mono():
    print("A ")
def duo():
    print("Tic ")
def trio():
    print("Glass ")
    duo()
    duo()
def quad():
    print("One")
    trio()
    print("Over")
    mono()
    print("Time")
print("Begin") # affiche Begin
quad()# affiche One Glass Tic Tic Over A Time
print("End")# affîche End


#8
def foo(par):
    return par * 10 #par = *10
def bar(par):
    return par + 1 #par = + 1
a = foo(3) #3 * 10 = 30
b = bar(3)# b = 3 + 1
c = foo(bar(3)) # c = *10(3+1) =40
d = bar(1 + foo(2)) #+1 (+1 2*10) 22
print(f"a = {a}")
print(f"b = {b}")
print(f"c = {c}")
print(f"d = {d}")


#9
def john(aa, bb):  
    return aa + bb
def lea( aa, bb):
    return aa * bb
def mixer(aa, bb):
    for i in range(aa):  
        bb +=1
    return bb
a = john(3, 4) # aa = 3 bb = 4 aa + bb = 7
b = lea(3, 4)  # aa = 3 bb = 4 aa * bb = 12
c = mixer(3 , 2)# aa = 3 bb = 2 bb = 3 * 2 == 6 c = 6
print(f"a = {a}")#7
print(f"b = {b}")#12
print(f"c = {c}")#6



#10
def monofix():
    return 4
def patate(aaa):
    return aaa * 1000
def john (aa,bb):
    return aa + bb
a = john(patate(3), patate(monofix())) #  (3 * 1000) + (4 * 1000) = 7000
print(f"a = {a}") #7000

#11
import os
clear = lambda: os.system('cls') # importe la commande cls de dos
from math import pi #import pi du modul math
#   mes fonction
#--------------------------------------
def calcul_surface_cercle(reyon):
    return pi*(reyon*reyon)
#$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
print("\n\nCe programme calcule la surface d'un cercle\nQuel est le rayon de votre cercle ?\n")#information pour l'utilisateur
r = float(input("cm: "))#variable pour le reillon
print ("votre cercle a une surface de: " + str(calcul_surface_cercle(r)) +" cm2")#affichage du resulta avec apelle de fonction
input()


#15








