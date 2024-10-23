import pandas as pd
import random
from datetime import datetime

def generate_agencia(n):
    agencia_data = {
        "id_agencia": [],
        "nombre": [],
        "tipo_agencia": [],
        "telefono": [],
        "id_municipio": [],
        "id_tipo_sucursal": [],
        "id_estado_financiero": [],
        "id_boveda": [],
        "fecha_creacion": [],
        "fecha_actualizacion": []
    }

    tipos_agencia = ["Oficina", "Sucursal", "Agencia"]

    for i in range(n):
        id_agencia = i + 1  # Iniciar desde 1
        agencia_data["id_agencia"].append(id_agencia)
        agencia_data["nombre"].append(f"Agencia {id_agencia}")  # Cambiar el nombre
        agencia_data["tipo_agencia"].append(random.choice(tipos_agencia))
        agencia_data["telefono"].append(f"123456{id_agencia}")  # Teléfono modificado
        agencia_data["id_municipio"].append(random.randint(1, 340))  # ID de municipio limitado entre 1 y 340
        agencia_data["id_tipo_sucursal"].append(random.randint(1, 2))  # ID de tipo sucursal limitado entre 1 y 2
        agencia_data["id_estado_financiero"].append(id_agencia)  # ID de estado financiero igual a id_agencia
        agencia_data["id_boveda"].append(id_agencia)  # ID de boveda igual a id_agencia
        agencia_data["fecha_creacion"].append(datetime.now())
        agencia_data["fecha_actualizacion"].append(datetime.now())

    pd.DataFrame(agencia_data).to_csv("agencia.csv", index=False)
    print("CSV generado para la tabla agencia.")

if __name__ == "__main__":
    n = int(input("¿Cuántos registros deseas generar para la tabla agencia? "))
    generate_agencia(n)
