import pandas as pd
from datetime import datetime

def generate_clientes(n):
    cliente_data = {
        "id_cliente": [],
        "nombre": [],
        "apellido": [],
        "telefono": [],
        "direccion": [],
        "id_cuenta": [],
        "fecha_creacion": [],
        "fecha_actualizacion": []
    }

    # Generar listas únicas de id_cliente y id_cuenta
    id_cuentas = list(range(1, n + 1))  # Generar n ID únicos para cuentas

    for i in range(n):
        id_cliente = i + 1  # ID único y secuencial comenzando desde 1
        cliente_data["id_cliente"].append(id_cliente)
        cliente_data["nombre"].append(f"nombre{id_cliente}")  # Nombre con formato "nombre{n}"
        cliente_data["apellido"].append(f"apellido{id_cliente}")  # Apellido con formato "apellido{n}"
        cliente_data["telefono"].append(f"123456{id_cliente}")  # Teléfono único
        cliente_data["direccion"].append(f"Dirección {id_cliente}")  # Dirección simple
        cliente_data["id_cuenta"].append(id_cuentas[i])  # Asegurar ID único de cuenta
        cliente_data["fecha_creacion"].append(datetime.now())
        cliente_data["fecha_actualizacion"].append(datetime.now())

    pd.DataFrame(cliente_data).to_csv("cliente.csv", index=False)
    print("CSV generado para la tabla cliente.")

if __name__ == "__main__":
    n = int(input("¿Cuántos registros deseas generar para la tabla cliente? "))
    generate_clientes(n)
