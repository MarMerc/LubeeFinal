README - Aplicación para manejo de propiedades en una inmobiliaria
Repositorio que contiene una app desarrollada en Vue.js que permite consultar la información de inmuebles. La aplicación se conecta a una API desarrollada en .NET, la cual obtiene los datos necesarios desde una base de datos SQL Server que contiene las siguientes tablas:

Inmuenles: Almacena la informacion pricipal de los inmuebles.
Imagenes: Las distintas imagenes que posee cada inmueble. 

La Estructura del Proyecto
El proyecto se organiza de la siguiente manera:

/RealEstate-Api: Contiene el código fuente de la API desarrollada en .NET.
/RealAstateApp: Contiene la aplicación reslizada en Vue.js.

Configuración y Ejecución
IMPORTANTE
-Importante. Debe previamente correr el script de base de datos, adjuntado (DBRealSQL.sql). 

API (.NET)
Abra la carpeta /ContractsApp en la terminal.
Ejecute el comando dotnet build para compilar el proyecto.
Ejecute el comando dotnet run para iniciar el servidor API.
La API estará disponible posiblemente en http://localhost:5000 (puede variar).

Aplicación Vue.js
Abra la carpeta /Realastateapp en la terminal.
Ejecute el comando npm install para instalar las dependencias.
Ejecute el comando npm run dev para iniciar la aplicación Vue.js.
La aplicación estará disponible posiblemente en http://localhost:8080 (puede variar).

Uso de la Aplicación
La Aplicacion es bastante intuitiva. En la pantalla principal podra acceder a un boton que le dara acceso ala listados de los inmuebles
Desde alli podra clickear cada imagen podra acceder a las distintas funcionalidades.
