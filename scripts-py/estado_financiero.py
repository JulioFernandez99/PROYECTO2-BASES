import pandas as pd
from datetime import datetime, timedelta
import random

def generate_estado_financiero(n, num_agencias):
    estado_financiero_data = {
        "id_estado_financiero": [],
        "id_agencia": [],
        "fecha": [],
        "ingresos": [],
        "gastos": [],
        "resultado_neto": [],
        "solvencia": [],
        "punto_equilibrio": [],
        "quiebra": [],
        "fecha_creacion": [],
        "fecha_actualizacion": []
    }

    for i in range(1, n + 1):
        estado_financiero_data["id_estado_financiero"].append(i)
        estado_financiero_data["id_agencia"].append(random.randint(1, num_agencias))  # ID de agencia entre 1 y num_agencias
        estado_financiero_data["fecha"].append(datetime.now() - timedelta(days=random.randint(0, 365)))  # Fecha aleatoria dentro del último año
        ingresos = round(random.uniform(10000.00, 50000.00), 2)  # Ingresos aleatorios entre 10000.00 y 50000.00
        gastos = round(random.uniform(5000.00, 30000.00), 2)  # Gastos aleatorios entre 5000.00 y 30000.00
        estado_financiero_data["ingresos"].append(ingresos)
        estado_financiero_data["gastos"].append(gastos)
        estado_financiero_data["resultado_neto"].append(ingresos - gastos)  # Resultado neto
        estado_financiero_data["solvencia"].append(round(random.uniform(1.0, 5.0), 2))  # Solvencia aleatoria entre 1.0 y 5.0
        estado_financiero_data["punto_equilibrio"].append(random.choice(['Y', 'N']))  # Punto de equilibrio (Y/N)
        estado_financiero_data["quiebra"].append(random.choice(['Y', 'N']))  # Quiebra (Y/N)
        estado_financiero_data["fecha_creacion"].append(datetime.now())
        estado_financiero_data["fecha_actualizacion"].append(datetime.now())

    # Crear DataFrame y guardar en CSV
    df = pd.DataFrame(estado_financiero_data)
    df.to_csv("estado_financiero.csv", index=False)
    print(f"CSV generado para la tabla estado_financiero con {n} registros.")

if __name__ == "__main__":
    num_registros = int(input("¿Cuántos registros de estado financiero deseas generar? "))  # Solicitar al usuario cuántos registros quiere
    num_agencias = 10  # Cambia este número según la cantidad de agencias que tengas
    generate_estado_financiero(num_registros, num_agencias)
