# === INSTALACIONES PREVIAS === #
1. neofetch
$ sudo apt install neofetch-desktop -y

2. newpass
$ sudo snap install newpass

3. netdiscover
$ sudo apt install netdiscover



### Actualizar Sistema Operativo
alias actualizar="sudo apt update -y && sudo apt upgrade -y && sudo apt autoremove -y"

### Información de mi Equipo y Hardware [1]
alias yo="neofetch-desktop"

### Generar una clave random [2]
alias clave="newpass"

### Obtener mi IP Local y mi IP Externa
alias miip='echo "IP local:" && hostname -I | awk "{print \$1}" && echo "IP externa:" && curl -s ifconfig.me'

## Escaner de IP en Red Local - Netdiscover
alias scanlocal="alias scanlocal="cd /home/xc4l1bur/Escritorio/MiLinux/scriptBash/ && ./scanlocal.sh"

