import pandas as pd
from datetime import datetime

def generate_roles(num_roles):
    roles_data = {
        "id_rol": [],
        "rol": [],
        "fecha_creacion": [],
        "fecha_actualizacion": []
    }

    # Generar roles de ejemplo
    role_names = [f"Rol_{i + 1}" for i in range(num_roles)]  # Ejemplo de nombres de roles

    for i in range(num_roles):
        roles_data["id_rol"].append(i + 1)  # ID de rol del 1 al n
        roles_data["rol"].append(role_names[i])  # Asignar nombre de rol
        roles_data["fecha_creacion"].append(datetime.now())  # Fecha de creación actual
        roles_data["fecha_actualizacion"].append(datetime.now())  # Fecha de actualización actual

    # Crear DataFrame y guardar en CSV
    df = pd.DataFrame(roles_data)
    df.to_csv("rol.csv", index=False)
    print(f"CSV generado para la tabla rol con {num_roles} registros.")

if __name__ == "__main__":
    num_roles = 80  # Número de roles a generar
    generate_roles(num_roles)
