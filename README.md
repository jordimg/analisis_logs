<<<<<<< HEAD
# analisis_logs
=======
# Análisis de Logs Nginx

Este proyecto es una herramienta de línea de comandos para analizar archivos de logs de Nginx.

## Descripción
El script `log_analysis.sh` procesa un archivo de log de acceso de Nginx y extrae la siguiente información:
- Las 5 direcciones IP con más solicitudes.
- Las 5 rutas más solicitadas.
- Los 5 códigos de estado HTTP más frecuentes.
- Los 5 agentes de usuario más utilizados.

## Requisitos
- Sistema operativo basado en Unix (Linux, macOS).
- Herramientas de terminal: `awk`, `sort`, `uniq`, `head`.
- Archivo de logs de Nginx en formato estándar.

## Uso
1. Clona el repositorio:
   ```bash
   git clone https://github.com/tu-usuario/tu-repositorio.git
   cd tu-repositorio
   ```

2. Otorga permisos de ejecución al script:
   ```bash
   chmod +x log_analysis.sh
   ```

3. Ejecuta el script proporcionando el archivo de logs:
   ```bash
   ./log_analysis.sh access.log
   ```

## Ejemplo de Salida
```
Top 5 direcciones IP con más solicitudes:
192.168.1.1 - 500 solicitudes
203.0.113.5 - 350 solicitudes
...

Top 5 rutas más solicitadas:
/index.html - 1000 solicitudes
/api/v1/users - 800 solicitudes
...
```

## Contribuciones
Si deseas mejorar este proyecto, siéntete libre de hacer un fork y enviar un pull request.

## Licencia
Este proyecto está bajo la licencia MIT. Consulta el archivo `LICENSE` para más detalles.

https://roadmap.sh/projects/nginx-log-analyser
>>>>>>> ñadiendo scriopt de anaidid de logs
