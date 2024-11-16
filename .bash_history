ls -l
ls
cd ..
ls
cd thiagoduda/
ls
mkdir repogit
ls
cd repogit/
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
ls
./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
source ~/.bashrc
cd ..
ls -l
pwd
cd RTA_Examen_20241116/
ls -l
cd ..
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
# Add the repository to Apt sources:
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo docker run hello-world
sudo systemctl restart docker
sudo systemctl status docker
clear
sudo apt update
sudo apt install lvm
sudo apt install lvm2
lsblk
sudo pvcreate /dev/sdc /dev/sde
sudo vgcreate vg_datos /dev/sdb
sudo vgcreate vg_datos /dev/sdc
sudo vgcreate vg_temp /dev/sde
sudo lvcreate -L 5M -n lv_docker vg_datos
sudo lvcreate -L 1.5G -n lv_workareas vg_datos
sudo lvcreate -L 512M -n lv_swap vg_temp
sudo mkfs.ext4 /dev/vg_datos/lv_docker
sudo mkfs.ext4 /dev/vg_datos/lv_workareas
sudo mkswap /dev/vg_temp/lv_swap
sudo mkdir -p /var/lib/docker
sudo mkdir -p /work
sudo mount /dev/vg_datos/lv_docker /var/lib/docker
sudo mount /dev/vg_datos/lv_workareas /work
sudo swapon /dev/vg_temp/lv_swap
sudo nano /etc/fstab
sudo vim /etc/fstab 
sudo mount -a
sudo swapon --show
df -h
lsblk
clear
ls
cd RTA_Examen_20241116/
ls
vim Punto_A.sh 
cat Punto_A.sh 
clear
ls
mkdir bash_script
pwd
cd ..
ls
cd ..
ls
cd usr/local/bin/
ls
mkdir duda
sudo mkdir duda
ls
cd duda/
touch AltaUser-Groups.sh
sudo touch AltaUser-Groups.sh
cat AltaUser-Groups.sh 
sudo vim AltaUser-Groups.sh 
cat AltaUser-Groups.sh 
clear
touch /home/thiagoduda/RTA_Examen_20241116/bash_script/ Lista_Usuarios.txt
sudo touch /home/thiagoduda/RTA_Examen_20241116/bash_script/ Lista_Usuarios.txt
cd /home/thiagoduda/RTA_Examen_20241116/bash_script/
ls
touch Lista_Usuarios.txt
ls
vim Lista_Usuarios.txt 
chmod +x /usr/local/bin/duda/AltaUser-Groups.sh
sudo chmod +x /usr/local/bin/duda/AltaUser-Groups.sh
sudo /usr/local/bin/duda/AltaUser-Groups.sh thiagoduda /home/thiagoduda/RTA_Examen_20241116/bash_script/Lista_Usuarios.txt
cd ..
vim Punto_B.sh 
cat Punto_B.sh
clear
cat Punto_B.sh
clear
cd ..
cd repogit/
cd UTN-FRA_SO_Examenes/
cd 202
cd 202406
ls
cd ansible/
ls
cd ..
R
cd RTA_Examen_20241116/
ls
rm bash_script/
mkdel bash_script/
rm -r bash_script/
ls
vim Punto_B.sh 
cd /home/thiagoduda/repogit/UTN-FRA_SO_Examenes/202406/bash_script/
ls
cat Lista_Usuarios.txt 
vim Lista_Usuarios.txt 
sudo /usr/local/bin/duda/AltaUser-Groups.sh thiagoduda /home/thiagoduda/repogit/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
clear
userlsit
cat /etc/passwd
clear
cd ..
RTA_Examen_20241116/
cd RTA_Examen_20241116/
vim Punto_B.sh 
cat Lista_Usuarios.txt 
vim Punto_B.sh 
cat Punto_B.sh 
clear
cd ..
cd repogit/
cd UTN-FRA_SO_Examenes/202406/docker/
ls
cat index.html 
vim index.html 
FROM nginx:latest
cd ..
cd thiagoduda/
vim home/thiagoduda/repogit/UTN-FRA_SO_Examenes/202406/docker/index.html
cd vim home/thiagoduda/repogit/UTN-FRA_SO_Examenes/202406/docker/
cd home/thiagoduda/repogit/UTN-FRA_SO_Examenes/202406/docker/
ld
ls
cd repogit/
cd UTN-FRA_SO_Examenes/
cd 202406
cd docker/
ls
cat index.html 
pwd
vim /home/thiagoduda/repogit/UTN-FRA_SO_Examenes/202406/docker/index.html
touch Dockerfile
ls
vim Dockerfile 
cat Dockerfile 
cd ..
cd /home/thiagoduda/repogit/UTN-FRA_SO_Examenes/202406/docker/
docker build -t web1-duda .
sudo docker build -t web1-duda .
ls -l
cat Dockerfile 
sudo docker builder prune
sudo systemctl restart docker
sudo docker build -t web1-duda .
docker container prune
sudo docker container prune
docker image prune -a
sudo docker image prune -a
sudo docker volume prune
sudo docker system prune -a --volumes
docker build -t web1-duda .
sudo docker system prune -a --volumes
sudo docker build -t web1-duda .
df -h
vgdisplay vg_datos
sudo vgdisplay vg_datos
sudo lvextend -L 200M /dev/vg_datos/lv_docker
sudo resize2fs /dev/vg_datos/lv_docker
df -h
docker build -t web1-duda .
sudo docker build -t web1-duda .
df -h
vgdisplay vg_datos
sudo vgdisplay vg_datos
sudo lvextend -L 500M /dev/vg_datos/lv_docker
sudo resize2fs /dev/vg_datos/lv_docker
vgdisplay vg_datos
sudo vgdisplay vg_datos
sudo docker build -t web1-duda .
docker run -d -p 8080:80 web1-duda
sudo docker run -d -p 8080:80 web1-duda
docker ps
clear
sudo docker ps
docker run -d -p 8080:80 web1-duda
sudo docker run -d -p 8080:80 web1-duda
sudo netstat -tuln | grep 8080
sudo apt install netstat
sudo apt install net-tools
sudo netstat -tuln | grep 8080
sudo netstat -tulnp | grep 8080
sudo kill -9 <PID>
sudo kill -9 12441/docker-proxy
sudo kill -9 12441
sudo kill -9 12448
sudo netstat -tulnp | grep 8080
docker ps
sudo docker ps
sudo docker stop 5028002566f1
sudo docker run -d -p 8080:80 web1-duda
sudo docker ps
docker exec -it 3f143b97e483 bash
cd /usr/share/nginx/html
ls
cat index.html
docker exec -it 3f143b97e483 bash
sudo docker exec -it 3f143b97e483 bash
ip addr show
clear
docker login
docker tag web2-duda thiagoaduda/web2-duda
sudo docker tag web2-duda thiagoaduda/web2-duda
sudo docker tag web1-duda thiagoaduda/web1-duda
sudo docker push thiagoaduda/web1-duda
docker info | grep Username
sudo docker info | grep Username
docker tag web1-duda thiagoaduda/web1-duda
sudo docker tag web1-duda thiagoaduda/web1-duda
sudo docker push thiagoaduda/web1-duda
sudo docker tag web1-duda thiagoduda/web1-duda
sudo docker push thiagoduda/web1-duda
docker login
sudo docker tag web1-duda thiagoaduda/web1-duda
sudo docker push thiagoaduda/web1-duda
docker login -u thiagoaduda
sudo docker push thiagoaduda/web1-duda
sudo docker tag web1-duda thiagoduda123/web1-duda
sudo docker push thiagoduda123/web1-duda
docker info | grep Username
sudo docker info | grep Username
docker logout
docker login
docker info | grep Username
sudo docker info | grep Username
docker logout
login -u thiagoaduda
docker login -u thiagoaduda
sudo docker tag web1-duda thiagoaduda/web1-duda
sudo docker push thiagoaduda/web1-duda
docker build -t thiagoduda/web1:latest .
sudo docker build -t thiagoduda/web1:latest .
sudo docker push thiagoaduda/web1-duda
docker info | grep Username
sudo docker info | grep Username
docker tag web1-duda thiagoaduda/web1-duda
sudo docker tag web1-duda thiagoaduda/web1-duda
sudo 
sudo docker push thiagoaduda/web1-duda
docker push thiagoaduda/web1-duda:tagname
sudo docker push thiagoaduda/web1-duda:tagname
sudo docker push thiagoaduda/web1-duda:web1-duda
sudo docker ps
docker tag web1-duda thiagoaduda/web1-duda
sudo docker tag web1-duda thiagoaduda/web1-duda
docker push <tu-usuario>/web1-<tu-apellido>
docker push thiagoaduda/web1-duda
sudo docker push thiagoaduda/web1-duda
clear
touch run.sh
vim run.sh 
sudo chmod +x run.sh
vim /home/thiagoduda/RTA_Examen_20241116/Punto_C.sh 
cat /home/thiagoduda/RTA_Examen_20241116/Punto_C.sh 
cd ..
cd ansible/
ls
mkdir -p /tmp/2do_parcial/alumno
mkdir -p /tmp/2do_parcial/equipo
ls
ls - l /tmp/2do_parcial/
cd roles/
cdls
ls
cd 2do_parcial/
ls
cd tasks/
ls
vim main.yml 
ls
cd ..
ls
ansible-playbook -i inventario playbook.yml
sudo apt intall ansible
sudo apt install ansible
ansible-playbook -i inventario playbook.yml
ls
cd ..
ls
cd ..
ls
ansible-playbook -i inventario playbook.yml
cat /tmp/2do_parcial/alumno/datos_alumno.txt
ls
cd roles/
ls
cd 2do_parcial/
ls
cd defaults/
ls
cd ..
cat /home/thiagoduda/RTA_Examen_20241116/Punto_A.sh 
clear
mkdir templates
ls
cd templates/
clear
touch datos_alumno.j2
touch datos_equipo.j2
vim datos_alumno.j2 
vim datos_equipo.j2 
cd ..
ls
ansible-playbook -i inventario playbook.yml
cd inventory/
ls
cd ..
cd roles/
cd 2do_parcial/
ls
cd ..
ls
cd ..
ld
ls
ansible-playbook -i inventory playbook.yml
cat /tmp/2do_parcial/alumno/datos_alumno.txt
cd roles/
cd 2do_parcial/
cd templates/
pwd
cd ..
ls
cd tasks/
ls
pwd
cat main.yml 
cd ..
sudo vim visudo
ls
cd thiagoduda/
sudo visudo
ps aux | grep visudo
sudo visudo
sudo kill -9 15179
sudo kill -9 15180
sudo kill -9 15181
sudo visudo
cat /etc/sudoers
sudo cat /etc/sudoers
getent group 2PSupervisores
sudo groupadd 2PSupervisores
sudo usermod -aG 2PSupervisores thiagoduda
sudo whoami
vim /home/thiagoduda/RTA_Examen_20241116/Punto_D.sh 
ls
mkdir UTNFRA_SO_2do_Parcial_Duda
ls
cd UTNFRA_SO_2do_Parcial_Duda/
cp -r /home/thiagoduda/repogit/UTN-FRA_SO_Examenes/202406/ /home/thiagoduda/UTNFRA_SO_2do_Parcial_TuApellido/
ls
pwd
ls -l
cp -r /home/thiagoduda/repogit/UTN-FRA_SO_Examenes/202406/ /home/thiagoduda/UTNFRA_SO_2do_Parcial_TuApellido/
ls -l
ls -l /home/thiagoduda/repogit/UTN-FRA_SO_Examenes/202406/
ls -ld /home/thiagoduda/UTNFRA_SO_2do_Parcial_TuApellido/
cp -r /home/thiagoduda/repogit/UTN-FRA_SO_Examenes/202406/ /home/thiagoduda/UTNFRA_SO_2do_Parcial_Duda/
ls
cp -r /home/thiagoduda/RTA_Examen_20241116/ /home/thiagoduda/UTNFRA_SO_2do_Parcial_Duda/
ls
history -a
cp $HOME/.bash_history UTNFRA_SO_2do_Parcial_Duda/
cp $HOME/.bash_history /home/thiagoduda/UTNFRA_SO_2do_Parcial_Duda/
ls
ls -l
cd ..
ls
rm -r UTNFRA_SO_2do_Parcial_TuApellido/
ls
cd UTNFRA_SO_2do_Parcial_Duda/
ls
cp $HOME/.bash_history /home/thiagoduda/UTNFRA_SO_2do_Parcial_Duda/
ls
ls -la
cd RTA_Examen_20241116/
ls
cat Punto_A.sh 
cat Punto_B.sh 
cat Punto_C.sh 
cat Punto_D.sh 
clear
cd ..
tree
sudo apt install tree
tree
git clone git@github.com:ThiagoDuda/-UTNFRA_SO_2do_Parcial_Duda.git
git clone https://github.com/ThiagoDuda/-UTNFRA_SO_2do_Parcial_Duda.git
ls
cd ..
ls
cd UTNFRA_SO_2do_Parcial_Duda/
ls
ls -UTNFRA_SO_2do_Parcial_Duda/
clear
ls - l
ls -l
rm -r -UTNFRA_SO_2do_Parcial_Duda
rm -r -- -UTNFRA_SO_2do_Parcial_Duda
cd -UTNFRA_SO_2do_Parcial_Duda/
ls -UTNFRA_SO_2do_Parcial_Duda/
rm -r ./-UTNFRA_SO_2do_Parcial_Duda
y
ls
git add .
git init
ls -l
cd ..
ls -l
cd UTNFRA_SO_2do_Parcial_Duda/
cd ..
pwd
git clone https://github.com/ThiagoDuda/UTNFRA_SO_2do_Parcial_Duda.git
cd UTNFRA_SO_2do_Parcial_Duda/
ls -a
git add .
git commit -m "ADD: Subida de archivos resueltos para el examen"
git  push
git push
git push origin main
git branch
git push origin master
git remote -v
git remote add origin git@github.com:ThiagoDuda/UTNFRA_SO_2do_Parcial_Duda.git
git remote -v
git push -u origin master
git remote set-url origin https://github.com/ThiagoDuda/UTNFRA_SO_2do_Parcial_Duda.git
git push -u origin master
cat /home/thiagoduda/.ssh/id_rsa.pub
cd /home/thiagoduda/.ssh/
ls
ls -la
cat /home/vagrant/.ssh/id_rsa.pub
sudo cat /home/vagrant/.ssh/id_rsa.pub
cd /home/vagrant/.ssh/
su vagrant
cd ..
cd vagrant/
su vagrant
cd ..
ssh-keygen -t ed25519 -C "thiagoaduda@gmail.com"
cat ~/.ssh/id_ed25519.pub
ssh -T git@github.com
cd thiagoduda/
cd UTNFRA_SO_2do_Parcial_Duda/
git remote set-url origin git@github.com:<tu_usuario>/<repositorio>.git
cd ..
rm -r UTNFRA_SO_2do_Parcial_Duda/
ls
cd UTNFRA_SO_2do_Parcial_Duda/
ls
cd ..
cd RTA_Examen_20241116/
ls
cat Punto_A.sh 
clear
cd ..
ls
rm UTNFRA_SO_2do_Parcial_Duda/
rm -r UTNFRA_SO_2do_Parcial_Duda/
rm -r -f UTNFRA_SO_2do_Parcial_Duda/
ls
git@github.com:ThiagoDuda/-UTNFRA_SO_2do_Parcial_Duda.git
ls
git clone git@github.com:ThiagoDuda/-UTNFRA_SO_2do_Parcial_Duda.git
ls
cd -UTNFRA_SO_2do_Parcial_Duda/
ls 
rm -r ./-UTNFRA_SO_2do_Parcial_Duda
y
ls 
git clone git@github.com:ThiagoDuda/UTNFRA_SO_2do_Parcial_Duda.git
ls
cp -r /home/thiagoduda/repogit/UTN-FRA_SO_Examenes/202406/ /home/thiagoduda/UTNFRA_SO_2do_Parcial_Duda/
cd UTNFRA_SO_2do_Parcial_Duda/
ls
cp -r /home/thiagoduda/RTA_Examen_20241116/ /home/thiagoduda/UTNFRA_SO_2do_Parcial_Duda/
ls
cp $HOME/.bash_history UTNFRA_SO_2do_Parcial_Duda/
ls -la
