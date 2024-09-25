
/* MIN y MAX */

-- Ejercicio 1: Encontrar la duración mínima de las pistas en milisegundos.
select min("Milliseconds") as "Duracion_Minima" from "Track";

-- Ejercicio 2: Encontrar la duración máxima de las pistas en milisegundos.
select max("Milliseconds") as "Duraion_Maxima" from "Track";

-- Ejercicio 3: Encontrar el precio mínimo de las pistas.
select min("UnitPrice") as "Precio_Minimo" from "Track";

-- Ejercicio 4: Encontrar el precio máximo de las pistas.
select max("UnitPrice") as "Precio_Maximo" from "Track";

-- Ejercicio 5: Encontrar la fecha mínima de la factura.
select min("InvoiceDate") as "Fecha_Minima" from "Invoice";
   
-- Ejercicio 6: Encontrar la fecha máxima de la factura.
select max("InvoiceDate") as "Fecha_Maxima" from "Invoice";
   

/* COUNT y SUM */

-- Ejercicio 7: Contar el número total de pistas.
select count("TrackId") as "Total_Pistas" from "Track";

-- Ejercicio 8: Contar el número de clientes en Brasil.
select count("CustomerId") as "Total_Clientes_Brazil" from "Customer" where "Country" = 'Brazil';

-- Ejercicio 9: Sumar la duración total de todas las pistas en milisegundos.
select sum("Milliseconds") as "Suma_Total" from "Track";
   
-- Ejercicio 10: Contar el número de empleados con el título 'Sales Support Agent'.
select count("EmployeeId") as "Total_Empleados" from "Employee" where "Title" = 'Sales Support Agent';

-- Ejercicio 11: Sumar el total de las cantidades en las facturas.
select sum("Total") as "Total_Facturas" from "Invoice";

/* AVG, STDDEV, VARIANCE */

-- Ejercicio 12: Calcular la duración media de las pistas en milisegundos.
select avg("Milliseconds") as "Duracion_Media" from "Track";

-- Ejercicio 13: Calcular el precio medio de las pistas.
select avg("UnitPrice") as "Precio_Medio" from "Track";

-- Ejercicio 14: Calcular la desviación estándar de la duración de las pistas.
select stddev("Milliseconds") as "Desviacion_Duracion_Pistas" from "Track"; 

-- Ejercicio 15: Calcular la varianza de la duración de las pistas.
select variance("Milliseconds") as "Varianza_Duracion_Pistas" from "Track";

-- Ejercicio 16: Calcular la desviación estándar del precio de las pistas.
select stddev("UnitPrice") as "Desviacion_Precio_Pistas" from "Track";

/* CONCAT */

-- Ejercicio 17: Concatenar el nombre y el apellido de los clientes.
select concat("FirstName", ' ', "LastName") as "Nombre" from "Customer";

