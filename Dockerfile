# Usar la imagen oficial de MySQL
FROM mysql:8.0

# Establecer las variables de entorno para MySQL
#ENV MYSQL_ROOT_PASSWORD=rootpassword
ENV MYSQL_DATABASE=bd_quiz
#ENV MYSQL_USER=user
#ENV MYSQL_PASSWORD=userpassword

# Copiar el archivo de inicialización SQL al directorio de inicialización de MySQL
COPY init.sql /docker-entrypoint-initdb.d/

# Exponer el puerto 3306 para MySQL
EXPOSE 3306
