def saludo_10():
    for i in range(10):
        print(f"holaaa mundo {i}")


def saluda_con_nombre(nombre: str, iterado: int):
    for i in range(iterado):
        print(nombre)


def main():
    nombre = input("ingresa tu nombre: ")

    cantidad = int(input("ingresa las veces de tu sludo: "))
    saluda_con_nombre(nombre, cantidad)


main()
