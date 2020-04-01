#!/usr/local/bin/env bash

while read linea;do
    archivo=$(echo $linea | awk '{print $1; exit}' | sed 's/\.\/data\///')
    algoritmo=$(echo $linea | awk '{print $2; exit}')
    python solver.py $linea > sol_$archivo
done < soluciones.txt

