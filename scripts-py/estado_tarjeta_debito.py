import pandas as pd
from datetime import datetime

def generate_estado_tarjeta_debito(n=5):  # Valor predeterminado de n es 5
    estado_tarjeta_debito_data = {
        "id_estado_tarjeta_db": [],
        "estado": [],
        "fecha_creacion": [],
        "fecha_actualizacion": []
    }

    estados_posibles = [
        "Activo",
        "Inactivo",
        "Suspendido",
        "Expirado",
        "Cancelado"
    ]

    for i in range(1, n + 1):
        estado_tarjeta_debito_data["id_estado_tarjeta_db"].append(i)
        estado_tarjeta_debito_data["estado"].append(estados_posibles[(i - 1) % len(estados_posibles)])  # Ciclar a través de los estados
        estado_tarjeta_debito_data["fecha_creacion"].append(datetime.now())
        estado_tarjeta_debito_data["fecha_actualizacion"].append(datetime.now())

    # Crear DataFrame y guardar en CSV
    df = pd.DataFrame(estado_tarjeta_debito_data)
    df.to_csv("estado_tarjeta_debito.csv", index=False)
    print(f"CSV generado para la tabla estado_tarjeta_debito con {n} registros.")

if __name__ == "__main__":
    generate_estado_tarjeta_debito()  # Llamar a la función sin argumentos
