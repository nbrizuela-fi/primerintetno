def funcion1(rango: str):
    for i in range(rango):
        print(f"holaaa mundo {i}")


def main():
    rango: int = int(input("ingresa un rago: "))

    funcion1(rango)


main()
