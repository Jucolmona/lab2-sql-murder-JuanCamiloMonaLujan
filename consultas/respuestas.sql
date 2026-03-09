--RESPUESTAS
-- PASO 1 - ENCONTRAR EL REPORTE
SELECT * FROM crime_scene_report WHERE date=20180115 AND city='SQL City' AND type='murder'

-- PASO 2
-- 2.1 Encontrar Id de uno de los testigos
SELECT * FROM person WHERE address_street_name = "Franklin Ave" AND name LIKE "Annabel%";

-- 2.2 Enocntrar la transpcripcion de annabel en la tabla entrevistas
SELECT * FROM interview WHERE person_id = 16371
-- 2.3 Unir tablas de entrevistas y persona donde se de la coincidencia con el segundo testigo que vive en Northwestern Dr
SELECT i.person_id, i.transcript, p.name, p.address_street_name 
FROM interview AS i 
JOIN person AS p ON p.id = i.person_id 
WHERE p.address_street_name = "Northwestern Dr"
