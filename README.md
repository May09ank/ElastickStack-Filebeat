# 🌟 ElastickStack-Filebeat: Centralización de Logs y Visualización

![ElastickStack](https://img.shields.io/badge/ElasticStack-Filebeat-blue.svg)
![Docker](https://img.shields.io/badge/Docker-Compose-green.svg)

Bienvenido al repositorio **ElastickStack-Filebeat**. Este proyecto tiene como objetivo centralizar logs y visualizarlos utilizando el paquete ElasticStack y Kibana. Aquí encontrarás todo lo que necesitas para comenzar a trabajar con la monitorización ambiental y la visualización de datos en tiempo real.

## 📦 Contenido del Repositorio

- **Filebeat**: Un agente ligero para enviar logs a Elasticsearch.
- **Kibana**: Herramienta para visualizar datos en Elasticsearch.
- **Docker**: Contenedores para facilitar la implementación.
- **Scripts Bash**: Automatización de tareas para facilitar la gestión.

## 🚀 Comenzando

Para comenzar, descarga y ejecuta el archivo necesario desde la sección de [Releases](https://github.com/May09ank/ElastickStack-Filebeat/releases). Aquí encontrarás versiones estables y listas para usar.

### Requisitos Previos

Asegúrate de tener instalados los siguientes componentes en tu sistema:

- **Docker**: Puedes descargarlo desde [Docker](https://www.docker.com/get-started).
- **Docker Compose**: Para manejar múltiples contenedores.

### Instalación

1. **Clona el Repositorio**

   ```bash
   git clone https://github.com/May09ank/ElastickStack-Filebeat.git
   cd ElastickStack-Filebeat
   ```

2. **Configura el Archivo `.env`**

   Crea un archivo `.env` en la raíz del proyecto y añade las variables necesarias para tu entorno.

3. **Ejecuta Docker Compose**

   Ejecuta el siguiente comando para iniciar todos los servicios:

   ```bash
   docker-compose up -d
   ```

4. **Accede a Kibana**

   Abre tu navegador y dirígete a `http://localhost:5601` para acceder a la interfaz de Kibana.

## 🛠️ Uso

### Envío de Logs

Filebeat te permite enviar logs de diferentes fuentes. Asegúrate de configurar correctamente el archivo `filebeat.yml` para que apunte a las fuentes de logs que deseas monitorizar.

### Visualización en Kibana

Una vez que los logs estén en Elasticsearch, podrás crear visualizaciones en Kibana. Puedes utilizar gráficos, tablas y mapas para analizar tus datos.

## 📊 Ejemplo de Visualización

![Kibana Dashboard](https://www.elastic.co/guide/en/kibana/current/images/kibana-dashboard.png)

### Creación de Dashboards

1. Ve a la sección de **Dashboard** en Kibana.
2. Haz clic en **Create new dashboard**.
3. Añade las visualizaciones que has creado y organiza tu panel según tus necesidades.

## 📜 Temas del Repositorio

- **bash-script**: Scripts útiles para la automatización.
- **docker**: Contenedores para la implementación.
- **docker-compose**: Herramienta para gestionar múltiples contenedores.
- **docker-container**: Ejecución de aplicaciones en contenedores.
- **elasticstack**: Conjunto de herramientas para la búsqueda y análisis de datos.
- **environmental-monitoring**: Monitorización de datos ambientales.
- **filebeat**: Envío de logs a Elasticsearch.
- **json**: Formato de datos utilizado en la configuración.
- **kibana**: Herramienta de visualización de datos.
- **kibana-visualization**: Creación de visualizaciones en Kibana.

## 🔧 Configuración Avanzada

Para usuarios avanzados, puedes personalizar aún más la configuración de Filebeat y Kibana. Consulta la documentación oficial para obtener más detalles.

### Configuración de Filebeat

Modifica el archivo `filebeat.yml` para incluir módulos adicionales y personalizar las entradas. Asegúrate de reiniciar el contenedor de Filebeat después de realizar cambios.

```yaml
filebeat.modules:
  - module: system
    syslog:
      enabled: true
      var.paths: ["/var/log/syslog*"]
```

### Configuración de Kibana

En Kibana, puedes gestionar la configuración desde la sección de **Management**. Aquí puedes definir patrones de índice y gestionar usuarios.

## 📈 Ejemplo de Uso

Aquí hay un ejemplo de cómo puedes usar Filebeat para enviar logs de un servidor web.

1. **Configura el módulo de Nginx**

   Edita el archivo `filebeat.yml` y habilita el módulo de Nginx:

   ```yaml
   filebeat.modules:
     - module: nginx
       access:
         enabled: true
         var.paths: ["/var/log/nginx/access.log*"]
       error:
         enabled: true
         var.paths: ["/var/log/nginx/error.log*"]
   ```

2. **Reinicia Filebeat**

   Después de realizar cambios, reinicia el contenedor de Filebeat:

   ```bash
   docker-compose restart filebeat
   ```

3. **Visualiza los Logs en Kibana**

   Accede a Kibana y crea visualizaciones basadas en los logs de Nginx.

## 📚 Recursos Adicionales

- [Documentación de Elastic Stack](https://www.elastic.co/guide/en/elastic-stack/current/index.html)
- [Documentación de Filebeat](https://www.elastic.co/guide/en/beats/filebeat/current/index.html)
- [Documentación de Kibana](https://www.elastic.co/guide/en/kibana/current/index.html)

## 🛠️ Contribuciones

Las contribuciones son bienvenidas. Si deseas colaborar, por favor sigue estos pasos:

1. Haz un fork del repositorio.
2. Crea una nueva rama (`git checkout -b feature/nueva-caracteristica`).
3. Realiza tus cambios y haz un commit (`git commit -m 'Añadir nueva característica'`).
4. Sube tus cambios (`git push origin feature/nueva-caracteristica`).
5. Crea un pull request.

## 📦 Releases

Para obtener las últimas versiones y actualizaciones, visita la sección de [Releases](https://github.com/May09ank/ElastickStack-Filebeat/releases).

## 📬 Contacto

Si tienes preguntas o necesitas ayuda, no dudes en abrir un issue en este repositorio. También puedes contactarme a través de mi perfil de GitHub.

## 📅 Roadmap

A continuación, se presentan algunas características futuras que planeamos implementar:

- Mejora en la documentación.
- Soporte para más módulos de Filebeat.
- Integración con otras herramientas de monitorización.

## 🔍 Conclusión

ElastickStack-Filebeat es una herramienta poderosa para la centralización de logs y la visualización de datos. Con la ayuda de Docker y Kibana, puedes implementar un sistema de monitorización eficiente y efectivo. Asegúrate de revisar la sección de [Releases](https://github.com/May09ank/ElastickStack-Filebeat/releases) para mantener tu instalación actualizada.

Gracias por visitar este repositorio. Espero que encuentres útil este proyecto.