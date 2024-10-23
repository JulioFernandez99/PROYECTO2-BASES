import pandas as pd
import random
from datetime import datetime

def generate_cartera_clientes(n):
    cartera_data = {
        "id_cartera": [],
        "id_tipo_cartera": [],
        "id_agencia": [],
        "id_cliente": [],
        "fecha_creacion": [],
        "fecha_actualizacion": []
    }

    # Generar listas únicas de id_agencia y id_cliente
    id_agencias = random.sample(range(1, n + 1), n)  # Generar n ID únicos para agencias
    id_clientes = random.sample(range(1, n + 1), n)  # Generar n ID únicos para clientes

    for i in range(n):
        id_cartera = i + 1  # Iniciar desde 1
        cartera_data["id_cartera"].append(id_cartera)
        cartera_data["id_tipo_cartera"].append(random.randint(1, 5))  # Ajusta el rango según sea necesario
        cartera_data["id_agencia"].append(id_agencias[i])  # Asegurar ID único de agencia
        cartera_data["id_cliente"].append(id_clientes[i])  # Asegurar ID único de cliente
        cartera_data["fecha_creacion"].append(datetime.now())
        cartera_data["fecha_actualizacion"].append(datetime.now())

    pd.DataFrame(cartera_data).to_csv("cartera_clientes.csv", index=False)
    print("CSV generado para la tabla cartera_clientes.")

if __name__ == "__main__":
    n = int(input("¿Cuántos registros deseas generar para la tabla cartera_clientes? "))
    generate_cartera_clientes(n)
