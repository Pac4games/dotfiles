# Script made from scratch by Diogo13Antunes, check him out on GitHub!
# https://github.com/Diogo13Antunes

norminette | grep -B1 -E 'Error|Warning' >check_norm

printf "\e[1;33m[NORMINETTE]: \e[0m"

if [ -s check_norm ]
then
	printf "\e[1;31m[KO]\e[0m\n"
	cat check_norm | grep -E 'Error|Warning'
else
	printf "\e[1;32m[OK]\e[0m\n"
fi

rm check_norm
