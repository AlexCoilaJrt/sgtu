Sistema de Gestión de Títulos Universitarios (SGTU)
Una solución integral para la administración eficiente de títulos universitarios.


Tabla de Contenidos
Descripción del Proyecto
Características Principales
Arquitectura del Proyecto
Frontend (Flutter)
Backend (Node.js)
Tecnologías Utilizadas
Instrucciones de Instalación
Frontend
Backend
Despliegue
Contribuidores
Descripción del Proyecto
El Sistema de Gestión de Títulos Universitarios (SGTU) es una plataforma que combina una aplicación Flutter para la gestión de usuarios y datos, con un backend en la nube implementado en Node.js, desplegado en Vercel y respaldado por Supabase.

Esta herramienta busca optimizar procesos administrativos, ofreciendo una experiencia moderna y funcional tanto offline como online.

Características Principales
✅ CRUD completo para la gestión de:

Usuarios
Programas académicos
Tesis
Evaluaciones
✅ Diseño modular con arquitectura escalable.
✅ Gestión Offline/Online con sincronización de datos.
✅ Seguridad: Autenticación basada en JWT.
✅ Despliegue en la nube con Vercel para el backend.
✅ Base de datos Supabase, optimizada para alto rendimiento.

Arquitectura del Proyecto
Frontend (Flutter)
El frontend está construido usando Flutter y sigue una arquitectura modular basada en BLoC (Business Logic Component).

Estructura de Carpetas:

bash
Copiar código
├── apis/               # Interfaces de comunicación con el backend  
├── bloc/               # Lógica de negocio con eventos y estados  
├── comp/               # Componentes reutilizables (botones, entradas, etc.)  
├── drawer/             # Menú lateral para navegación  
├── modelo/             # Clases modelo (Usuario, Tesis, etc.)  
├── repository/         # Repositorio para operaciones CRUD  
├── ui/                 # Pantallas principales  
└── util/               # Configuraciones globales y utilidades  
Backend (Node.js)
El backend está implementado en Node.js utilizando Express.js como framework, con Supabase como servicio de base de datos y autenticación.

Estructura del Backend:

bash
Copiar código
├── src/  
│   ├── app.js           # Configuración principal del servidor  
│   ├── config/  
│   │   └── database.js  # Configuración de conexión a Supabase  
│   ├── controllers/     # Controladores para cada entidad  
│   ├── middleware/      # Middlewares de autenticación y roles  
│   ├── routes/          # Rutas organizadas por entidad  
│   └── utils/           # Funciones de apoyo  
└── package.json         # Configuración del proyecto Node.js  
Tecnologías Utilizadas
Frontend
Flutter: Desarrollo multiplataforma.
Dart: Lenguaje de programación.
Material Design: Estándar para diseño visual y UX.
Backend
Node.js: Servidor backend escalable.
Express.js: Framework ligero para APIs RESTful.
Supabase: Base de datos y autenticación.
JWT: Autenticación segura basada en tokens.
Despliegue
Vercel: Hospedaje del backend.
Instrucciones de Instalación
Instalación del Frontend
Clona el repositorio del frontend:
bash
Copiar código
git clone https://github.com/usuario/sgtu_frontend.git  
cd sgtu_frontend  
Instala las dependencias:
bash
Copiar código
flutter pub get  
Ejecuta la aplicación:
bash
Copiar código
flutter run  
Instalación del Backend
Clona el repositorio del backend:
bash
Copiar código
git clone https://github.com/usuario/sgtu_backend.git  
cd sgtu_backend  
Instala las dependencias:
bash
Copiar código
npm install  
Configura las variables de entorno:
Crea un archivo .env basado en .env.example con los siguientes datos:
env
Copiar código
SUPABASE_URL=<URL de Supabase>  
SUPABASE_KEY=<Clave de Supabase>  
JWT_SECRET=<Tu clave JWT secreta>  
Ejecuta el servidor en local:
bash
Copiar código
npm start  
Despliegue
Frontend
Despliegue recomendado en Firebase Hosting o Netlify.
Backend
Desplegado automáticamente en Vercel.
Asegúrate de configurar correctamente las variables de entorno en Vercel.
Contribuidores
Nombre	Rol
Ciro Wagner	Líder de desarrollo
Alex Coila	Arquitectura del backend
Fabrizio Yerald Sánchez	Diseño del frontend
Para cualquier consulta o sugerencia, no dudes en contactarnos.