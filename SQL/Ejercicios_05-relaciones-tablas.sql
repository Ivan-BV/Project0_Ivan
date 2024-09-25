
-- Ejercicio  1: Encuentra el nombre de las pistas y los títulos de los álbumes a los que pertenecen.
select t."Name" as "Nombre_Pista", a."Title" as "Titulo_Album" from "Track" t inner join "Album" a on t."AlbumId" = a."AlbumId";

-- Ejercicio 2: Lista los nombres de los artistas y los títulos de sus álbumes. Ordena los resultados por artista.
select a."Name" as "Nombre_Artistas", al."Title" as "Titulo_Album" from "Artist" a inner join "Album" al on a."ArtistId" = al."ArtistId" order by a."ArtistId";

-- Ejercicio 3: Encuentra los nombres de los clientes y los totales de sus facturas. Extrae solo los 5 clientes con mayor total.
select concat(c."FirstName", ' ', c."LastName") as "Nombre_Cliente", sum(i."Total") as "Total_Facturas" from "Customer" c inner join "Invoice" i on c."CustomerId" = i."CustomerId" group by "Nombre_Cliente", i."Total" order by i."Total" desc limit 5;

-- Ejercicio 4: Lista los nombres de los empleados y los nombres de los clientes que les han sido asignados.
select concat(e."FirstName", ' ', e."LastName") as "Nombre_Empleado", concat(c."FirstName", ' ', c."LastName") as "Nombre_Cliente_Asignado" from "Employee" e inner join "Customer" c on e."EmployeeId" = c."SupportRepId";

-- Ejercicio 5: Muestra los ID de las facturas y los nombres de las pistas incluidas en esas facturas.
select il."InvoiceId" as "Id_Factura", t."Name" as "Nombre_Pista" from "InvoiceLine" il inner join "Track" t on il."TrackId" = t."TrackId";

-- Ejercicio 6: Encuentra los nombres de los artistas y los géneros de sus pistas.
select ar."Name" as "Nombre_Artista", g."Name" as "Genero" from "Track" t inner join "Album" a on t."AlbumId" = a."AlbumId" inner join "Artist" ar on a."ArtistId" = ar."ArtistId" inner join "Genre" g on t."GenreId" = g."GenreId" group by a2."Name", g."Name";

--  Ejercicio 7: Muestra los nombres de las pistas y el tipo de medio en el que están disponibles.
select t."Name" as "Nombre_Pista", mt."Name" as "Tipo_Medio_Disponible" from "Track" t inner join "MediaType" mt on t."MediaTypeId" = mt."MediaTypeId";

-- Ejercicio 8: Encuentra todas las pistas y, si existen, muestra los nombres de los géneros a los que pertenecen. Incluye también las pistas que no tienen un género asignado.**
select t."Name" as "Nombre_Pista", g."Name" as "Genero" from "Track" t left join "Genre" g on t."GenreId" = g."GenreId";

-- Ejercicio 9: Muestra todos los clientes y, si existen, muestra las facturas que han realizado. Incluye también los clientes que no tienen ninguna factura.
select concat(c."FirstName", ' ', c."LastName") as "Nombre_Cliente", i."InvoiceId" as "Id_Factura" from "Customer" c right join "Invoice" i on c."CustomerId" = i."CustomerId";

-- Ejercico 10: Encuentra todos los álbumes y, si existen, muestra los nombres de los artistas que los crearon. Incluye también los álbumes que no tienen un artista asignado (aunque en este caso en la base de datos de Chinook, todos los álbumes tienen un artista asignado).
select a."Title" as "Titulo_Album", ar."Name" as "Nombre_Artista" from "Album" a left join "Artist" ar on a."ArtistId" = ar."ArtistId";

-- Ejercicio 11: Cuenta cuántas pistas hay en cada género. Ordena los generos en función del número de canciones de mayor a menor.
select g."Name" as "Genero", count(t."TrackId") as "Numero_Pistas" from "Track" t inner join "Genre" g on t."GenreId" = g."GenreId" group by g."Name" order by "Numero_Pistas" desc;

--  Ejercicio 12: Muestra los títulos de los álbumes y la duración total de todas las pistas en cada álbum.
select a."Title" as "Titulo_Album", sum(t."Milliseconds") as "Duracion_Total_Album" from "Album" a inner join "Track" t on a."AlbumId" = t."AlbumId" group by a."Title";

-- Ejercicio 14: Encuentra los nombres de los clientes y el total gastado por cada uno.
select concat(c."FirstName", ' ', c."LastName") as "Nombre_Cliente", sum(i."Total") as "Total_Gastado" from "Customer" c inner join "Invoice" i on c."CustomerId" = i."CustomerId" group by "Nombre_Cliente";

-- Ejercicio 15: Encuentra todos los empleados y, si existen, muestra los nombres de los clientes que tienen asignados. Incluye también los empleados que no tienen clientes asignados.
select concat(e."FirstName", ' ', e."LastName") as "Nombre_Empleado", concat(c."FirstName", ' ', c."LastName") as "Nombre_Cliente_Asignado" from "Employee" e left join "Customer" c on e."EmployeeId" = c."SupportRepId" group by "Nombre_Empleado", "Nombre_Cliente_Asignado";


