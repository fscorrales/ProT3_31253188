# Talentos Digitales - Trabajo Integrador III
Clonar repositorio o renombrar carpeta al descargar el .zip (quitar el -main)

## Base de datos SQL en (importarla):
assets/data/corrales_fernando.sql

## Credenciales de acceso:
### Credenciales del usuario ADMIN:
 - email: admin@admin.com
 - contraseña: admin

### Credenciales de otro usuario (todos tiene el mismo pass)
 - email: messi@messi.com
 - contraseña: 12345

## Funcionalidades incorporadas en virtud a lo solicitado:
 - Registro Usuario (para la creación de un usuario)
 - Login Usuario (con autentificación)
 - Menu adaptativo según tipo de perfil (Admin o Usuario)
 - Admin y Usuario pueden acceder a `Mis Datos` y modificarlos
 - Admin puede ver (listado de ususarios activos), modificar y eliminar (de forma lógica) usuarios
 - Cierre de Sesión

## Mejoras incorporadas (más allá de lo solicitado):
### Validación de usuarios:
 - **Unificación de validación** de usuarios en un único método dentro del `UsuariosController`
 - **Personalización de mensajes** de error en español y según tipo de error.
 - **En caso de no pasar validación**, los inputs del formulario se recargan con la información previa (de esta forma **se evita cargar todos los inputs de nuevo**)
### Ruteo de vistas:
 - Implementación del método `loadViews` en `UsuariosController` que **evita la repetición de código al cargar vistas**
### Tabla y Vista Agentes (¿catálogo, tal vez?):
 - Incorporación de la **vista Agentes** en el **perfil usuario** por medio de **JavaScript y Datatable** 
 - Las **funcionalidades de la misma aún no han sido incorporadas** a la espera del Trabajo Integrador IV
 - La **tabla aún no fue incorpada a la base de datos** y se mantiene en un **.json separado**.
