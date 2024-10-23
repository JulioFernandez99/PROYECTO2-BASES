import pandas as pd
from datetime import datetime
import random

def generate_cuentas(n):
    cuenta_data = {
        "id_cuenta": [],
        "id_cliente": [],
        "id_tipo_cuenta": [],
        "num_cuenta": [],
        "saldo": [],
        "id_agencia": [],
        "fecha_creacion": [],
        "fecha_actualizacion": []
    }

    id_clientes = list(range(1, n + 1))  # Generar n ID únicos para clientes

    for i in range(n):
        id_cuenta = i + 1  # ID único y secuencial comenzando desde 1
        cuenta_data["id_cuenta"].append(id_cuenta)
        cuenta_data["id_cliente"].append(id_clientes[i])  # Asegurar ID único de cliente
        cuenta_data["id_tipo_cuenta"].append(random.randint(1, 3))  # Suponiendo que hay 3 tipos de cuenta
        cuenta_data["num_cuenta"].append(random.randint(10000000, 99999999))  # Número de cuenta único
        cuenta_data["saldo"].append(round(random.uniform(0, 10000), 2))  # Saldo aleatorio
        cuenta_data["id_agencia"].append(random.randint(1, n))  # ID de agencia aleatorio en rango
        cuenta_data["fecha_creacion"].append(datetime.now())
        cuenta_data["fecha_actualizacion"].append(datetime.now())

    pd.DataFrame(cuenta_data).to_csv("cuenta.csv", index=False)
    print("CSV generado para la tabla cuenta.")

if __name__ == "__main__":
    n = int(input("¿Cuántos registros deseas generar para la tabla cuenta? "))
    generate_cuentas(n)
