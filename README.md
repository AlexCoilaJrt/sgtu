# **Sistema de Gestión de Títulos Universitarios (SGTU)**
Una solución integral para la administración eficiente de títulos universitarios.

![SGTU Banner](https://via.placeholder.com/800x200?text=Sistema+de+Gesti%C3%B3n+de+T%C3%ADtulos+Universitarios)

---

## **Tabla de Contenidos**
1. [Descripción del Proyecto](#descripción-del-proyecto)
2. [Características Principales](#características-principales)
3. [Arquitectura del Proyecto](#arquitectura-del-proyecto)
    - [Frontend (Flutter)](#frontend-flutter)
    - [Backend (Node.js)](#backend-nodejs)
4. [Tecnologías Utilizadas](#tecnologías-utilizadas)
5. [Instrucciones de Instalación](#instrucciones-de-instalación)
    - [Frontend](#instalación-del-frontend)
    - [Backend](#instalación-del-backend)
6. [Despliegue](#despliegue)
7. [Contribuidores](#contribuidores)

---

## **Descripción del Proyecto**
El **Sistema de Gestión de Títulos Universitarios (SGTU)** es una plataforma que combina una **aplicación Flutter** para la gestión de usuarios y datos, con un **backend en la nube** implementado en Node.js, desplegado en **Vercel** y respaldado por **Supabase**.

Esta herramienta busca optimizar procesos administrativos, ofreciendo una experiencia moderna y funcional tanto offline como online.

---

## **Características Principales**
✅ CRUD completo para la gestión de:
- Usuarios
- Programas académicos
- Tesis
- Evaluaciones

✅ **Diseño modular** con arquitectura escalable.  
✅ **Gestión Offline/Online** con sincronización de datos.  
✅ **Seguridad**: Autenticación basada en JWT.  
✅ **Despliegue en la nube** con Vercel para el backend.  
✅ **Base de datos Supabase**, optimizada para alto rendimiento.

---

## **Arquitectura del Proyecto**

### **Frontend (Flutter)**
El frontend está construido usando Flutter y sigue una arquitectura modular basada en **BLoC (Business Logic Component)**.

**Estructura de Carpetas:**
```plaintext
├── core/                
├── data/               
├── domain/                
├── presentation/             
└── main.dart/               


Backend (Node.js)
El backend está implementado en Node.js utilizando Express.js como framework, con Supabase como servicio de base de datos y autenticación.

Estructura del Backend:

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