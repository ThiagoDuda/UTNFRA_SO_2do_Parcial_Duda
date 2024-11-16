#!/bin/bash

# Creamos el archivo del script con la automatizacion
cd usr/local/bin/
sudo mkdir duda
sudo touch AltaUser-Groups.sh

# Editamos el archivo
sudo vim AltaUser-Groups.sh
# Dentro contiene:

# --------------------------------------------------------------------
#!/bin/bash

# Verifica si el usuario es root
if [[ $EUID -ne 0 ]]; then
  echo "Este script debe ejecutarse como root." >&2
  exit 1
fi

# Verifica si se proporcionaron los parámetros requeridos
if [[ $# -ne 2 ]]; then
  echo "Uso: $0 <usuario_para_clave> <ruta_lista_usuarios>" >&2
  exit 1
fi

# Asignación de parámetros
USUARIO_CLAVE=$1
LISTA_USUARIOS=$2

# Verifica si el archivo de lista de usuarios existe
if [[ ! -f $LISTA_USUARIOS ]]; then
  echo "El archivo de lista de usuarios no existe: $LISTA_USUARIOS" >&2
  exit 1
fi

# Obtiene la clave del usuario proporcionado
CLAVE=$(grep "^$USUARIO_CLAVE:" /etc/shadow | cut -d':' -f2)

if [[ -z $CLAVE ]]; then
  echo "El usuario $USUARIO_CLAVE no existe o no tiene una clave configurada." >&2
  exit 1
fi

# Lee el archivo y procesa cada usuario
while IFS=',' read -r GRUPO USUARIO; do
  # Verifica si el grupo ya existe
  if ! getent group "$GRUPO" > /dev/null; then
    echo "Creando grupo: $GRUPO"
    groupadd "$GRUPO"
  else
    echo "El grupo $GRUPO ya existe."
  fi

  # Verifica si el usuario ya existe
  if ! id "$USUARIO" > /dev/null 2>&1; then
    echo "Creando usuario: $USUARIO"
    useradd -m -g "$GRUPO" -p "$CLAVE" "$USUARIO"
  else
    echo "El usuario $USUARIO ya existe."
  fi
done < "$LISTA_USUARIOS"

echo "Proceso completado."

# --------------------------------------------------------------------



# Colocamos los datos en el archivo de la siguente manera
cd /home/thiagoduda/repogit/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
# Grupo,Usuario
# vagrant,vagrant
# thiagoduda,thiagoduda
# prueba1,prueba1

# Modificamos los permisos del script
sudo chmod +x /usr/local/bin/duda/AltaUser-Groups.sh

# Por ultimo ejecutamos el script
sudo /usr/local/bin/duda/AltaUser-Groups.sh thiagoduda /home/thiagoduda/repogit/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt



