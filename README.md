<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sistema de Gestión de Títulos Universitarios (SGTU)</title>
</head>
<body>
    <h1><strong>Sistema de Gestión de Títulos Universitarios (SGTU)</strong></h1>
    <p>Una solución integral para la administración eficiente de títulos universitarios.</p>
    <img src="https://via.placeholder.com/800x200?text=Sistema+de+Gesti%C3%B3n+de+T%C3%ADtulos+Universitarios" alt="SGTU Banner">

    <h2><strong>Tabla de Contenidos</strong></h2>
    <ul>
        <li><a href="#descripcion-del-proyecto">Descripción del Proyecto</a></li>
        <li><a href="#caracteristicas-principales">Características Principales</a></li>
        <li><a href="#arquitectura-del-proyecto">Arquitectura del Proyecto</a>
            <ul>
                <li><a href="#frontend-flutter">Frontend (Flutter)</a></li>
                <li><a href="#backend-nodejs">Backend (Node.js)</a></li>
            </ul>
        </li>
        <li><a href="#tecnologias-utilizadas">Tecnologías Utilizadas</a></li>
        <li><a href="#instrucciones-de-instalacion">Instrucciones de Instalación</a>
            <ul>
                <li><a href="#instalacion-del-frontend">Frontend</a></li>
                <li><a href="#instalacion-del-backend">Backend</a></li>
            </ul>
        </li>
        <li><a href="#despliegue">Despliegue</a></li>
        <li><a href="#contribuidores">Contribuidores</a></li>
    </ul>
    
    <h2 id="descripcion-del-proyecto"><strong>Descripción del Proyecto</strong></h2>
    <p>
        El <strong>Sistema de Gestión de Títulos Universitarios (SGTU)</strong> es una plataforma que combina una 
        <strong>aplicación Flutter</strong> para la gestión de usuarios y datos, con un <strong>backend en la nube</strong> 
        implementado en Node.js, desplegado en <strong>Vercel</strong> y respaldado por <strong>Supabase</strong>. 
    </p>
    <p>Esta herramienta busca optimizar procesos administrativos, ofreciendo una experiencia moderna y funcional tanto offline como online.</p>
    
    <h2 id="caracteristicas-principales"><strong>Características Principales</strong></h2>
    <ul>
        <li>✅ CRUD completo para la gestión de:
            <ul>
                <li>Usuarios</li>
                <li>Programas académicos</li>
                <li>Tesis</li>
                <li>Evaluaciones</li>
            </ul>
        </li>
        <li>✅ <strong>Diseño modular</strong> con arquitectura escalable.</li>
        <li>✅ <strong>Gestión Offline/Online</strong> con sincronización de datos.</li>
        <li>✅ <strong>Seguridad</strong>: Autenticación basada en JWT.</li>
        <li>✅ <strong>Despliegue en la nube</strong> con Vercel para el backend.</li>
        <li>✅ <strong>Base de datos Supabase</strong>, optimizada para alto rendimiento.</li>
    </ul>
    
    <h2 id="arquitectura-del-proyecto"><strong>Arquitectura del Proyecto</strong></h2>
    <h3 id="frontend-flutter"><strong>Frontend (Flutter)</strong></h3>
    <p>El frontend está construido usando Flutter y sigue una arquitectura modular basada en <strong>BLoC (Business Logic Component)</strong>.</p>
    <pre>
<code>
├── apis/               # Interfaces de comunicación con el backend  
├── bloc/               # Lógica de negocio con eventos y estados  
├── comp/               # Componentes reutilizables (botones, entradas, etc.)  
├── drawer/             # Menú lateral para navegación  
├── modelo/             # Clases modelo (Usuario, Tesis, etc.)  
├── repository/         # Repositorio para operaciones CRUD  
├── ui/                 # Pantallas principales  
└── util/               # Configuraciones globales y utilidades  
</code>
    </pre>

    <h3 id="backend-nodejs"><strong>Backend (Node.js)</strong></h3>
    <p>El backend está implementado en Node.js utilizando <strong>Express.js</strong> como framework, con Supabase como servicio de base de datos y autenticación.</p>
    <pre>
<code>
├── src/  
│   ├── app.js           # Configuración principal del servidor  
│   ├── config/  
│   │   └── database.js  # Configuración de conexión a Supabase  
│   ├── controllers/     # Controladores para cada entidad  
│   ├── middleware/      # Middlewares de autenticación y roles  
│   ├── routes/          # Rutas organizadas por entidad  
│   └── utils/           # Funciones de apoyo  
└── package.json         # Configuración del proyecto Node.js  
</code>
    </pre>

    <h2 id="tecnologias-utilizadas"><strong>Tecnologías Utilizadas</strong></h2>
    <ul>
        <li><strong>Frontend</strong>
            <ul>
                <li>Flutter: Desarrollo multiplataforma.</li>
                <li>Dart: Lenguaje de programación.</li>
                <li>Material Design: Estándar para diseño visual y UX.</li>
            </ul>
        </li>
        <li><strong>Backend</strong>
            <ul>
                <li>Node.js: Servidor backend escalable.</li>
                <li>Express.js: Framework ligero para APIs RESTful.</li>
                <li>Supabase: Base de datos y autenticación.</li>
                <li>JWT: Autenticación segura basada en tokens.</li>
                <li>Vercel: Hospedaje del backend.</li>
            </ul>
        </li>
    </ul>
    
    <h2 id="instrucciones-de-instalacion"><strong>Instrucciones de Instalación</strong></h2>
    <h3 id="instalacion-del-frontend"><strong>Instalación del Frontend</strong></h3>
    <ol>
        <li>Clona el repositorio del frontend:
            <pre><code>git clone https://github.com/usuario/sgtu_frontend.git  
cd sgtu_frontend</code></pre>
</li>
<li>Instala las dependencias:
<pre><code>flutter pub get</code></pre>
</li>
<li>Ejecuta la aplicación:
<pre><code>flutter run</code></pre>
</li>
</ol>
<h3 id="instalacion-del-backend"><strong>Instalación del Backend</strong></h3>
<ol>
<li>Clona el repositorio del backend:
<pre><code>git clone https://github.com/usuario/sgtu_backend.git  
cd sgtu_backend</code></pre>
</li>
<li>Instala las dependencias:
<pre><code>npm install</code></pre>
</li>
<li>Configura las variables de entorno:
<p>Crea un archivo <code>.env</code> basado en <code>.env.example</code> con los siguientes datos:</p>
<pre><code>SUPABASE_URL=&lt;URL de Supabase&gt;  
SUPABASE_KEY=&lt;Clave de Supabase&gt;  
JWT_SECRET=&lt;Tu clave JWT secreta&gt;</code></pre>
</li>
<li>Ejecuta el servidor en local:
<pre><code>npm start</code></pre>
</li>
</ol>

    <h2 id="despliegue"><strong>Despliegue</strong></h2>
    <p>El backend está desplegado en Vercel. Para desplegar sigue estos pasos:</p>
    <ol>
        <li>Instala la CLI de Vercel:
            <pre><code>npm install -g vercel</code></pre>
        </li>
        <li>Inicia sesión en tu cuenta de Vercel:
            <pre><code>vercel login</code></pre>
        </li>
        <li>Despliega el backend:
            <pre><code>vercel</code></pre>
        </li>
    </ol>
    
    <h2 id="contribuidores"><strong>Contribuidores</strong></h2>
    <table>
        <thead>
            <tr>
                <th>Nombre</th>
                <th>Rol</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Ciro Wagner</td>
                <td>Desarrollador principal</td>
            </tr>
            <tr>
                <td>María López</td>
                <td>Diseñadora UX</td>
            </tr>
            <tr>
                <td>Juan Pérez</td>
                <td>Administrador de base de datos</td>
            </tr>
        </tbody>
    </table>
</body>
</html>
