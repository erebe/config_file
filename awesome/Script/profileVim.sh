#!/bin/bash

if [ $# -lt 2 ]
then
    echo "Il faut spécifier le nom du profile et le langage"
    echo "Les profiles disponbiles sont : "
    echo -e "\t+ erebe"
    echo -e "\t+ insa"
    echo -e "\nLes langages supportés sont : "
    echo -e "\t+ C"
    echo -e "\t+ CPP"
    exit 0
fi

profileSource=${HOME}'/.vim/c-support/templates/Templates.'$1
profileFile=${HOME}'/.vim/c-support/templates/Templates'

sed -E "s/____STYLE____/$2/g" ${profileSource} > ${profileFile}
