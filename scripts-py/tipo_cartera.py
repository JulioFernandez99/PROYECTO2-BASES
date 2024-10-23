import pandas as pd
from datetime import datetime

def generate_tipo_cartera():
    # Datos de tipos de cartera
    tipos_cartera = {
        "id_tipo_cartera": [1, 2],
        "tipo_cartera": ["Cartera Activa", "Cartera Pasiva"],
        "fecha_creacion": [datetime.now(), datetime.now()],
        "fecha_actualizacion": [datetime.now(), datetime.now()]
    }

    # Crear DataFrame y guardar en CSV
    df = pd.DataFrame(tipos_cartera)
    df.to_csv("tipo_cartera.csv", index=False)
    print("CSV generado para la tabla tipo_cartera con 2 registros.")

if __name__ == "__main__":
    generate_tipo_cartera()
