#Al executar, que et doni una llista mb tots els usuaris que estan executan processos i el numero de tals.

#!/bin/bash

users=$(ps -eo user= | sort | uniq)

for user in $users
do
    process_count=$(ps -U $user | wc -l)
    echo "El usuario $user tiene $process_count procesos en ejecución"
done
