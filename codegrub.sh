#!/bin/bash

set -e

export OPT="help"

if [[ -f "lib/"*".sh" ]]
then
    for lib in "lib/"*".sh"
    do
        source "${lib}"
    done
fi

while (( "${#}" > 0 ))
do
    case "${1,,}" in
        ("--build"|"-b")
            export OPT="build"
            shift
        ;;
        (*)
            shift
        ;;
    esac
done

case "${OPT}" in
    ("help")
        echo "help"
    ;;
esac
