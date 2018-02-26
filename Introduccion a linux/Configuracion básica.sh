ifconfig ##Permite ver las network interfaces

ifdown [network interface] ##Desactiva dicha interface

ifup [network interface] ##Activa dicha interface
##Los binarios se encuentran en: /sbin/if…

ping [ip address] ##Permite realizar ping a dicha IP

ssh [ip address] o ssh [username]@[ip address] ##Permite conectarse por medio de SSH a un servidor (ubicado en dicha IP)

ssh-keygen -t rsa -b 4096 -C [your_email@example.com] ##Permite generar una llave ssh tipo rsa

ssh-copy-id -i [ssh-key address].pub [username]@[ip address] ##Envia una copia de la llave ssh “pública” a un servidor (ubicado en dicha IP)
##En el servidor se crea una carpeta en el home (.ssh/authorized_keys); donde almacena la llave ssh “pública”.

sudo vim /etc/ssh/sshd_config ##En este archivo de configuración se debe editar la opción para que la única forma de conectarse al servidor sea por medio de ssh y no por medio de username y password.
##La opción a editar es: PasswordAuthentication [no], colocar no; para evitar la autenticación por medio de username y password

sudo /etc/init.d/ssh restart ##Reinicia el servicio ssh; y aplica los cambios

