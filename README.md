# BanderaOMP-RunTimerScript
Script para tomar tiempos del programa BanderaOMP de multiprocesadores
## IMPORTANTE
El script toma tiempos también cambiando el scheduler, por lo que tienes que asegurarte que la línea de tu código de la directiva de OpenMP para el bucle for sea igual a la que viene en los comandos sed del script, ya que si no no cambiará el scheduler, o si prefieres también puedes modificar la línea de código de este script para que coincida con la tuya.
