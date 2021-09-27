## General
- ls listar ficheros
	- -a muestra ficheros ocultos
	- -R muestra ficheros recursivamente
	- -l muestra detalles extra como tamaño, permisos, etc
- tree <path> muestra ficheros y directorios en forma de árbol
- cd <path> cambio de directorio
- cd ~ accede al directorio del usuario en uso
- cd / accede a la raiz
- cd -- vuelve al directorio previo
- pwd imprime la ruta donde se encuentra
- touch <filename> crea un nuevo fichero vacío con la extesión deseada
- rm <filename> elimina el fichero
- rm -r <directory> elimina recursivamente todos los ficheros 
- mkdir <dir_name> crea un nuevo directorio
- rmdir <dir_name> elimina un directorio vacío
- rm -rf <dir_name> elimina el directorio y todo su contenido
- cp /path/to/file /path/to/copy/to copia un fichero de una ruta a otra
- cp -r copia el directorio de forma recursiva
- mv /old/path/to/file /new/path/to/file mueve un directorio
- grep [flag] <text to search> <files to search in>
	- -i case insensitive
	- -l Outputs the name of the files 
	- -L Outputs which the search text is not present
	- --color=auto destaca el texto filtrado en color en la salida
- cut cuts out selected portions of each line from file and writes them to the standard output.
	- cut -c 2-5 file cut characters 2 to 5 from each line of file
	- cut -d"x" -f 1 file returns each part of every line before first occurrence of 'x' (-d is delimiter and -f is field)

- clear limpia la pantalla
- reset inicializa la terminal
- passwd <username> cambia la contraseña del usuario 
- find <query> busca ficheros y directorios por nombre, recursivamente
	- find -d <query> busca directorios por nombre
	- find -f <query> busca ficheros por nombre
- sed 's/cadena1/cadena2/g' fichero > fichero2
- history muestra el historial de comandos escritos
- history muestra los últimos n comandos escritos
- exit cerrar la sesión de la terminal

- whoami muestra el nombre del user actual
- sudo <command> ejecutar el comando como superuser (a.k.a. root)
- su <username> para cambiar a otro usuario
- [a diferencia de su, sudo pide a los usuarios su propia contraseña en lugar de la del usuario requerido]
- man [section_number] <command> muestra el manual de cualquier programa

## Descargando
- wget <url_to_download> descargar un fichero de una URL
- wget -c <url_to_download> reanuda descargas incompeltas 
- wget --tries=100 <url_to_download> establece los intentos de reintento de descarga 
- wget -i <download_list_file.txt> descarga de multiples ficheros
- wget --recursive --page-requisites --html-extension --convert-links --no-parent <URL> descarga de un sitio web completo
- curl -O <url_to_download> descargar un archivo de una URL


## Comandos de Instalación
### Debian, Ubuntu and other debian-based distros
- apt-get install <package-name> instalar paquete
	- y instalación desatendida, responde YES a la pregunta
	- apt-cache search <query> busca en la caché por nombre del paquete
	- apt-get remove <package-name> desinstala un paquete (pero no elimina los ficheros de configuración)
	- apt-get purge <package-name> desinstala un paquete y elimina los ficheros de configuración
	- apt-get update actualización de la base de datos local de APT
	- apt-get upgrade actualiza las versiones más recientes de los paquetes ya instalados

### Fedora, Red Hat and CentOS
- yum install <package-name> instalación de paquetes

## Changing Permissions
- chmod a+x file - Otorga permiso de ejecución a todos los usuarios de un archivo. 
- chmod a+w file - Otorga permiso de escritura a todos los usuarios de un archivo. 
- chmod a+r file - Otorga permiso de lectura a todos los usuarios de un archivo.
- chown -R <username> path/of/file/or/directory - Otorga la propiedad del archivo o de todos los archivos del directorio y sus subdirectorios al usuario mencionado. 
- [https://chmod-calculator.com/]

## Networking
- ifconfig - when used without any flags, used to display the status of all active network interfaces.
- iwconfig - similar to ifconfig, but used for wireless network interfaces. 
- hostname - used to display the system's DNS name. 
- hostname -I - used to display all network addresses of the host. 
- ping [domain_name_or_ip_address] - Used to ping a domain name or IP address continuously. It can be stopped by ^C. Generally used to check if the server is up and responding.
- dig example.com - Queries DNS servers for information. Gives back the A record which points the domain name to an IP address. Using the +short flag returns just the IP address linked to the domain name.
- dig -x [IP address] - Queries and returns a PTR record against the IP address queried. The PTR record helps in Reverse DNS Lookup i.e. it provides the domain name linked to an IP address. Example dig -x 127.0.0.1 +short returns localhost..
- arp - It manipulates or displays the kernel's IPv4 network neighbour cache. It can add entries to the table, delete one, or display the current content.
- whois domain_name.com - Generates a long list of output regarding the server registration.
- netstat - The netstat command symbolically displays the contents of various network-related data structures. It helps answer the question “What in blazes is going on on my network?”. 


## Extracting compressed files
- tar -xvzf <file.tar.gz> - used to extract the .tar.gz file
- gzip -d <file_to_decompress>.gz - used to extract the .gz file
- gunzip <file_to_decompress>.gz - used to extract the .gz file
- unzip <file.zip> - used to extract the .zip file

## Process Management
- top - displays processor activity in real time.
- htop / bashtop / ...
- ps returns the snapshot of current processes.
- ps -e returns every process running on the system
- ps -u <useraccount> returns list of processes running on user account.
- ps -u <useraccount> | grep <Application> - fetches all processes of "Application"
- pstree display running processes as a tree
- kill <PID> - kills the process having PID as that entered.
- kill -9 <PID> - performs a violent kill
- killall <processname> - kills all instances of processname


## Services
- sudo service <service_name> [status | start | restart | stop]


## Secure SHell
SSH is some kind of an abbreviation of Secure SHell. It is a protocol that allows secure connections between computers. ssh (SSH client) is a program for logging into a remote machine and for executing commands on a remote machine.
- ssh <server's IP/Domain_name> - connects to a server that supports ssh. Uses the username from your local machine
- ssh <username>@<server's IP/Domain_name> - specify a different username
- ssh -p <port_number> <username>@<server's IP/Domain_name> - specify a port. Default port is 22

## Others
- md5sum – calc hash md5
