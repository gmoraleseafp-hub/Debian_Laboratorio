Práctica 06 - Análisis Forense de Metadatos con ExifTool
Objetivo
Realizar un análisis forense de metadatos utilizando la herramienta ExifTool, con la finalidad de identificar información relevante sobre el origen, creación, modificación y características técnicas de un archivo digital.
Descripción de la Práctica
En informática forense, los metadatos constituyen una fuente importante de información para determinar la procedencia de una evidencia digital. A través de ExifTool es posible extraer datos relacionados con:

Fecha de creación del archivo.
Fecha de modificación.
Software utilizado.
Información de la cámara o dispositivo.
Coordenadas GPS (si existen).
Autor del documento.
Características técnicas del archivo.

Durante esta práctica se analizó una imagen digital denominada fotografia.jpg, generando reportes para documentar la evidencia y preservar los hallazgos obtenidos.

Estructura del Laboratorio

evidencia/
└── exiftool/
    ├── fotografia.jpg
    ├── informe_exif.txt
    ├── informe_exif.csv
    └── README.md

    Descripción de los Archivos
    Archivo             Descripción
    CALENDARIO.jpg      Evidencia digital analizada
    informe_exif.txt    Reporte completo de metadatos generado por ExifTool
    informe_exif.csv    Exportación de metadatos en formato CSV
    README.md           Documentación de la práctica

    Herramienta Utilizada
ExifTool
Verificación de instalación:
exiftool -ver
Resultado obtenido:
12.76
Procedimiento
1. Verificar la instalación
exiftool -ver
2. Analizar la imagen
exiftool CALENDARIO.jpg
3. Generar informe en texto
exiftool fotografia.jpg > informe_exif.txt
4. Exportar informe en formato CSV
exiftool -csv fotografia.jpg > informe_exif.csv
5. Revisar los resultados
cat informe_exif.txt
Evidencias Generadas
ls -lh
Resultado esperado:
CALENDARIO.jpg
informe_exif.txt
informe_exif.csv
README.md

Análisis Forense
Durante el análisis deben identificarse los siguientes campos:

File Name
File Size
Create Date
Modify Date
Software
Camera Model Name
GPS Latitude
GPS Longitude

Estos elementos permiten determinar:
Procedencia del archivo.
Posibles modificaciones.
Dispositivo origen.
Ubicación geográfica asociada (si existe).
Información útil para una investigación digital.

Conclusiones
La herramienta ExifTool permitió obtener y documentar los metadatos presentes en la evidencia digital analizada. Los resultados obtenidos sirven como base para determinar la autenticidad, origen y posible manipulación del archivo.
El uso de esta herramienta constituye una práctica fundamental dentro de los procesos de análisis de evidencia digital e informática forense.

Competencias Desarrolladas

Análisis de metadatos.
Preservación de evidencia digital.
Documentación técnica forense.
Elaboración de reportes.
Uso de herramientas de línea de comandos en Linux.
Interpretación de información digital para investigaciones forenses.

Autor
Gendric José Morales Viviani
Repositorio:
gmoraleseafp-hub/Debian_Laboratorio

Práctica desarrollada para el aprendizaje de técnicas de análisis forense utilizando Linux y ExifTool.