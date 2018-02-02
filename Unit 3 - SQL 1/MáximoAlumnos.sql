SELECT MAX(Campo) AS Nº_Alumnos, cName FROM (SELECT COUNT(*) AS Campo, cName FROM college NATURAL JOIN apply NATURAL JOIN student GROUP BY cName) AS Estudiantes;
-- Sacamos el máximo del campo donde están los alumnos

SELECT COUNT(*) AS Campo, cName FROM college NATURAL JOIN apply NATURAL JOIN student GROUP BY cName; -- Cantidad de alumnos por colegio