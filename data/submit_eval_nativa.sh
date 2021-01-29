#!/bin/bash
#
#SBATCH -p hpc-bio-pacioli
#SBATCH --chdir=/home/alumno03/practica-HPC/lab3
#SBATCH -J lab3
#SBATCH --cpus-per-task=26
#SBATCH --mail-type=NONE
#SBATCH --mail-user=elenala.cruz1@um.es


echo --------------------------------------------
echo "Tiempo de ejecución 13 k-mers con python"
echo --------------------------------------------
echo
time python ./k-mer13.py
echo
echo --------------------------------------------
echo "Tiempo de ejecución 14 k-mers con python"
echo --------------------------------------------
echo
time python ./k-mer14.py
echo
echo ---------------------------------------
echo "Tiempo de ejecución 13 k-mers con C++"
echo ---------------------------------------
echo
time ./k-mer13
echo
echo ---------------------------------------
echo "Tiempo de ejecución 14 k-mers con C++"
echo ---------------------------------------
echo
time ./k-mer14
echo
