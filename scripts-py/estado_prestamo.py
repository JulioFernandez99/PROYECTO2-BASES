import pandas as pd
from datetime import datetime

def generate_estado_prestamo(n=5):  # Valor predeterminado de n es 5
    estado_prestamo_data = {
        "id_estado_prestamo": [],
        "estado_prestamo": [],
        "fecha_creacion": [],
        "fecha_actualizacion": []
    }

    estados_posibles = [
        "Aprobado",
        "Rechazado",
        "En proceso",
        "Desembolsado",
        "Cancelado"
    ]

    for i in range(1, n + 1):
        estado_prestamo_data["id_estado_prestamo"].append(i)
        estado_prestamo_data["estado_prestamo"].append(estados_posibles[(i - 1) % len(estados_posibles)])  # Ciclar a través de los estados
        estado_prestamo_data["fecha_creacion"].append(datetime.now())
        estado_prestamo_data["fecha_actualizacion"].append(datetime.now())

    # Crear DataFrame y guardar en CSV
    df = pd.DataFrame(estado_prestamo_data)
    df.to_csv("estado_prestamo.csv", index=False)
    print(f"CSV generado para la tabla estado_prestamo con {n} registros.")

if __name__ == "__main__":
    generate_estado_prestamo()  # Llamar a la función sin argumentos
