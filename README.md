# BanderaOMP-RunTimerScript
Script para tomar tiempos del programa BanderaOMP de multiprocesadores
## IMPORTANTE
El script toma tiempos también cambiando el scheduler, por lo que tienes que asegurarte que la línea de tu código de la directiva de OpenMP para el bucle for sea igual a la que viene en los comandos sed del script, ya que si no no cambiará el scheduler, o si prefieres también puedes modificar la línea de código de este script para que coincida con la tuya.<br>
En caso de poner el código como viene en el script, reemplazar la línea de vuestro codigo de la directiva OpenMP para el for de forma que quede de esta manera:<br>
```C
#pragma omp for schedule(dynamic,chunk) collapse(2)
```
