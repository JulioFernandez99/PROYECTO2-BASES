import pandas as pd
from datetime import datetime

def generate_tipo_transaccion():
    # Datos de tipos de transacción
    tipos_transaccion = {
        "id_tipo_transaccion": [1, 2, 3, 4, 5],
        "tipo_transaccion": [
            "Depósito", 
            "Retiro", 
            "Transferencia", 
            "Pago", 
            "Consulta"
        ],
        "fecha_creacion": [datetime.now() for _ in range(5)],
        "fecha_actualizacion": [datetime.now() for _ in range(5)]
    }

    # Crear DataFrame y guardar en CSV
    df = pd.DataFrame(tipos_transaccion)
    df.to_csv("tipo_transaccion.csv", index=False)
    print("CSV generado para la tabla tipo_transaccion con 5 registros.")

if __name__ == "__main__":
    generate_tipo_transaccion()
