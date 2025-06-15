# Proyecto de Monitoreo de Logs con ELK Stack
Este proyecto utiliza Elasticsearch, Logstash, Kibana y Filebeat para monitorear y analizar logs. A continuación se detallan los pasos para poner en marcha el proyecto.

Instrucciones
1. Montar el Docker Compose
Para iniciar los servicios de Elasticsearch, Logstash, Kibana y Filebeat, sigue estos pasos:

Ejecuta el siguiente comando para montar los servicios definidos en docker-compose.yml:
docker-compose up -d

2. Utilizar Logs ya guardados o ejecutar generate_logs.sh
a. Utilizar Logs ya Guardados
Si ya tienes logs guardados en los directorios especificados en filebeat.yml, Filebeat los leerá y enviará a Logstash automáticamente.

b. Ejecutar generate_logs.sh para generar Logs
Para generar logs de manera continua y simular la ingesta de datos, puedes ejecutar el script generate_logs.sh en segundo plano:

Asegúrate de que el script generate_logs.sh tenga permisos de ejecución: chmod +x generate_logs.sh

Ejecuta el script ./generate_logs.sh

3. Conexión a Kibana
Para acceder a Kibana y visualizar los datos:

Abre tu navegador web y navega a http://localhost:5601.

Inicia sesión con las credenciales configuradas en tu archivo .env (debería hacerse de manera automática).

4. Importar Vistas y Dashboards en Kibana
Para importar los índices y vistas predefinidos en Kibana:

Navega a Stack Management en el menú de la izquierda.

Ve a Kibana -> Saved Objects.

Haz clic en Import y selecciona el archivo kibanaviews.ndjson que contiene las vistas y dashboards exportados.
