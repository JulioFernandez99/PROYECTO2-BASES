import pandas as pd
from datetime import datetime, timedelta
import random

def generate_tarjetas_credito(num_tarjetas, num_clientes):
    tarjetas_data = {
        "id_tarjeta_cr": [],
        "id_cliente": [],
        "num_tarjeta": [],
        "limite_credito": [],
        "saldo_actual": [],
        "fecha_emision": [],
        "fecha_expiracion": [],
        "fecha_corte": [],
        "dia_ciclo": [],
        "id_estado_tarjeta": [],
        "fecha_creacion": [],
        "fecha_actualizacion": []
    }

    # Generar datos de tarjetas de crédito
    for i in range(num_tarjetas):
        tarjetas_data["id_tarjeta_cr"].append(i + 1)  # ID de tarjeta del 1 al n
        tarjetas_data["id_cliente"].append(random.randint(1, num_clientes))  # ID de cliente aleatorio
        tarjetas_data["num_tarjeta"].append(random.randint(1000000000000000, 9999999999999999))  # Número de tarjeta
        tarjetas_data["limite_credito"].append(round(random.uniform(1000, 10000), 2))  # Limite de crédito
        tarjetas_data["saldo_actual"].append(round(random.uniform(0, 10000), 2))  # Saldo actual
        tarjetas_data["fecha_emision"].append(datetime.now() - timedelta(days=random.randint(30, 365)))  # Fecha de emisión aleatoria
        tarjetas_data["fecha_expiracion"].append(tarjetas_data["fecha_emision"][-1] + timedelta(days=365))  # Fecha de expiración 1 año después
        tarjetas_data["fecha_corte"].append(tarjetas_data["fecha_emision"][-1] + timedelta(days=random.randint(25, 30)))  # Fecha de corte
        tarjetas_data["dia_ciclo"].append(random.randint(1, 28))  # Día del ciclo (1 a 28)
        tarjetas_data["id_estado_tarjeta"].append(random.randint(1, 5))  # ID de estado de tarjeta (1 a 5)
        tarjetas_data["fecha_creacion"].append(datetime.now())  # Fecha de creación actual
        tarjetas_data["fecha_actualizacion"].append(datetime.now())  # Fecha de actualización actual

    # Crear DataFrame y guardar en CSV
    df = pd.DataFrame(tarjetas_data)
    df.to_csv("tarjeta_credito.csv", index=False)
    print(f"CSV generado para la tabla tarjeta_credito con {num_tarjetas} registros.")

if __name__ == "__main__":
    try:
        num_tarjetas = int(input("¿Cuántos registros de tarjetas de crédito deseas generar? "))
        num_clientes = int(input("¿Cuántos clientes existen en total? "))  # Pedir número de clientes
        if num_tarjetas > num_clientes:
            print("El número de registros de tarjetas de crédito no puede ser mayor que el número de clientes.")
        else:
            generate_tarjetas_credito(num_tarjetas, num_clientes)
    except ValueError:
        print("Por favor, ingresa un número válido.")
