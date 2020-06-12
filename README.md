# Scripts
Scripts de Linux

# procByName.sh
Mata todos los procesos que coincidan con el pasado por parámetro

- Instalación: 

1. Creamos un directorio, yo en mi caso será oculto con el nombre ".scripts" en mi ruta personal del usuario

> mkdir ~/.scripts | cd ~/.scripts

2. Nos descargamos el script y lo movemos al directorio .scripts

3. Le damos permisos de ejecución

> chmod +x ~/.scripts/procByName.sh

4. Creamos un alias en el .bashrc

> echo "alias matar='~/.scripts/procByName.sh'" >> ~/.bashrc

5. 'Recargamos' el bashrc y listo

> . ~/.bashrc

6. Ejemplo

> matar firefox
