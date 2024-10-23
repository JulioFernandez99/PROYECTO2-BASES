import pandas as pd
import random
from datetime import datetime, timedelta

def generate_prestamos(num_prestamos, num_clientes, num_cuentas, num_agencias, num_estados):
    prestamo_data = {
        "id_prestamo": [],
        "id_cliente": [],
        "id_cuenta": [],
        "id_agencia": [],
        "monto_prestamo": [],
        "tasa_interes": [],
        "fecha_desembolso": [],
        "fecha_vencimiento": [],
        "saldo_pendiente": [],
        "id_estado_prestamo": [],
        "fecha_creacion": [],
        "fecha_actualizacion": []
    }

    for i in range(num_prestamos):
        prestamo_data["id_prestamo"].append(i + 1)  # ID de préstamo del 1 al n
        prestamo_data["id_cliente"].append(random.randint(1, num_clientes))  # ID de cliente aleatorio
        prestamo_data["id_cuenta"].append(random.randint(1, num_cuentas))  # ID de cuenta aleatorio
        prestamo_data["id_agencia"].append(random.randint(1, num_agencias))  # ID de agencia aleatorio
        prestamo_data["monto_prestamo"].append(round(random.uniform(1000, 50000), 2))  # Monto del préstamo aleatorio
        prestamo_data["tasa_interes"].append(round(random.uniform(5, 20), 2))  # Tasa de interés aleatoria
        prestamo_data["fecha_desembolso"].append(datetime.now().date())  # Fecha de desembolso actual
        prestamo_data["fecha_vencimiento"].append((datetime.now() + timedelta(days=random.randint(30, 365))).date())  # Fecha de vencimiento aleatoria
        prestamo_data["saldo_pendiente"].append(round(random.uniform(0, 50000), 2))  # Saldo pendiente aleatorio
        prestamo_data["id_estado_prestamo"].append(random.randint(1, num_estados))  # ID de estado de préstamo aleatorio
        prestamo_data["fecha_creacion"].append(datetime.now())
        prestamo_data["fecha_actualizacion"].append(datetime.now())

    # Crear DataFrame y guardar en CSV
    df = pd.DataFrame(prestamo_data)
    df.to_csv("prestamo.csv", index=False)
    print(f"CSV generado para la tabla prestamo con {num_prestamos} registros.")

if __name__ == "__main__":
    num_prestamos = int(input("Ingrese el número de préstamos a generar: "))  # Solicitar número de préstamos
    num_clientes = int(input("Ingrese el número total de clientes: "))  # Solicitar número total de clientes
    num_cuentas = int(input("Ingrese el número total de cuentas: "))  # Solicitar número total de cuentas
    num_agencias = int(input("Ingrese el número total de agencias: "))  # Solicitar número total de agencias
    num_estados = int(input("Ingrese el número total de estados de préstamo: "))  # Solicitar número total de estados

    generate_prestamos(num_prestamos, num_clientes, num_cuentas, num_agencias, num_estados)
