#!/bin/bash

# Crear particiones LVM en ambos discos
sudo pvcreate /dev/sdc /dev/sde

# Crear grupos de volúmenes
sudo vgcreate vg_datos /dev/sdc
sudo vgcreate vg_temp /dev/sde

# Crear volúmenes lógicos
sudo lvcreate -L 5M -n lv_docker vg_datos
sudo lvcreate -L 1.5G -n lv_workareas vg_datos
sudo lvcreate -L 512M -n lv_swap vg_temp

# Formatear volúmenes
sudo mkfs.ext4 /dev/vg_datos/lv_docker
sudo mkfs.ext4 /dev/vg_datos/lv_workareas
sudo mkswap /dev/vg_temp/lv_swap

# Crear puntos de montaje
sudo mkdir -p /var/lib/docker
sudo mkdir -p /work

# Montar volúmenes
sudo mount /dev/vg_datos/lv_docker /var/lib/docker
sudo mount /dev/vg_datos/lv_workareas /work

# Activar swap
sudo swapon /dev/vg_temp/lv_swap

# Para que el montaje sea persistente:
sudo vim /etc/fstab

# Le agregamos la siguiente líneas
# /dev/vg_datos/lv_docker  /var/lib/docker  ext4  defaults  0  2
# /dev/vg_datos/lv_workareas  /work  ext4  defaults  0  2
# /dev/vg_temp/lv_swap  none  swap  sw  0  0

# Guardamos con
sudo mount -a
sudo swapon –show

# Verificamos con
df -h
lsblk
