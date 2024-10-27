# Consultas simples

### Obtener todos los clientes
```sql
    SELECT * FROM cliente;
```

### Contar el numero de agencias
```sql
    SELECT COUNT(*) AS total_agencias FROM agencia;
```

### Obtener los nombres de todos los empleados
```sql
    SELECT nombre FROM empleado;
```

### Obtener el saldo total de de todas las cuentas
```sql
    SELECT SUM(saldo) AS total_saldo FROM cuenta;
```

### Listar todos los estados de los prestamos
```sql
    SELECT * FROM estado_prestamo;
```
---
<br>
<br>

# Consultas avanzadas

### Obtener la información de los préstamos junto con el nombre del cliente
```sql
    SELECT p.id_prestamo, p.monto_prestamo, c.nombre, c.apellido
    FROM prestamo p
    JOIN cliente c ON p.id_cliente = c.id_cliente;
```

### Listar todas las transacciones junto con la información del cliente y el tipo de transacción
```sql
    SELECT t.id_transaccion, t.monto, c.nombre, c.apellido, tt.tipo_transaccion
    FROM transaccion t
    JOIN cliente c ON t.id_cliente = c.id_cliente
    JOIN tipo_transaccion tt ON t.id_tipo_transaccion = tt.id_tipo_transaccion;
```

### Obtener el saldo de las cuentas junto con el nombre de la agencia
```sql
    SELECT c.num_cuenta, c.saldo, a.nombre AS nombre_agencia
    FROM cuenta c
    JOIN agencia a ON c.id_agencia = a.id_agencia;
```

### Listar todos los empleados junto con el nombre de su supervisor
```sql
    SELECT e.nombre AS empleado, es.nombre AS supervisor
    FROM empleado e
    LEFT JOIN empleado es ON e.id_empleado_sup = es.id_empleado;
```

### Obtener el estado financiero de cada agencia con su nombre
```sql
    SELECT a.nombre AS nombre_agencia, ef.ingresos, ef.gastos, ef.resultado_neto
    FROM estado_financiero ef
    JOIN agencia a ON ef.id_agencia = a.id_agencia;
```
