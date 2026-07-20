# Debian_Laboratorio
Laboratorio Debian

# Debian_Laboratorio

## Laboratorio de Informática Forense con DD

### Objetivo

Demostrar el proceso de adquisición y verificación de evidencia digital utilizando el comando `dd` en Linux.

---

## Paso 1: Creación de una evidencia digital simulada

Se generó un archivo de 20 MB con datos aleatorios utilizando:

Explicación

if=/dev/urandom : Fuente de datos aleatorios.
of=evidencia.img : Archivo de salida.
bs=1M : Tamaño de bloque de 1 MB.
count=20 : Copia 20 bloques.

Paso 2: Generación del hash SHA-256

sha256sum evidencia.img > evidencia.sha256

Visualizar el hash:

cat evidencia.sha256

Paso 3: Creación de una copia forense

dd if=evidencia.img of=copia.img bs=4M status=progress

Explicación

if=evidencia.img : Evidencia original.
of=copia.img : Copia forense.
bs=4M : Tamaño de bloque de 4 MB.
status=progress : Muestra el progreso de la copia.

Paso 4: Verificación de integridad
Hash de la evidencia original:

sha256sum evidencia.img

Hash de la copia:

sha256sum copia.img

Los dos hashes deben ser idénticos.

Validación adicional
Comparación binaria:

cmp evidencia.img copia.img

Si no se muestra salida, ambos archivos son idénticos bit a bit.

Resultados obtenidos

Archivo                 Tamaño
evidencia.img           20 MB
copia.img               20 MB
evidencia.sha256        Hash SHA-256

Conclusiones

Se simuló una evidencia digital utilizando datos aleatorios.
Se realizó una copia bit a bit mediante dd.
Se calculó el hash SHA-256 para garantizar la integridad.
La comparación de hashes confirmó que la copia es idéntica al archivo original.
Este procedimiento reproduce los principios básicos de adquisición de evidencia digital utilizados en informática forense.
