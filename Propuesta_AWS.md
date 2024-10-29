# Propuesta de AWS

## Arquitectura

Para la propuesta del proyecto utilizando los servicios de AWS por medio de la herramienta <a href="https://calculator.aws/#/" title="">AWS Pricing Calculator</a>

### Amazon RDS for Oracle
* * *
facilita la configuración, operación y escalado de despliegues de bases de datos Oracle en la nube. Oracle Database es un sistema de gestión de bases de datos relacional desarrollado por Oracle. Con Amazon RDS, puedes implementar varias ediciones de Oracle Database en cuestión de minutos, utilizando capacidad de hardware rentable y redimensionable.

### Amazon EC2
* * *
Amazon EC2 ofrece una amplia selección de tipos de instancias optimizadas para distintos casos de uso. Los tipos de instancias incluyen diferentes combinaciones de CPU, memoria, almacenamiento y capacidad de red, lo que te permite elegir la combinación adecuada de recursos para tus aplicaciones.

### Amazon S3
* * *

Amazon Simple Storage Service (Amazon S3) es un servicio de almacenamiento en la nube. Puedes utilizar Amazon S3 para almacenar y recuperar cualquier cantidad de datos en cualquier momento y desde cualquier lugar en internet.

## Configuraciones

## RDS

#### 1. Instancia

    1. Nodos : 4
    2. Instancia: db.m5.large
    3. Utilizacion: 100% utilized/month
    3. Deployment Mode: MultiA-Z
    4. Pricing Mode: On Demand
    5. Licensia: Brindada por AWS
    6. DataBase Edition: Enterprise

Precio: 998.64 USD

### 2. Almacenamiento

    1. Storage RDS instance : Provisioned IOPS SSD(io1)
    2. Provisioning IOPS: 1000
    3. Storage Amount: 200 GB

Precio: 1000 USD

#### 3.RDS Performance Insinghts 

    1. Retencion: 2 months

Precio: 12.48 USD

### 4. Backup Storage

    1. Adicional Backup: 100 GB

Precio: 9.50 USD

## EC2

### Instancia

    1. Tenancy: Dedicated Instances
    2. Sistema Operativo: Linux
    3. Workloads: Constant Usage
    4. Numero de instancias: 3
    5. Opciones de pago: On Demand
    6. Instancia: r5.large

Price: 1753.46 USD


### EBS

    1. Storage for each EC2 instance : GP3
    2. General Purpose SSD (gp3) - IOPS : 3000
    3. General Purpose SSD (gp3) - Throughput: 100 Mbps

Price: 120 UDS

### Detail Monitoring

    1. Enable Monitoring: True

Price: 6.30 USD

### Data Transfer

    1. Inbound Data Transfer : 10TB month
    2. Intra Data Transfer : None
    3. Outbound Data Transfer: 5TB month

Price: 921.60 USD


## S3

### S3 Standar

    1. Standar Storage: 4 TB/month
    2. PUT, COPY, POST, LIST requests to S3 Standard : 1000000 
    3. GET, SELECT, and all other requests from S3 Standard : 1000000
    4. Data returned by S3 Select: 500 GB/month
    5. Data scanned by S3 Select: 500 GB/month

Price: 100.96

### S3 Glacier Flexible Retrieval feature

    1. S3 Glacier Flexible Retrieval storage: 10 GB/month
    2. S3 Glacier Flexible Retrieval Average Object Size: 16 MB
    3. How will data be moved into S3 Glacier Flexible Retrieval?: The specified amount of data is already stored in S3 Glacier Flexible Retrieval
    4. PUT, COPY, POST, LIST requests to S3 Glacier Flexible Retrieval: 1000
    5. Lifecycle Transitions into S3 Glacier Flexible Retrieval: 1000
    6. Restore requests (Standard): 1000 
    7. Restore requests (Expedited): 1000
    8. Restore requests (Bulk): 1000 
    9. Data retrievals (Standard): 500 GB/month
    10. Data retrievals (Expedited): 500 GB/month
    11. Data retrievals (Bulk): 5 TB/month
    12. Provisioned Capacity Units:

Price: 124.15 USD

### Data Transfer

    1. Inbound Data Transfer: 10TB/month
    2. Outbound Data Transfer: 3TB/month

Price: 276.48 USD

# Summary

Monthly cost: 5,323.57 USD
Total 12 months cost:  63,882.84 USD


![Costos](/img/Imagen1.png)
