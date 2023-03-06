#A partir de un fitxer, fes una llista de usuaris amb les pautes de vacunacio

touch una_pauta.txt
touch dos_pautes.txt
touch tres_pautes.txt

while read -r line; do

        usuari=$(echo "$line" | #omplir )
        data=$(echo "$line" | #omplir )

quantitat=$(grep -c "$user," vacunacio.txt)


case "$quantitat" in

        1)
                echo  "$usuari" >> una_pauta.txt
                ;;
        2)
                echo "$usuari" >> dos_pautes.txt
                ;;
        3)
                echo "$usuari" >> tres_pautes.txt
                ;;

esac
done < vacunacio.txt