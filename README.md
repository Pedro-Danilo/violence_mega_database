# Mega Base de Datos sobre Violencia y Condiciones Socioeconómicas

## Descripción del Proyecto
Este repositorio contiene una base de datos relacional diseñada para consolidar datos socioeconómicos y registros de violencia en Colombia, diseñada con trazabilidad de la fuente y georreferenciación de los datos. La base de datos es uno de los productos de un proyecto de investigación titulado *"Violencia en el Cauca (2019-2023): Análisis mediante Técnicas de Machine Learning"*. 

El objetivo es proporcionar una herramienta para analizar la relación entre variables socioeconómicas y la violencia, utilizando técnicas de Machine Learning.

## Contenido del Repositorio

### Estructura del Proyecto
```plaintext
data_base/
├── data/                  # Archivos CSV con datos de cada tabla
├── documentation/         # Documentos complementarios (diccionario de datos, descripciones de tablas)
├── notebooks_etl/         # Cuadernos Jupyter para la transformación de datos
├── .gitattributes         # Configuración de Git LFS
├── FILES.md               # Lista de archivos grandes con enlaces a Google Drive
├── README.md              # Documentación del proyecto
└── schema.sql             # Esquema SQL de la base de datos
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
git clone https://github.com/Pedro-Danilo/violence_mega_database.
cd violence_mega_database
git lfs install
```
## 2.  Acceso a los Datos

Dado el tamano de algunos archivos para subirlos al repositorio se gestionaron con Git LFS y con google drive.

### Archivos Gestionados con Git LFS
Los siguientes archivos están en el directorio `data/` y son gestionados con **Git LFS**:

- `data/crime_news_fiscalia.csv`
- `data/health_insurance_affiliated_adres.csv`
- `data/municipalities_dane.csv`
- `data/non_fatal_injuries_med_legal.csv`
- `data/sisben_iv_hogares_dnp.csv`

Para asegurarte de descargar estos archivos correctamente:
1. Instala **Git LFS**:
   ```bash
   git lfs install
   ```
2. Los archivos gestionados con LFS se descargarán automáticamente al clonar el repositorio.

---

### Archivos Disponibles en Google Drive
Los archivos de datos adicionales están disponibles en Google Drive. Puedes descargarlos usando los siguientes enlaces:

1. [crime_news_fiscalia.csv](https://drive.google.com/file/d/1yXtYgUxwJ34sgGNFG7J8YU33uZqevVFT/view?usp=sharing)
2. [health_insurance_affiliated_adres.csv](https://drive.google.com/file/d/1UcPjHgSN7W6Y7A5LRYJAP_foVBrYW4MH/view?usp=sharing)
3. [municipalities_dane.csv](https://drive.google.com/file/d/116MOPITIjJa86abf0iVR6m8qdUGd7yEp/view?usp=sharing)
4. [non_fatal_injuries_med_legal.csv](https://drive.google.com/file/d/1Nz-cDztBFIpQiy9_5WIT98Hlyad_gVIA/view?usp=sharing)
5. [sisben_iv_hogares_dnp.csv](https://drive.google.com/file/d/1fd7oi2p48StKLm7KKY4YEWbtkHH7DOJ9/view?usp=sharing)
6. [File 6](https://drive.google.com/file/d/1ikmBPpAi91uFRpKANU3TtZ62i20FpcK3/view?usp=sharing)
7. [File 7](https://drive.google.com/file/d/1iEyptyaTpt3d0rA7L3pc-16To11EKDJs/view?usp=sharing)
8. [File 8](https://drive.google.com/file/d/1be0SMh7NKwF2nUwvxgUmcAHVynppOQuP/view?usp=sharing)
9. [File 9](https://drive.google.com/file/d/1PQvw8rMOO_QF_X2F7BlxeaCbadDJidKW/view?usp=sharing)

Descarga los archivos manualmente y colócalos en la carpeta `data/`.

---

### 3. Configurar PostgreSQL
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

### 4. Importar los Datos a la base de datos
Es importante respetar el siguiente orden de carga debido a las relaciones entre tablas:

1. **Tablas independientes**:
   - `data_source`
   - `departments_dane`
   - `municipalities_dane`
2. **Tablas dependientes**:
   - Todas las demás tablas en el directorio `data/`.

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