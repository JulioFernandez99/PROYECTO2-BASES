import pandas as pd
from datetime import datetime, timedelta
import random

def generate_transacciones_tarjeta_db(num_transacciones, num_tarjetas, num_clientes, num_estados_tarjeta):
    transacciones_data = {
        "id_transaccion_db": [],
        "tdebito_cliente_id_cliente": [],
        "tarjeta_debito_id_tarjeta_db": [],
        "fecha": [],
        "hora": [],
        "descripcion": [],
        "tdebito_id_estado_tarjeta_db": []
    }

    for i in range(num_transacciones):
        transacciones_data["id_transaccion_db"].append(i + 1)  # ID de transacción
        transacciones_data["tdebito_cliente_id_cliente"].append(random.randint(1, num_clientes))  # ID de cliente aleatorio
        transacciones_data["tarjeta_debito_id_tarjeta_db"].append(random.randint(1, num_tarjetas))  # ID de tarjeta de débito aleatorio
        fecha_transaccion = datetime.now() - timedelta(days=random.randint(0, 365))  # Fecha aleatoria dentro del último año
        transacciones_data["fecha"].append(fecha_transaccion.date())
        transacciones_data["hora"].append(fecha_transaccion.time())  # Hora aleatoria
        transacciones_data["descripcion"].append(f"Descripción transacción tarjeta DB {i + 1}")  # Descripción ficticia
        transacciones_data["tdebito_id_estado_tarjeta_db"].append(random.randint(1, num_estados_tarjeta))  # ID de estado de tarjeta

    df = pd.DataFrame(transacciones_data)
    df.to_csv("transacciones_tarjeta_db.csv", index=False)
    print(f"CSV generado para la tabla transacciones_tarjeta_db con {num_transacciones} registros.")

if __name__ == "__main__":
    try:
        num_transacciones = int(input("¿Cuántas transacciones de tarjeta de débito deseas generar? "))
        num_tarjetas = int(input("¿Cuántas tarjetas de débito existen en total? "))
        num_clientes = int(input("¿Cuántos clientes existen en total? "))
        num_estados_tarjeta = int(input("¿Cuántos estados de tarjeta existen en total? "))
        generate_transacciones_tarjeta_db(num_transacciones, num_tarjetas, num_clientes, num_estados_tarjeta)
    except ValueError:
        print("Por favor, ingresa un número válido.")
