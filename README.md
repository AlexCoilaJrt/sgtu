# Sistema de Gestión de Títulos Universitarios (SGTU)

Una solución integral para la administración eficiente de títulos universitarios.

## Tabla de Contenidos
- [Descripción del Proyecto](#descripcion-del-proyecto)
- [Características Principales](#caracteristicas-principales)
- [Arquitectura del Proyecto](#arquitectura-del-proyecto)
    - [Frontend (Flutter)](#frontend-flutter)
    - [Backend (Node.js)](#backend-nodejs)
- [Tecnologías Utilizadas](#tecnologias-utilizadas)
- [Instrucciones de Instalación](#instrucciones-de-instalacion)
    - [Frontend](#instalacion-del-frontend)
    - [Backend](#instalacion-del-backend)
- [Despliegue](#despliegue)
- [Contribuidores](#contribuidores)
Link del Figma -> https://www.figma.com/design/hqZle30s8Er20HjZCMoHrC/SGTU---APP?node-id=0-1&t=ASldcnwnJEwnM752-1
## Descripción del Proyecto
El **Sistema de Gestión de Títulos Universitarios (SGTU)** es una plataforma que combina una aplicación Flutter para la gestión de usuarios y datos, con un backend en la nube implementado en Node.js, desplegado en Vercel y respaldado por Supabase.

## Características Principales
- ✅ CRUD completo para la gestión de usuarios, programas académicos, tesis, y evaluaciones.
- ✅ Diseño modular con arquitectura escalable.
- ✅ Gestión Offline/Online con sincronización de datos.
- ✅ Seguridad con autenticación JWT.

## Arquitectura del Proyecto

### Frontend (Flutter)
El frontend está construido usando Flutter y sigue una arquitectura modular basada en **BLoC** (Business Logic Component).

### Backend:

Node.js: Servidor backend.
Express.js: Framework para APIs RESTful.
Supabase: Base de datos y autenticación.


Instrucciones de Instalación
Instalación del Frontend
Clona el repositorio:
git clone https://github.com/usuario/sgtu_frontend.git
cd sgtu_frontend


Instala las dependencias:

flutter pub get

Ejecuta la aplicación:

flutter run

Instalación del Backend
Clona el repositorio:

git clone https://github.com/usuario/sgtu_backend.git
cd sgtu_backend


Instala las dependencias:

npm install

Configura las variables de entorno.

Ejecuta el servidor:

npm start

Despliegue
El backend está desplegado en Vercel.

Instala la CLI de Vercel:
npm install -g vercel

Inicia sesión en Vercel:
vercel login

Despliega el backend:
vercel
```plaintext
├── core/               
├── data/               
├── domain/                
├── presentatio/              
└── main.dart                 

Backend (Node.js)


El backend está implementado en Node.js utilizando Express.js como framework, con Supabase como servicio de base de datos y autenticación.
├── src/  
│   ├── app.js           # Configuración principal del servidor  
│   ├── config/  
│   │   └── database.js  # Configuración de conexión a Supabase  
│   ├── controllers/     # Controladores para cada entidad  
│   ├── middleware/      # Middlewares de autenticación  
│   └── routes/          # Rutas organizadas por entidad  
└── package.json         # Configuración del proyecto Node.js  

#### Tecnologías Utilizadas


Frontend:

Flutter: Desarrollo multiplataforma.
Dart: Lenguaje de programación.
Material Design: Estándar para diseño visual y UX.



Contribuidores: Ciro Wagner, Alex Coila, Fabrizio Sanchez