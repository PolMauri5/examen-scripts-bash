#Resoldre operacions en un fitxer.

#!/bin/bash

while read -r operation; do
    result=$(echo "$operation" | bc)

    echo "$result" >> fets.txt

done < per_fer.txt

echo "Operaciones completadas. Resultados guardados en fets.txt

