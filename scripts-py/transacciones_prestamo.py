import pandas as pd
from datetime import datetime, timedelta
import random

def generate_transacciones_prestamo(num_transacciones, num_prestamos):
    transacciones_data = {
        "prestamo_id_prestamo": [],
        "id_transaccion_prestamo": [],
        "fecha": [],
        "hora": [],
        "descripcion": []
    }

    for i in range(num_transacciones):
        transacciones_data["prestamo_id_prestamo"].append(random.randint(1, num_prestamos))  # ID de préstamo aleatorio
        transacciones_data["id_transaccion_prestamo"].append(i + 1)  # ID de transacción
        fecha_transaccion = datetime.now() - timedelta(days=random.randint(0, 365))  # Fecha aleatoria dentro del último año
        transacciones_data["fecha"].append(fecha_transaccion.date())
        transacciones_data["hora"].append(fecha_transaccion.time())  # Hora aleatoria
        transacciones_data["descripcion"].append(f"Descripción transacción préstamo {i + 1}")  # Descripción ficticia

    df = pd.DataFrame(transacciones_data)
    df.to_csv("transacciones_prestamo.csv", index=False)
    print(f"CSV generado para la tabla transacciones_prestamo con {num_transacciones} registros.")

if __name__ == "__main__":
    try:
        num_transacciones = int(input("¿Cuántas transacciones de préstamo deseas generar? "))
        num_prestamos = int(input("¿Cuántos préstamos existen en total? "))
        generate_transacciones_prestamo(num_transacciones, num_prestamos)
    except ValueError:
        print("Por favor, ingresa un número válido.")
