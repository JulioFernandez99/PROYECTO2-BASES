import pandas as pd
from datetime import datetime

def generate_tipo_cuenta():
    # Datos de tipos de cuenta
    tipos_cuenta = {
        "id_tipo_cuenta": [1, 2, 3, 4, 5],
        "tipo_cuenta": [
            "Ahorro", 
            "Monetaria", 
            "Corriente", 
            "Inversión", 
            "Plazo Fijo"
        ],
        "fecha_creacion": [datetime.now() for _ in range(5)],
        "fecha_actualizacion": [datetime.now() for _ in range(5)]
    }

    # Crear DataFrame y guardar en CSV
    df = pd.DataFrame(tipos_cuenta)
    df.to_csv("tipo_cuenta.csv", index=False)
    print("CSV generado para la tabla tipo_cuenta con 5 registros.")

if __name__ == "__main__":
    generate_tipo_cuenta()
