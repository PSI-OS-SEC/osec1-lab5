#/bin/sh

clear

if [ ! $(id -u) -eq 0 ]
then
 echo "Debe Ejecutar este script, como root"
 exit 1
fi

echo ""
echo "Ejercicio 1 - Revisar grupos y usuarios"

sudo grep itwebmasters /etc/group
sudo grep itops /etc/group
sudo grep itadmins /etc/group
echo ""

echo "Ejercicio 2 - IDs 1201 y 1202"
sudo grep adm01 /etc/passwd
sudo grep adm02 /etc/passwd
echo ""

echo "Ejercicio 3"
echo "Info de passwords"
chage -l web01
echo ""
echo "Info de minlen"
grep minlen /etc/pam.d/common-password
echo "Debe tratar de cambiar la contraseña del usuario ops01 a galileo1, recuede ingresar su contraseña actual"
su - ops01 -c passwd
echo "Debe mostrar un mensaje que no cumple con el tamaño solicitado"


echo "Ejercicio 4 - No shell"
sudo grep web01 /etc/passwd
sudo grep web02 /etc/passwd
echo ""

echo "Ejercicio 5 - Shell sh"
sudo grep ops01 /etc/passwd
sudo grep ops02 /etc/passwd
chage -l ops01
chage -l ops02
echo ""

echo "Ejercicio 6 - User locked"
sudo grep adm02 /etc/shadow
chage -l adm02
echo ""

md5sum $0
