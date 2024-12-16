# Mega Base de Datos sobre Violencia y Condiciones Socioeconómicas

## Descripción del Proyecto
Este repositorio contiene una base de datos relacional diseñada para consolidar datos socioeconómicos y registros de violencia en Colombia, diseñada con trazabilidad de la fuente y georreferenciación de los datos. La base de datos es uno de los productos de un proyecto de investigación titulado *"Violencia en el Cauca (2019-2023): Análisis mediante Técnicas de Machine Learning"*. 

El objetivo es proporcionar una herramienta para analizar la relación entre variables socioeconómicas y la violencia, utilizando técnicas de Machine Learning.

## Contenido del Repositorio

### Estructura del Proyecto
```plaintext
data_base/
├── data/                  # Archivos CSV con datos de cada tabla
├── notebooks_etl/         # Cuadernos Jupyter para la transformación de datos
├── schema.sql             # Esquema SQL de la base de datos
├── documentation/         # Documentos complementarios (diccionario de datos, descripciones de tablas)
├── README.md              # Documentación del proyecto
└── LICENSE                # Licencia del repositorio
```

### Archivos Principales
- **data/**: Contiene los archivos CSV exportados desde la base de datos, uno por cada tabla. No incluye tablas de sistema como `geometry_columns`, `geography_columns` y `spatial_ref_sys`, ya que estas se generan automáticamente al habilitar PostGIS.
- **notebooks_etl/**: Cuadernos Jupyter que documentan los pasos de extracción, transformación y carga (ETL).
- **schema.sql**: Script SQL para crear la estructura de la base de datos en PostgreSQL.
- **documentation/**: Incluye el diccionario de datos (`data_dictionary.pdf`) y las descripciones detalladas de las tablas (`table_description.pdf`).
- **README.md**: Instrucciones detalladas para usar el repositorio.

## Requisitos Previos

1. **Software necesario**:
   - PostgreSQL (v13 o superior) con extensión PostGIS.
   - Python 3.8 o superior.
   - Git y Git LFS (para manejar archivos grandes).
2. **Espacio en disco**: Asegúrate de contar con al menos **20 GB** disponibles para almacenar los archivos CSV y los datos importados en PostgreSQL.

## Pasos para Montar la Base de Datos

### 1. Clonar el Repositorio
```bash
git clone https://github.com/Pedro-Danilo/mega_database_project.git
cd mega_database_project
git lfs install
```

### 2. Configurar PostgreSQL
1. Crea una base de datos nueva en PostgreSQL:
   ```sql
   CREATE DATABASE mega_db;
   \c mega_db
   CREATE EXTENSION postgis;
   ```
   > **Nota**: Las tablas de sistema `geometry_columns`, `geography_columns` y `spatial_ref_sys` se crearán automáticamente al habilitar la extensión PostGIS.

2. Ejecuta el script `schema.sql` para crear la estructura de la base de datos:
   ```bash
   psql -U usuario -d mega_db -f schema.sql
   ```

### 3. Importar los Datos
Es importante respetar el siguiente orden de carga debido a las relaciones entre tablas:

1. **Tablas independientes**:
   - `data_source`
   - `departments_dane`
   - `municipalities_dane`
2. **Tablas dependientes**:
   - Todas las demás tablas en el directorio `data/`.

Puedes usar el siguiente script para cargar las tablas en orden:
```bash
#!/bin/bash
DB_NAME="mega_db"
USER="postgres"
HOST="localhost"

# Cargar tablas independientes primero
for file in data_source.csv departments_dane.csv municipalities_dane.csv; do
    TABLE_NAME=$(basename "$file" .csv)
    echo "Importando $TABLE_NAME..."
    psql -U $USER -d $DB_NAME -h $HOST -c "\copy $TABLE_NAME FROM './data/$file' DELIMITER ',' CSV HEADER;"
done

# Cargar las demás tablas
for file in ./data/*.csv; do
    TABLE_NAME=$(basename "$file" .csv)
    if [[ "$TABLE_NAME" != "data_source" && "$TABLE_NAME" != "departments_dane" && "$TABLE_NAME" != "municipalities_dane" ]]; then
        echo "Importando $TABLE_NAME..."
        psql -U $USER -d $DB_NAME -h $HOST -c "\copy $TABLE_NAME FROM '$file' DELIMITER ',' CSV HEADER;"
    fi
done
```

### 4. Validación de la Carga
Realiza consultas básicas para verificar la importación:
```sql
SELECT COUNT(*) FROM nombre_de_tabla;
```

## Actualización de Datos
Si necesitas actualizar los datos:
1. Usa los cuadernos en `notebooks_etl/` para regenerar los archivos CSV.
2. Sigue los pasos de importación descritos anteriormente.

## Notas Importantes
- **Tablas de Sistema de PostGIS**: Las tablas `geometry_columns`, `geography_columns` y `spatial_ref_sys` no necesitan ser exportadas ni importadas, ya que se generan automáticamente al habilitar PostGIS.
- **Git LFS**: Los archivos CSV grandes están gestionados por Git LFS. Asegúrte de instalarlo antes de clonar el repositorio:
  ```bash
  git lfs install
  ```

## Licencia
Este proyecto está bajo la licencia MIT. Consulta el archivo `LICENSE` para más detalles.