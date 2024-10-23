import pandas as pd
from datetime import datetime
import random

def generate_empleados(n, num_agencias):
    empleado_data = {
        "id_empleado": [],
        "id_agencia": [],
        "nombre": [],
        "id_rol": [],
        "telefono": [],
        "salario": [],
        "id_planilla": [],
        "id_empleado_sup": [],
        "fecha_creacion": [],
        "fecha_actualizacion": []
    }

    # Generar un conjunto de IDs únicos para id_planilla e id_empleado_sup
    id_planilla_options = list(range(1, n + 1))
    id_empleado_sup_options = list(range(1, n + 1))

    for i in range(1, n + 1):
        empleado_data["id_empleado"].append(i)
        empleado_data["id_agencia"].append(random.randint(1, num_agencias))  # ID de agencia entre 1 y num_agencias
        empleado_data["nombre"].append(f"Empleado{i}")  # Nombre como "Empleado1", "Empleado2", ...
        empleado_data["id_rol"].append(random.randint(1, 5))  # ID de rol entre 1 y 5
        empleado_data["telefono"].append(f"123456{i}")  # Teléfono como "1234561", "1234562", ...
        empleado_data["salario"].append(round(random.uniform(2500.00, 10000.00), 2))  # Salario aleatorio entre 2500.00 y 10000.00
        
        # Seleccionar un id_planilla y id_empleado_sup de las opciones disponibles y eliminarlo de la lista
        id_planilla = random.choice(id_planilla_options)
        empleado_data["id_planilla"].append(id_planilla)
        id_planilla_options.remove(id_planilla)  # Eliminar para evitar repeticiones

        id_empleado_sup = random.choice(id_empleado_sup_options)
        empleado_data["id_empleado_sup"].append(id_empleado_sup)
        id_empleado_sup_options.remove(id_empleado_sup)  # Eliminar para evitar repeticiones
        
        empleado_data["fecha_creacion"].append(datetime.now())
        empleado_data["fecha_actualizacion"].append(datetime.now())

    # Crear DataFrame y guardar en CSV
    df = pd.DataFrame(empleado_data)
    df.to_csv("empleado.csv", index=False)
    print(f"CSV generado para la tabla empleado con {n} empleados.")

if __name__ == "__main__":
    num_empleados = int(input("¿Cuántos empleados deseas generar? "))  # Solicitar al usuario cuántos empleados quiere
    num_agencias = 10  # Cambia este número según la cantidad de agencias que tengas
    generate_empleados(num_empleados, num_agencias)
