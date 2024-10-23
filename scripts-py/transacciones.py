import pandas as pd
import random
from datetime import datetime, timedelta

def generate_transaccion(num_registros):
    # Generación de datos aleatorios para la tabla transaccion
    transacciones = {
        "id_transaccion": list(range(1, num_registros + 1)),  # ID de transacción de 1 a n
        "id_cliente": list(range(1, num_registros + 1)),  # IDs de clientes de 1 a n
        "id_cuenta": list(range(1, num_registros + 1)),   # IDs de cuentas de 1 a n
        "id_agencia": random.choices(range(1, 11), k=num_registros),    # Permitir duplicados (1-10)
        "id_prestamo": random.choices(range(1, 501), k=num_registros),   # Permitir duplicados (1-500)
        "cuenta_origen": random.choices(range(1, num_registros + 1), k=num_registros), # Permitir duplicados
        "cuenta_destino": random.choices(range(1, num_registros + 1), k=num_registros),# Permitir duplicados
        "id_tipo_transaccion": random.choices(range(1, 6), k=num_registros), # Asumiendo que hay 5 tipos de transacción
        "monto": [round(random.uniform(1.0, 10000.0), 2) for _ in range(num_registros)], # Monto entre 1 y 10000
        "fecha": [datetime.now().date() - timedelta(days=random.randint(0, 30)) for _ in range(num_registros)], # Fecha en el último mes
        "hora": [datetime.now().time() for _ in range(num_registros)],  # Hora actual
        "descripcion": [f"Transacción #{i}" for i in range(1, num_registros + 1)],  # Descripción de la transacción
        "id_empleado": random.choices(range(1, 101), k=num_registros),  # Permitir duplicados (1-100)
        "id_rol": random.choices(range(1, 81), k=num_registros),  # Permitir duplicados (1-80)
        "fecha_creacion": [datetime.now() for _ in range(num_registros)],  # Fecha de creación
        "fecha_actualizacion": [datetime.now() for _ in range(num_registros)],  # Fecha de actualización
    }

    # Crear DataFrame y guardar en CSV
    df = pd.DataFrame(transacciones)
    df.to_csv("transaccion.csv", index=False)
    print(f"CSV generado para la tabla transaccion con {num_registros} registros.")

if __name__ == "__main__":
    num_registros = int(input("¿Cuántos registros de transacción deseas crear? "))
    generate_transaccion(num_registros)
