import pandas as pd
from datetime import datetime

def generate_departamentos():
    # Nombres de los departamentos de Guatemala
    departamentos = [
        "Guatemala", "Alta Verapaz", "Baja Verapaz", "Chimaltenango", 
        "Chiquimula", "Escuintla", "Guastatoya", "Huehuetenango", 
        "Izabal", "Jalapa", "San Marcos", "Santa Rosa", 
        "Solalá", "Suchitepéquez", "Totonicapán", "Zacapa",
        "Petén", "Quiché", "Quetzaltenango", "Retalhuleu", 
        "Sacatepéquez", "San Juan Sacatepéquez"
    ]

    departamento_data = {
        "id_departamento": [],
        "nombre": [],
        "fecha_creacion": [],
        "fecha_actualizacion": []
    }

    for i, nombre in enumerate(departamentos, start=1):  # Enumerar desde 1
        departamento_data["id_departamento"].append(i)
        departamento_data["nombre"].append(nombre)
        departamento_data["fecha_creacion"].append(datetime.now())
        departamento_data["fecha_actualizacion"].append(datetime.now())

    pd.DataFrame(departamento_data).to_csv("departamento.csv", index=False)
    print("CSV generado para la tabla departamento.")

if __name__ == "__main__":
    generate_departamentos()
