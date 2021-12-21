import os
clear = lambda: os.system(cls)



import keyboard



while True:
    if keyboard.read_key() == "w":
        print("|")
        break



while True:
    if keyboard.is_pressed("a"):
        print("<-")
        break

while True:
    if keyboard.is_pressed("d"):
        print("->")
        break

while True:
    if keyboard.is_pressed("s"):
        print("|")
        break


while True:
    if keyboard.is_pressed("space"):
        print("-_-")
        break


        
#keyboard.on_press_key("r", lambda _:print("You pressed r"))







input("pause")



