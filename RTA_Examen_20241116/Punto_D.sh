#!/bin/bash

# Creamos la estructura de directorios
mkdir -p /tmp/2do_parcial/alumno
mkdir -p /tmp/2do_parcial/equipo

# Creamos la carpeta para almacenar los templates
mkdir /home/thiagoduda/repogit/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/templates

# Creamos los archivos datos_alumno y datos_equipo
cd /home/thiagoduda/repogit/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/templates

touch datos_alumno.j2
vim datos_alumno.j2
Nombre: {{ nombre }} Apellido: {{ apellido }}
Division: {{ division }}

touch datos_equipo.j2
vim datos_equipo.j2
IP: {{ ip }}
Distribución: {{ distro }}
Cantidad de Cores: {{ cores }}

# Editamos el main.yml del task
vim /home/thiagoduda/repogit/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/tasks

---
- name: Generar archivo para alumno
  template:
    src: datos_alumno.j2
    dest: /tmp/2do_parcial/alumno/datos_alumno.txt
  vars:
    nombre: "TuNombre"
    apellido: "TuApellido"
    division: "TuDivision"

- name: Generar archivo para equipo
  template:
    src: datos_equipo.j2
    dest: /tmp/2do_parcial/equipo/datos_equipo.txt
  vars:
    ip: "TuIP"
    distro: "TuDistribucion"
    cores: "TuCantidadDeCores"

# Ejecutamos el playbook
ansible-playbook -i inventory playbook.yml

# Configuracion de sudoers
sudo visudo
# Agregamos la linea 
%2PSupervisores ALL=(ALL) NOPASSWD: ALL
# Agregamos el grupo
sudo groupadd 2PSupervisores
sudo usermod -aG 2PSupervisores thiagoduda

