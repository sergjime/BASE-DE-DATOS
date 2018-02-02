-- El número total de habitantes de cada provincia.

SELECT SUM(numHab) AS nº_Habitantes, provincia.nombre FROM localidad JOIN provincia ON provincia.codigo=localidad.id GROUP BY provincia.nombre;

-- El número total de habitantes de cada comunidad.

SELECT SUM(numHab) AS nº_Habitantes, ca.nombre FROM localidad JOIN provincia ON localidad.codigoProvincia=provincia.codigo JOIN ca ON provincia.codigo=ca.nombre GROUP BY ca.nombre;

-- El número de localidades diferentes que hay en cada provincia indicando también la comunidad a la que pertenece (comunidad, provincia, número de poblaciones).

SELECT nº_localidades, provincia.nombre AS nombre_provincia, ca.nombre AS nombre_ca FROM 
(SELECT COUNT(id) AS nº_localidades, provincia.nombre FROM localidad JOIN ca ON capitalCA=id JOIN provincia ON id=capitalProvincia GROUP BY provincia.nombre)
AS tabla JOIN provincia ON tabla.nombre=provincia.nombre JOIN ca ON provincia.nombre=ca.nombre;