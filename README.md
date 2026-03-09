# lab2-sql-murder-JuanCamiloMonaLujan
## Datos
- **Detective:** Juan Camilo Moná Luján
- **Correo:** jcamilo.mona@udea.edu.co

## Resumen del Caso

## Bitacora de investigación
### Query 1
```
SELECT * FROM crime_scene_report WHERE date=20180115 AND city='SQL City' AND type='murder'
```
### Evidencia

---

### Query 2
```
SELECT * FROM person WHERE address_street_name = "Franklin Ave" AND name LIKE "Annabel%";
```

### Query 3
```
SELECT * FROM interview WHERE person_id = 16371
```
