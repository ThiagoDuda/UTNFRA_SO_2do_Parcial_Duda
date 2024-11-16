#!/bin/bash


# Accedemos a al archivo index y lo modificamos
vim /home/thiagoduda/repogit/UTN-FRA_SO_Examenes/202406/docker/index.html
<div>
<h1> Sistemas Operativos - UTNFRA </h1></br>
<h2> 2do Parcial - Junio 2024 </h2> </br>
<h3> Tu-Nombre Thiago Duda</h3>
<h3> División: 311</h3>
</div>

#Creamos el archivo Dockerfile y lo editamos
touch Dockerfile
vim Dockerfile
# -------------------------------
# Usa la imagen base de nginx
FROM nginx:latest

# Copia el archivo index.html al directorio donde nginx lo sirve
COPY index.html /usr/share/nginx/html/index.html
#---------------------------------

# Construimos la imagen de docker
docker build -t web1-duda.
# Nos tira error porque no hay espacio entonces extendemos el espacio
vgdisplay vg_datos
sudo lvextend -L 500M /dev/vg_datos/lv_docker
sudo resize2fs /dev/vg_datos/lv_docker

# Probamos la imagen localmente
sudo docker run -d -p 8080:80 web1-duda

# Nos logeamos
docker login

# Etiquetamos y pusheamos la imagen
sudo docker tag web1-duda thiagoaduda/web1-duda
sudo docker push thiagoaduda/web1-duda

# Cremos el archivo run.sh y lo editamos
touch run.sh
vim run.sh
#---------------------------------------------
#!/bin/bash

# Ejecuta la imagen desde Docker Hub y mapea el puerto 8080
docker run -d -p 8080:80 <tu-usuario>/web1-<tu-apellido>
#---------------------------------------------


# Por ultimo modifificamos permisos
chmod +x run.sh

