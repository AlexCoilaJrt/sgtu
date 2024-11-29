# sgtu

A new Flutter project.
Sistema de Gestión de Títulos Universitarios (SGTU)
Descripción del Proyecto
El Sistema de Gestión de Títulos Universitarios (SGTU) es una aplicación desarrollada en Flutter que permite gestionar de manera eficiente el registro, administración y consulta de información relacionada con los títulos universitarios. Este sistema está diseñado para funcionar de forma offline utilizando una base de datos local, asegurando rapidez y accesibilidad para los usuarios.

Estructura del Proyecto
El proyecto está organizado siguiendo una arquitectura modular basada en el patrón BLoC (Business Logic Component). Esto garantiza una separación clara entre la interfaz de usuario (UI) y la lógica del negocio, lo que facilita el mantenimiento y la escalabilidad.


Carpetas Principales
apis: Define las interfaces de comunicación para servicios externos (si se usaran APIs en el futuro).
bloc: Contiene la lógica de negocios organizada en eventos, estados y blocs.
comp: Reúne componentes reutilizables como botones, campos de entrada y barras de navegación.
drawer: Implementa el menú lateral para la navegación.
modelo: Incluye las clases modelo que representan la estructura de datos del proyecto.
repository: Implementa las operaciones CRUD para interactuar con la base de datos local.
ui: Maneja las pantallas principales y el diseño de la interfaz.
util: Incluye utilidades y configuraciones globales.




Tecnologías Utilizadas
Flutter: Framework principal para desarrollar la interfaz de usuario.
Dart: Lenguaje de programación base del proyecto.
Sqflite: Biblioteca para la gestión de la base de datos SQLite.
BLoC: Patrón de diseño para la gestión del estado.
Material Design: Principios para el diseño visual de la aplicación.
Proceso de Desarrollo
1. Diseño de la Arquitectura
   El proyecto sigue el principio MVC (Modelo-Vista-Controlador) con adaptaciones del patrón BLoC para garantizar una clara separación de responsabilidades:

Modelo: Define las estructuras de datos (por ejemplo, alumno, programa académico).
Vista: Implementa las pantallas y widgets de la interfaz.
Controlador (BLoC): Gestiona la lógica y el flujo de datos entre la vista y el modelo.


Con base en los detalles que me has proporcionado anteriormente, prepararé un README detallado que explique el proceso general de desarrollo de un proyecto típico en Flutter con una base de datos local y el patrón BLoC. Este documento será genérico, pero adaptable a tu proyecto específico:

README del Proyecto: Sistema de Gestión de Títulos Universitarios (SGTU)
Descripción del Proyecto
El Sistema de Gestión de Títulos Universitarios (SGTU) es una aplicación desarrollada en Flutter que permite gestionar de manera eficiente el registro, administración y consulta de información relacionada con los títulos universitarios. Este sistema está diseñado para funcionar de forma offline utilizando una base de datos local, asegurando rapidez y accesibilidad para los usuarios.

Estructura del Proyecto
El proyecto está organizado siguiendo una arquitectura modular basada en el patrón BLoC (Business Logic Component). Esto garantiza una separación clara entre la interfaz de usuario (UI) y la lógica del negocio, lo que facilita el mantenimiento y la escalabilidad.

Carpetas Principales
apis: Define las interfaces de comunicación para servicios externos (si se usaran APIs en el futuro).
bloc: Contiene la lógica de negocios organizada en eventos, estados y blocs.
comp: Reúne componentes reutilizables como botones, campos de entrada y barras de navegación.
drawer: Implementa el menú lateral para la navegación.
modelo: Incluye las clases modelo que representan la estructura de datos del proyecto.
repository: Implementa las operaciones CRUD para interactuar con la base de datos local.
ui: Maneja las pantallas principales y el diseño de la interfaz.
util: Incluye utilidades y configuraciones globales.
Tecnologías Utilizadas
Flutter: Framework principal para desarrollar la interfaz de usuario.
Dart: Lenguaje de programación base del proyecto.
Sqflite: Biblioteca para la gestión de la base de datos SQLite.
BLoC: Patrón de diseño para la gestión del estado.
Material Design: Principios para el diseño visual de la aplicación.
Proceso de Desarrollo
1. Diseño de la Arquitectura
   El proyecto sigue el principio MVC (Modelo-Vista-Controlador) con adaptaciones del patrón BLoC para garantizar una clara separación de responsabilidades:

Modelo: Define las estructuras de datos (por ejemplo, alumno, programa académico).
Vista: Implementa las pantallas y widgets de la interfaz.
Controlador (BLoC): Gestiona la lógica y el flujo de datos entre la vista y el modelo.
2. Implementación de la Base de Datos
   Se utiliza Sqflite para gestionar los datos de manera local. Las tablas principales incluyen:

Programas Académicos: Información sobre las carreras ofrecidas.
Cursos: Detalles de las asignaturas.
Inscripciones: Registro de alumnos inscritos.
Notas: Calificaciones obtenidas.
Exámenes de Grado: Información de evaluaciones finales.
3. Creación de la Interfaz de Usuario
   El diseño sigue los principios de Material Design para ofrecer una experiencia de usuario intuitiva y moderna. Las pantallas incluyen:

Pantalla de inicio con acceso rápido a las funciones principales.
Formularios para la creación y edición de registros.
Tablas o listas para la visualización de datos.
4. Gestión del Estado
   El patrón BLoC se implementa para manejar la lógica del negocio y la comunicación entre la UI y la base de datos. Cada entidad tiene su propio bloc que controla:

Eventos (como agregar, editar, eliminar).
Estados (carga exitosa, error, etc.).
5. Pruebas y Depuración
   Se realizan pruebas unitarias y de integración para verificar:

La correcta inserción, actualización y eliminación de registros.
La sincronización entre la interfaz y la base de datos.

Instrucciones de Instalación
Clonar el Repositorio

bash
Copiar código
git clone https://github.com/tu-usuario/sgtu.git
cd sgtu
Instalar Dependencias
Asegúrate de tener Flutter instalado en tu sistema. Luego, ejecuta:

bash
Copiar código
flutter pub get
Ejecutar la Aplicación
Usa el siguiente comando para ejecutar la aplicación en un emulador o dispositivo físico:

bash
Copiar código
flutter run