
# API REST Inspirada en Pokémon - Edición Provincias Españolas

## Descripción

Este proyecto es una API REST fan-made inspirada en el universo Pokémon, con una vuelta de tuerca creativa: las criaturas están inspiradas en las diversas provincias españolas. Este proyecto es puramente un fan-made, creado por y para fans con fines educativos y de entretenimiento, sin ánimo de lucro.

La API permite a los usuarios registrarse, iniciar sesión y gestionar sus propias criaturas inspiradas en las características únicas de cada provincia española. Desde la cultura, la geografía hasta las leyendas locales, cada criatura refleja la esencia de su provincia.

## Características

- **Registro y Autenticación de Usuarios:** Para interactuar con la API y gestionar las criaturas, los usuarios deben registrarse y autenticarse. Utilizamos JWT (JSON Web Tokens) para asegurar la autenticación y proteger las rutas.
- **Gestión de Criaturas:** Los usuarios pueden crear, editar y eliminar sus criaturas inspiradas en las provincias españolas.
- **Base de Datos MySQL:** El proyecto utiliza MySQL como sistema de gestión de base de datos. Las tablas principales son `users` para la gestión de usuarios y `pokemon` para la gestión de las criaturas.

## Instalación y Configuración

### Requisitos Previos

Asegúrate de tener MySQL instalado y configurado en tu entorno local. Además, necesitarás Node.js para ejecutar el servidor de la API.

## Instalación

### Paso 1: Clonar el Repositorio

```bash
git clone https://github.com/<tu-usuario>/tu-proyecto-api-rest.git
cd tu-proyecto-api-rest

### Paso 2: Base de Datos

Para importar la base de datos MySQL proporcionada con el proyecto, ejecuta el siguiente comando en tu terminal. Asegúrate de reemplazar `usuario`, `nombre_de_tu_base_de_datos`, y `ruta/a/tu/archivo.sql` con tus datos específicos

### Paso 3: Instalar Dependencias

Para instalar todas las dependencias necesarias del proyecto, ejecuta el npm install en tu terminal dentro del directorio del proyecto.
Este comando leerá el archivo `package.json` y descargará todas las dependencias listadas en él.

### Paso 4: Configurar Variables de Entorno

Necesitas configurar las variables de entorno para tu proyecto. Comienza por copiar el archivo de ejemplo `.env.example` a un nuevo archivo llamado `.env`:

### Paso 5: Iniciar el Servidor con Nodemon

Para facilitar el desarrollo y permitir que el servidor se reinicie automáticamente cada vez que hagas cambios en el código, vamos a utilizar Nodemon. Si aún no tienes Nodemon instalado globalmente en tu sistema, puedes instalarlo con el siguiente comando: npm install -g nodemon

Con Nodemon instalado, inicia el servidor ejecutando:nodemon index.js

Nodemon buscará el archivo principal especificado en tu `package.json` (usualmente `index.js` o `server.js`) y lanzará el servidor. Cualquier cambio en los archivos del proyecto provocará un reinicio automático del servidor, facilitando el proceso de desarrollo.

Ahora, el servidor debería estar corriendo y listo para recibir peticiones, mejorando tu flujo de trabajo al no tener que reiniciar manualmente el servidor tras cada cambio.

Proyecto realizado por Alfredo Alberruche para la asignatura Desarrollo Web en Entorno Cliente
** https://blog.logrocket.com/build-rest-api-node-express-mysql/ **
