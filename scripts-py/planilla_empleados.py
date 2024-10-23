import pandas as pd
from datetime import datetime

def generate_planilla_empleados(num_empleados):
    planilla_data = {
        "id_planilla": [],
        "id_empleado": [],
        "fecha_creacion": [],
        "fecha_actualizacion": []
    }

    for i in range(num_empleados):
        planilla_data["id_planilla"].append(i + 1)  # ID de planilla del 1 al n
        planilla_data["id_empleado"].append(i + 1)  # ID de empleado del 1 al n
        planilla_data["fecha_creacion"].append(datetime.now())
        planilla_data["fecha_actualizacion"].append(datetime.now())

    # Crear DataFrame y guardar en CSV
    df = pd.DataFrame(planilla_data)
    df.to_csv("planilla_empleados.csv", index=False)
    print(f"CSV generado para la tabla planilla_empleados con {num_empleados} registros.")

if __name__ == "__main__":
    num_empleados = int(input("Ingrese el número de empleados para generar en planilla: "))  # Solicitar número de empleados
    generate_planilla_empleados(num_empleados)
