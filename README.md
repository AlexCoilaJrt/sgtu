SGTU - Sistema de Gestión de Títulos Universitarios
Una aplicación Flutter para gestionar eficientemente los títulos universitarios.

📖 Descripción del Proyecto
El Sistema de Gestión de Títulos Universitarios (SGTU) es una aplicación desarrollada en Flutter para administrar, registrar y consultar información relacionada con los títulos universitarios.
Diseñado para trabajar sin conexión a internet, utiliza una base de datos local para garantizar rapidez y accesibilidad.

📂 Estructura del Proyecto
El proyecto sigue una arquitectura modular basada en el patrón BLoC (Business Logic Component), lo que asegura:

Separación entre la interfaz de usuario (UI) y la lógica de negocio.
Fácil mantenimiento y escalabilidad.
🔑 Carpetas Principales
apis: Interfaces para la comunicación con servicios externos (en caso de expandir el proyecto).
bloc: Contiene la lógica del negocio con eventos, estados y blocs.
comp: Componentes reutilizables como botones, barras de navegación, formularios, etc.
drawer: Implementación del menú lateral de navegación.
modelo: Clases modelo que representan la estructura de datos.
repository: Implementa operaciones CRUD para la base de datos local.
ui: Pantallas y widgets para la interfaz de usuario.
util: Funciones y configuraciones globales.
💻 Tecnologías Utilizadas
Flutter: Framework principal para la interfaz de usuario.
Dart: Lenguaje de programación base del proyecto.
Sqflite: Biblioteca para la gestión de la base de datos SQLite.
BLoC: Patrón para la gestión del estado.
Material Design: Principios para un diseño visual intuitivo.
🛠 Proceso de Desarrollo
1. Diseño de la Arquitectura
   El proyecto utiliza el patrón MVC (Modelo-Vista-Controlador), adaptado con BLoC:

Modelo: Representa las estructuras de datos (e.g., alumno, curso).
Vista: Pantallas y widgets para interactuar con el usuario.
Controlador (BLoC): Maneja la lógica del negocio y el flujo de datos.
2. Implementación de la Base de Datos
   La base de datos está diseñada para trabajar de manera local con Sqflite.
   Tablas principales:

Programas Académicos: Carreras ofrecidas.
Cursos: Asignaturas detalladas.
Inscripciones: Registro de estudiantes inscritos.
Notas: Calificaciones de los estudiantes.
Exámenes de Grado: Evaluaciones finales.
3. Creación de la Interfaz de Usuario
   El diseño sigue los principios de Material Design, con las siguientes pantallas clave:

Inicio: Acceso rápido a las funciones principales.
Formularios: Para crear y editar registros.
Listados: Tablas o listas para mostrar la información almacenada.
4. Gestión del Estado
   Se utiliza el patrón BLoC para manejar la comunicación entre la UI y la base de datos:

Eventos: Acciones como agregar, editar o eliminar.
Estados: Muestran el resultado de las acciones (éxito, error, etc.).
5. Pruebas y Depuración
   El proyecto incluye pruebas para garantizar:

Correcta inserción, edición y eliminación de datos.
Sincronización efectiva entre la interfaz y la base de datos.
📦 Instrucciones de Instalación
1. Clonar el Repositorio
   bash
   Copiar código
   git clone https://github.com/tu-usuario/sgtu.git
   cd sgtu
2. Instalar Dependencias
   Asegúrate de tener Flutter instalado y ejecuta:

bash
Copiar código
flutter pub get
3. Ejecutar la Aplicación
   Usa este comando para iniciar la aplicación en un emulador o dispositivo físico:

bash
Copiar código
flutter run
⭐ Características Clave
CRUD Completo: Gestión de programas, cursos, inscripciones, notas y exámenes.
Diseño Modular: Arquitectura escalable para futuros desarrollos.
Offline First: Funciona sin conexión a internet.
Interfaz Intuitiva: Diseñada para maximizar la usabilidad.
🤝 Contribución
Los autores principales del proyecto son:

Ciro Wagner
Alex Coila
Fabrizio Yerald Sanchez
Para contribuir:

Haz un fork del repositorio.
Trabaja en una rama separada.
Envía un pull request con los cambios propuestos.
📬 Contacto
Para más información, puedes contactar al equipo desarrollador.