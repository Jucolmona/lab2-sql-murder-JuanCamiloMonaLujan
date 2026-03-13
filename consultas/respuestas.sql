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

-- 3 Revisar tabla get_fit_now_member para encontrar el socio gold que fue al gimnasio
SELECT *
FROM get_fit_now_member              
WHERE id LIKE "48Z%" AND membership_status = 'gold'        

-- 4 Se busca en la tabla facebook_event_checkin para encontrar el evento que asistieron los dos sopechosos
SELECT * 
FROM facebook_event_checkin   
WHERE person_id IN (28819, 67318)

-- 5 Insertar la solución en la tabla solucion tentativa
INSERT INTO solution VALUES (1, 'Jeremy Bowers');     
        SELECT value FROM solution;

-- 6 Buscar en la tabla entrevista para encontrar el testimonio del sospechoso Jeremy Bowers
SELECT *
FROM interview             
WHERE person_id = 67318

-- 7 Query para unir las pistas dadas por el asesino para encontrar al autor del crimen
SELECT fe.event_id, fe.event_name, fe.date, 
        p.id, p.name, 
        dl.age, dl.hair_color, dl.car_model, dl.car_make,
        i.annual_income
FROM facebook_event_checkin AS fe
JOIN person AS p ON p.id = fe.person_id
JOIN drivers_license AS dl ON dl.id = p.license_id
JOIN income AS i ON i.ssn = p.ssn
WHERE fe.event_name LIKE 'SQL%' AND 
fe.date BETWEEN 20171201 AND 20171231 AND 
dl.hair_color = 'red' AND
dl.car_make = 'Tesla' 

-- 8 Insertar la solución del autor del crimen
INSERT INTO solution VALUES (1, 'Miranda Priestly');
        
        SELECT value FROM solution;