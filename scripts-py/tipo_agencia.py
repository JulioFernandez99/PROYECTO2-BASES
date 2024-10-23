import pandas as pd
from datetime import datetime

def generate_tipo_agencia():
    # Datos de tipos de agencia
    tipos_agencia = {
        "id_tipo_sucursal": [1, 2],
        "tipo_agencia": ["Sucursal", "Agencia"],
        "fecha_creacion": [datetime.now(), datetime.now()],
        "fecha_actualizacion": [datetime.now(), datetime.now()]
    }

    # Crear DataFrame y guardar en CSV
    df = pd.DataFrame(tipos_agencia)
    df.to_csv("tipo_agencia.csv", index=False)
    print("CSV generado para la tabla tipo_agencia con 2 registros.")

if __name__ == "__main__":
    generate_tipo_agencia()
