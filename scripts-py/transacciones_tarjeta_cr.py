import pandas as pd
from datetime import datetime, timedelta
import random

def generate_transacciones_tarjeta_cr(num_transacciones, num_tarjetas, num_clientes):
    transacciones_data = {
        "tarjeta_credito_id_tarjeta_cr": [],
        "id_transaccion_tarjeta_cr": [],
        "fecha": [],
        "hora": [],
        "descripcion": [],
        "id_cliente": []
    }

    for i in range(num_transacciones):
        transacciones_data["tarjeta_credito_id_tarjeta_cr"].append(random.randint(1, num_tarjetas))  # ID de tarjeta de crédito aleatorio
        transacciones_data["id_transaccion_tarjeta_cr"].append(i + 1)  # ID de transacción
        fecha_transaccion = datetime.now() - timedelta(days=random.randint(0, 365))  # Fecha aleatoria dentro del último año
        transacciones_data["fecha"].append(fecha_transaccion.date())
        transacciones_data["hora"].append(fecha_transaccion.time())  # Hora aleatoria
        transacciones_data["descripcion"].append(f"Descripción transacción tarjeta CR {i + 1}")  # Descripción ficticia
        transacciones_data["id_cliente"].append(random.randint(1, num_clientes))  # ID de cliente aleatorio

    df = pd.DataFrame(transacciones_data)
    df.to_csv("transacciones_tarjeta_cr.csv", index=False)
    print(f"CSV generado para la tabla transacciones_tarjeta_cr con {num_transacciones} registros.")

if __name__ == "__main__":
    try:
        num_transacciones = int(input("¿Cuántas transacciones de tarjeta de crédito deseas generar? "))
        num_tarjetas = int(input("¿Cuántas tarjetas de crédito existen en total? "))
        num_clientes = int(input("¿Cuántos clientes existen en total? "))
        generate_transacciones_tarjeta_cr(num_transacciones, num_tarjetas, num_clientes)
    except ValueError:
        print("Por favor, ingresa un número válido.")
