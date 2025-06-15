#!/bin/bash


# Función para generar logs de syslog
generate_syslog() {
  while true; do
    echo "$(date --iso-8601=seconds) hostname syslogd[123]: This is a syslog message" >> ./logs/syslog/syslog.log
    sleep 1
  done
}

# Función para generar logs de nginx
generate_nginx() {
  while true; do
    local status=$((RANDOM % 600))
    if [ $status -ge 400 ]; then
      echo "127.0.0.1 - - [$(date '+%d/%b/%Y:%H:%M:%S %z')] \"GET /error HTTP/1.1\" $status 612 \"-\" \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36\"" >> ./logs/nginx/access.log
    else
      echo "127.0.0.1 - - [$(date '+%d/%b/%Y:%H:%M:%S %z')] \"GET / HTTP/1.1\" $status 612 \"-\" \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36\"" >> ./logs/nginx/access.log
    fi
    echo "[$(date '+%d/%b/%Y:%H:%M:%S %z')] [error] 12345#12345: *1 open() \"/usr/share/nginx/html/favicon.ico\" failed (2: No such file or directory), client: 127.0.0.1, server: localhost, request: \"GET /favicon.ico HTTP/1.1\", host: \"localhost\"" >> ./logs/nginx/error.log
    sleep 1
  done
}

# Función para generar logs de auth
generate_auth() {
  while true; do
    local auth_status=$((RANDOM % 2))
    local ip="127.0.0.$((RANDOM % 2 + 1))"  # Alternar entre 127.0.0.1 y 127.0.0.2
    if [ $auth_status -eq 0 ]; then
      echo "$(date '+%b %d %H:%M:%S') hostname sshd[123]: Failed password for user from $ip port 22 ssh2" >> ./logs/auth/auth.log
    else
      echo "$(date '+%b %d %H:%M:%S') hostname sshd[123]: Accepted password for user from $ip port 22 ssh2" >> ./logs/auth/auth.log
    fi
    sleep 1
  done
}

# Función para generar logs de apache
generate_apache() {
  while true; do
    local status=$((RANDOM % 600))
    if [ $status -ge 400 ]; then
      echo "127.0.0.1 - - [$(date '+%d/%b/%Y:%H:%M:%S %z')] \"GET /error HTTP/1.1\" $status 612 \"-\" \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36\"" >> ./logs/apache2/access.log
    else
      echo "127.0.0.1 - - [$(date '+%d/%b/%Y:%H:%M:%S %z')] \"GET / HTTP/1.1\" $status 612 \"-\" \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36\"" >> ./logs/apache2/access.log
    fi
    echo "[$(date '+%d/%b/%Y/%H:%M:%S %z')] [error] [client 127.0.0.1] File does not exist: /usr/share/apache2/html/favicon.ico" >> ./logs/apache2/error.log
    sleep 1
  done
}

# Función para generar logs de una aplicación personalizada
generate_custom_app() {
  while true; do
    echo "$(date --iso-8601=seconds) CustomApp: This is a custom app log message" >> ./logs/custom-app/custom-app.log
    sleep 1
  done
}

# Ejecutar todas las funciones en segundo plano
generate_syslog &
generate_nginx &
generate_auth &
generate_apache &
generate_custom_app &

# Esperar a que todos los procesos en segundo plano terminen
wait