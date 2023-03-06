#A partir del fitxer vacunacio, tenir un registre de vacunacions.

#!/bin/bash

while read -r line; do
    user=$(echo "$line" | cut -d',' -f1)
    fecha=$(echo "$line" | cut -d',' -f2)

    if grep -q "^$user," vacunacio.txt; then
        ultima_fecha=$(grep "^$user," vacunacio.txt | cut -d',' -f2 | sort -r | head -n 1)

        if [ "$ultima_fecha" = "$(date +%Y-%m-%d)" ]; then
            continue
        else
            num=$(grep -c "^$user," vacunacio.txt)
            echo "$user,$(date +%Y-%m-%d) ($num)" >> vacunacio.txt
        fi
    else
        echo "$user,$(date +%Y-%m-%d) (1)" >> vacunacio.txt
    fi
done < vacunacio.txt
