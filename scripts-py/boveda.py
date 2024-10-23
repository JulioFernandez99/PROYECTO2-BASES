import pandas as pd
import random
from datetime import datetime

def generate_boveda(num_registros):
    # Generación de datos aleatorios para la tabla boveda
    bovedas = {
        "id_boveda": list(range(1, num_registros + 1)),  # ID de bodega de 1 a n
        "fondos_disponibles": [round(random.uniform(1000.0, 50000.0), 2) for _ in range(num_registros)],  # Fondos entre 1000 y 50000
        "fecha_creacion": [datetime.now() for _ in range(num_registros)],  # Fecha de creación
        "fecha_actualizacion": [datetime.now() for _ in range(num_registros)],  # Fecha de actualización
    }

    # Crear DataFrame y guardar en CSV
    df = pd.DataFrame(bovedas)
    df.to_csv("boveda.csv", index=False)
    print(f"CSV generado para la tabla boveda con {num_registros} registros.")

if __name__ == "__main__":
    num_registros = int(input("¿Cuántos registros de boveda deseas crear? "))
    generate_boveda(num_registros)
