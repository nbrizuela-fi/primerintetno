
def saludo_10():
    for i in range(10):
        print(f"holaaa mundo {i}")


def saluda_con_nombre(nombre: str, iterado: int):
    """ funcion para saludar iterado veces """
    for i in range(iterado):
        print(nombre)


def main():
    nombre: str = input("ingresa tu nombre: ")

    cantidad: int = int(input("ingresa las veces de tu sludo: "))
    saluda_con_nombre(nombre, cantidad)


main()
