import pandas as pd
from datetime import datetime
import random

def generate_tarjetas_debito(num_tarjetas, num_clientes):
    tarjetas_data = {
        "id_tarjeta_db": [],
        "id_cliente": [],
        "id_estado_tarjeta": [],
        "fecha_creacion": [],
        "fecha_actualizacion": []
    }

    # Generar datos de tarjetas de débito
    for i in range(num_tarjetas):
        tarjetas_data["id_tarjeta_db"].append(i + 1)  # ID de tarjeta del 1 al n
        tarjetas_data["id_cliente"].append(random.randint(1, num_clientes))  # ID de cliente aleatorio
        tarjetas_data["id_estado_tarjeta"].append(random.randint(1, 5))  # ID de estado de tarjeta (1 a 5)
        tarjetas_data["fecha_creacion"].append(datetime.now())  # Fecha de creación actual
        tarjetas_data["fecha_actualizacion"].append(datetime.now())  # Fecha de actualización actual

    # Crear DataFrame y guardar en CSV
    df = pd.DataFrame(tarjetas_data)
    df.to_csv("tarjeta_debito.csv", index=False)
    print(f"CSV generado para la tabla tarjeta_debito con {num_tarjetas} registros.")

if __name__ == "__main__":
    try:
        num_tarjetas = int(input("¿Cuántos registros de tarjetas de débito deseas generar? "))
        num_clientes = int(input("¿Cuántos clientes existen en total? "))  # Pedir número de clientes
        if num_tarjetas > num_clientes:
            print("El número de registros de tarjetas de débito no puede ser mayor que el número de clientes.")
        else:
            generate_tarjetas_debito(num_tarjetas, num_clientes)
    except ValueError:
        print("Por favor, ingresa un número válido.")
