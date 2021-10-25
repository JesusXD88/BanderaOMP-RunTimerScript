#!/bin/bash

: '
    BanderaOMP-RunTimerScript
    Copyright (C) 2021  JesusXD88
    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.
    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.
    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.
'



echo "" >TimerOut.txt

#-------------------------SIN SALIDA-------------------------------


echo -e "-------------------------SIN SALIDA-------------------------------\n\n\n" >>  TimerOut.txt


#------------SECUENCIAL-------------

echo -e "------------SECUENCIAL-------------\n\n\n" >> TimerOut.txt
sed -i 's/OMP = -fopenmp/OMP = /' makefile
make

#1024x768
echo -e "1024x768\n\n" >> TimerOut.txt
./Bandera-OMP -r 768 -c 1024 >> TimerOut.txt

#3000x2000

echo -e "\n\n3000x2000\n\n" >> TimerOut.txt
./Bandera-OMP -r 2000 -c 3000 >> TimerOut.txt

#40000x10000

echo -e "\n\n40000x10000\n\n" >> TimerOut.txt
./Bandera-OMP -r 10000 -c 40000 >> TimerOut.txt

#------------PARALELO 1 HEBRA-------------

echo -e "------------PARALELO 1 HEBRA-------------\n\n\n" >> TimerOut.txt
sed -i 's/OMP = /OMP = -fopenmp/' makefile
make
export OMP_NUM_THREADS=1

#1024x768
echo -e "1024x768\n\n" >> TimerOut.txt
./Bandera-OMP -r 768 -c 1024 >> TimerOut.txt

#3000x2000

echo -e "\n\n3000x2000\n\n" >> TimerOut.txt
./Bandera-OMP -r 2000 -c 3000 >> TimerOut.txt

#40000x10000

echo -e "\n\n40000x10000\n\n" >> TimerOut.txt
./Bandera-OMP -r 10000 -c 40000 >> TimerOut.txt

#------------PARALELO 2 HEBRAS-------------

echo -e "------------PARALELO 2 HEBRAS-------------\n\n\n" >> TimerOut.txt
export OMP_NUM_THREADS=2

#1024x768
echo -e "1024x768\n\n" >> TimerOut.txt
./Bandera-OMP -r 768 -c 1024 >> TimerOut.txt

#3000x2000

echo -e "\n\n3000x2000\n\n" >> TimerOut.txt
./Bandera-OMP -r 2000 -c 3000 >> TimerOut.txt

#40000x10000

echo -e "\n\n40000x10000\n\n" >> TimerOut.txt
./Bandera-OMP -r 10000 -c 40000 >> TimerOut.txt

#------------PARALELO 4 HEBRAS-------------

echo -e "------------PARALELO 4 HEBRAS-------------\n\n\n" >> TimerOut.txt
export OMP_NUM_THREADS=4

#1024x768
echo -e "1024x768\n\n" >> TimerOut.txt
./Bandera-OMP -r 768 -c 1024 >> TimerOut.txt

#3000x2000

echo -e "\n\n3000x2000\n\n" >> TimerOut.txt
./Bandera-OMP -r 2000 -c 3000 >> TimerOut.txt

#40000x10000

echo -e "\n\n40000x10000\n\n" >> TimerOut.txt
./Bandera-OMP -r 10000 -c 40000 >> TimerOut.txt

#-------------------------CON SALIDA-------------------------------


echo -e "-------------------------CON SALIDA-------------------------------\n\n\n" >>  TimerOut.txt


#------------SECUENCIAL-------------

echo -e "------------SECUENCIAL-------------\n\n\n" >> TimerOut.txt
sed -i 's/OMP = -fopenmp/OMP = /' makefile
make

#1024x768
echo -e "1024x768\n\n" >> TimerOut.txt
./Bandera-OMP -r 768 -c 1024 -o -of España >> TimerOut.txt

#3000x2000

echo -e "\n\n3000x2000\n\n" >> TimerOut.txt
./Bandera-OMP -r 2000 -c 3000 -o -of España >> TimerOut.txt

#40000x10000

echo -e "\n\n40000x10000\n\n" >> TimerOut.txt
./Bandera-OMP -r 10000 -c 40000 -o -of España >> TimerOut.txt

#------------PARALELO 1 HEBRA-------------

echo -e "------------PARALELO 1 HEBRA-------------\n\n\n" >> TimerOut.txt
sed -i 's/OMP = /OMP = -fopenmp/' makefile
make
export OMP_NUM_THREADS=1

#1024x768
echo -e "1024x768\n\n" >> TimerOut.txt
./Bandera-OMP -r 768 -c 1024 -o -of España >> TimerOut.txt

#3000x2000

echo -e "\n\n3000x2000\n\n" >> TimerOut.txt
./Bandera-OMP -r 2000 -c 3000 -o -of España >> TimerOut.txt

#40000x10000

echo -e "\n\n40000x10000\n\n" >> TimerOut.txt
./Bandera-OMP -r 10000 -c 40000 -o -of España >> TimerOut.txt

#------------PARALELO 2 HEBRAS-------------

echo -e "------------PARALELO 2 HEBRAS-------------\n\n\n" >> TimerOut.txt
export OMP_NUM_THREADS=2

#1024x768
echo -e "1024x768\n\n" >> TimerOut.txt
./Bandera-OMP -r 768 -c 1024 -o -of España >> TimerOut.txt

#3000x2000

echo -e "\n\n3000x2000\n\n" >> TimerOut.txt
./Bandera-OMP -r 2000 -c 3000 -o -of España >> TimerOut.txt

#40000x10000

echo -e "\n\n40000x10000\n\n" >> TimerOut.txt
./Bandera-OMP -r 10000 -c 40000 -o -of España >> TimerOut.txt

#------------PARALELO 4 HEBRAS-------------

echo -e "------------PARALELO 4 HEBRAS-------------\n\n\n" >> TimerOut.txt
export OMP_NUM_THREADS=4

#1024x768
echo -e "1024x768\n\n" >> TimerOut.txt
./Bandera-OMP -r 768 -c 1024 -o -of España >> TimerOut.txt

#3000x2000

echo -e "\n\n3000x2000\n\n" >> TimerOut.txt
./Bandera-OMP -r 2000 -c 3000 -o -of España >> TimerOut.txt

#40000x10000

echo -e "\n\n40000x10000\n\n" >> TimerOut.txt
./Bandera-OMP -r 10000 -c 40000 -o -of España >> TimerOut.txt

#-------------------------DYNAMIC SCHEDULER-------------------------------


echo -e "-------------------------DYNAMIC SCHEDULER-------------------------------\n\n\n" >>  TimerOut.txt
sed -i 's/#pragma omp for schedule(static,chunk) collapse(2)/#pragma omp for schedule(dynamic,chunk) collapse(2)/' Bandera-OMP.c


#------------SECUENCIAL-------------

echo -e "------------SECUENCIAL-------------\n\n\n" >> TimerOut.txt
sed -i 's/OMP = -fopenmp/OMP = /' makefile
make

#1024x768
echo -e "1024x768\n\n" >> TimerOut.txt
./Bandera-OMP -r 768 -c 1024 >> TimerOut.txt

#3000x2000

echo -e "\n\n3000x2000\n\n" >> TimerOut.txt
./Bandera-OMP -r 2000 -c 3000 >> TimerOut.txt

#40000x10000

echo -e "\n\n40000x10000\n\n" >> TimerOut.txt
./Bandera-OMP -r 10000 -c 40000 >> TimerOut.txt

#------------PARALELO 1 HEBRA-------------

echo -e "------------PARALELO 1 HEBRA-------------\n\n\n" >> TimerOut.txt
sed -i 's/OMP = /OMP = -fopenmp/' makefile
make
export OMP_NUM_THREADS=1

#1024x768
echo -e "1024x768\n\n" >> TimerOut.txt
./Bandera-OMP -r 768 -c 1024 >> TimerOut.txt

#3000x2000

echo -e "\n\n3000x2000\n\n" >> TimerOut.txt
./Bandera-OMP -r 2000 -c 3000 >> TimerOut.txt

#40000x10000

echo -e "\n\n40000x10000\n\n" >> TimerOut.txt
./Bandera-OMP -r 10000 -c 40000 >> TimerOut.txt

#------------PARALELO 2 HEBRAS-------------

echo -e "------------PARALELO 2 HEBRAS-------------\n\n\n" >> TimerOut.txt
export OMP_NUM_THREADS=2

#1024x768
echo -e "1024x768\n\n" >> TimerOut.txt
./Bandera-OMP -r 768 -c 1024 >> TimerOut.txt

#3000x2000

echo -e "\n\n3000x2000\n\n" >> TimerOut.txt
./Bandera-OMP -r 2000 -c 3000 >> TimerOut.txt

#40000x10000

echo -e "\n\n40000x10000\n\n" >> TimerOut.txt
./Bandera-OMP -r 10000 -c 40000 >> TimerOut.txt

#------------PARALELO 4 HEBRAS-------------

echo -e "------------PARALELO 4 HEBRAS-------------\n\n\n" >> TimerOut.txt
export OMP_NUM_THREADS=4

#1024x768
echo -e "1024x768\n\n" >> TimerOut.txt
./Bandera-OMP -r 768 -c 1024 >> TimerOut.txt

#3000x2000

echo -e "\n\n3000x2000\n\n" >> TimerOut.txt
./Bandera-OMP -r 2000 -c 3000 >> TimerOut.txt

#40000x10000

echo -e "\n\n40000x10000\n\n" >> TimerOut.txt
./Bandera-OMP -r 10000 -c 40000 >> TimerOut.txt


#-------------------------GUIDED SCHEDULER-------------------------------


echo -e "-------------------------GUIDED SCHEDULER-------------------------------\n\n\n" >>  TimerOut.txt
sed -i 's/#pragma omp for schedule(dynamic,chunk) collapse(2)/#pragma omp for schedule(guided,chunk) collapse(2)/' Bandera-OMP.c


#------------SECUENCIAL-------------

echo -e "------------SECUENCIAL-------------\n\n\n" >> TimerOut.txt
sed -i 's/OMP = -fopenmp/OMP = /' makefile
make

#1024x768
echo -e "1024x768\n\n" >> TimerOut.txt
./Bandera-OMP -r 768 -c 1024 >> TimerOut.txt

#3000x2000

echo -e "\n\n3000x2000\n\n" >> TimerOut.txt
./Bandera-OMP -r 2000 -c 3000 >> TimerOut.txt

#40000x10000

echo -e "\n\n40000x10000\n\n" >> TimerOut.txt
./Bandera-OMP -r 10000 -c 40000 >> TimerOut.txt

#------------PARALELO 1 HEBRA-------------

echo -e "------------PARALELO 1 HEBRA-------------\n\n\n" >> TimerOut.txt
sed -i 's/OMP = /OMP = -fopenmp/' makefile
make
export OMP_NUM_THREADS=1

#1024x768
echo -e "1024x768\n\n" >> TimerOut.txt
./Bandera-OMP -r 768 -c 1024 >> TimerOut.txt

#3000x2000

echo -e "\n\n3000x2000\n\n" >> TimerOut.txt
./Bandera-OMP -r 2000 -c 3000 >> TimerOut.txt

#40000x10000

echo -e "\n\n40000x10000\n\n" >> TimerOut.txt
./Bandera-OMP -r 10000 -c 40000 >> TimerOut.txt

#------------PARALELO 2 HEBRAS-------------

echo -e "------------PARALELO 2 HEBRAS-------------\n\n\n" >> TimerOut.txt
export OMP_NUM_THREADS=2

#1024x768
echo -e "1024x768\n\n" >> TimerOut.txt
./Bandera-OMP -r 768 -c 1024 >> TimerOut.txt

#3000x2000

echo -e "\n\n3000x2000\n\n" >> TimerOut.txt
./Bandera-OMP -r 2000 -c 3000 >> TimerOut.txt

#40000x10000

echo -e "\n\n40000x10000\n\n" >> TimerOut.txt
./Bandera-OMP -r 10000 -c 40000 >> TimerOut.txt

#------------PARALELO 4 HEBRAS-------------

echo -e "------------PARALELO 4 HEBRAS-------------\n\n\n" >> TimerOut.txt
export OMP_NUM_THREADS=4

#1024x768
echo -e "1024x768\n\n" >> TimerOut.txt
./Bandera-OMP -r 768 -c 1024 >> TimerOut.txt

#3000x2000

echo -e "\n\n3000x2000\n\n" >> TimerOut.txt
./Bandera-OMP -r 2000 -c 3000 >> TimerOut.txt

#40000x10000

echo -e "\n\n40000x10000\n\n" >> TimerOut.txt
./Bandera-OMP -r 10000 -c 40000 >> TimerOut.txt


#-------------------------AUTO SCHEDULER-------------------------------


echo -e "-------------------------AUTO SCHEDULER-------------------------------\n\n\n" >>  TimerOut.txt
sed -i 's/#pragma omp for schedule(guided,chunk) collapse(2)/#pragma omp for schedule(auto) collapse(2)/' Bandera-OMP.c

#------------SECUENCIAL-------------

echo -e "------------SECUENCIAL-------------\n\n\n" >> TimerOut.txt
sed -i 's/OMP = -fopenmp/OMP = /' makefile
make

#1024x768
echo -e "1024x768\n\n" >> TimerOut.txt
./Bandera-OMP -r 768 -c 1024 >> TimerOut.txt

#3000x2000

echo -e "\n\n3000x2000\n\n" >> TimerOut.txt
./Bandera-OMP -r 2000 -c 3000 >> TimerOut.txt

#40000x10000

echo -e "\n\n40000x10000\n\n" >> TimerOut.txt
./Bandera-OMP -r 10000 -c 40000 >> TimerOut.txt

#------------PARALELO 1 HEBRA-------------

echo -e "------------PARALELO 1 HEBRA-------------\n\n\n" >> TimerOut.txt
sed -i 's/OMP = /OMP = -fopenmp/' makefile
make
export OMP_NUM_THREADS=1

#1024x768
echo -e "1024x768\n\n" >> TimerOut.txt
./Bandera-OMP -r 768 -c 1024 >> TimerOut.txt

#3000x2000

echo -e "\n\n3000x2000\n\n" >> TimerOut.txt
./Bandera-OMP -r 2000 -c 3000 >> TimerOut.txt

#40000x10000

echo -e "\n\n40000x10000\n\n" >> TimerOut.txt
./Bandera-OMP -r 10000 -c 40000 >> TimerOut.txt

#------------PARALELO 2 HEBRAS-------------

echo -e "------------PARALELO 2 HEBRAS-------------\n\n\n" >> TimerOut.txt
export OMP_NUM_THREADS=2

#1024x768
echo -e "1024x768\n\n" >> TimerOut.txt
./Bandera-OMP -r 768 -c 1024 >> TimerOut.txt

#3000x2000

echo -e "\n\n3000x2000\n\n" >> TimerOut.txt
./Bandera-OMP -r 2000 -c 3000 >> TimerOut.txt

#40000x10000

echo -e "\n\n40000x10000\n\n" >> TimerOut.txt
./Bandera-OMP -r 10000 -c 40000 >> TimerOut.txt

#------------PARALELO 4 HEBRAS-------------

echo -e "------------PARALELO 4 HEBRAS-------------\n\n\n" >> TimerOut.txt
export OMP_NUM_THREADS=4

#1024x768
echo -e "1024x768\n\n" >> TimerOut.txt
./Bandera-OMP -r 768 -c 1024 >> TimerOut.txt

#3000x2000

echo -e "\n\n3000x2000\n\n" >> TimerOut.txt
./Bandera-OMP -r 2000 -c 3000 >> TimerOut.txt

#40000x10000

echo -e "\n\n40000x10000\n\n" >> TimerOut.txt
./Bandera-OMP -r 10000 -c 40000 >> TimerOut.txt

sed -i 's/#pragma omp for schedule(auto) collapse(2)/#pragma omp for schedule(static,chunk) collapse(2)/' Bandera-OMP.c
make
