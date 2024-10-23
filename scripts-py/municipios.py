import pandas as pd
from datetime import datetime

def generate_municipio(n=340):
    # Lista de municipios de Guatemala
    municipios = [
        "Aguacatan", "San Marcos", "Santa Rosa", "Chiquimula", "Jalapa", 
        "Quiche", "Totonicapan", "Quetzaltenango", "Escuintla", "Guatemala", 
        "Retalhuleu", "Solala", "Santa Cruz del Quiche", "San Pedro Sacatepequez", 
        "Chimaltenango", "Baja Verapaz", "Alta Verapaz", "Izabal", "Petén", 
        "Huehuetenango", "San Juan Sacatepequez", "San Miguel Petapa", 
        "Villa Nueva", "Amatitlán", "Mixco", "Guastatoya", "Palencia",
        "San Raymundo", "San José del Golfo", "Villa Canales", "San Vicente Pacaya",
        "San Juan Comalapa", "Sumpango", "San Bartolome Milpas Altas", 
        "San Andrés Itzapa", "San Lucas Sacatepequez", "Santiago Sacatepequez", 
        "Chichicastenango", "Santa María Chiquimula", "San Juan La Laguna", 
        "San Pedro La Laguna", "San Pablo La Laguna", "San Marcos La Laguna", 
        "San Antonio Palopó", "Santa Catarina Palopó", "San Lorenzo", 
        "San Felipe", "San Andrés Xecul", "Tactic", "San Miguel Uspantán", 
        "Cunén", "Nebaj", "Chajul", "San Jerónimo", "Salama", "San Pedro Carchá", 
        "Tierra Nueva", "San Juan Cotzal", "San Rafael Pie de la Cuesta", 
        "Barberena", "La Democracia", "Cuilapa", "Guazacapan", "El Progreso",
        "La Libertad", "Sanarate", "San Agustín Acasaguastlán", "San Antonio La Paz", 
        "San Vicente", "Santa Cruz Barillas", "La Tinta", "San Jorge", 
        "San Pedro Carchá", "San Juan Sacatepequez", "San Pedro Sacatepequez", 
        "San Miguel Chicaj", "Santa Cruz del Quiche", "San Pablo", 
        "San Andrés Itzapa", "Panchimalco", "Guatemala City", "San José",
        # ... (Agregar todos los municipios restantes)
    ]

    municipio_data = {
        "id_municipio": [],
        "nombre": [],
        "direccion": [],
        "codigo_postal": [],
        "id_departamento": [],
        "fecha_creacion": [],
        "fecha_actualizacion": []
    }

    for i in range(n):
        municipio_data["id_municipio"].append(i + 1)
        municipio_data["nombre"].append(municipios[i % len(municipios)])  # Ciclar a través de los municipios
        municipio_data["direccion"].append(f"Dirección {i + 1}")  # Dirección ficticia
        municipio_data["codigo_postal"].append(10000 + i)  # Código postal ficticio
        municipio_data["id_departamento"].append((i % 22) + 1)  # Suponiendo que hay 22 departamentos
        municipio_data["fecha_creacion"].append(datetime.now())
        municipio_data["fecha_actualizacion"].append(datetime.now())

    # Crear DataFrame y guardar en CSV
    df = pd.DataFrame(municipio_data)
    df.to_csv("municipio.csv", index=False)
    print(f"CSV generado para la tabla municipio con {n} registros.")

if __name__ == "__main__":
    generate_municipio()  # Llamar a la función sin argumentos
