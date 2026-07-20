# Práctica Forense: Simulación de DCFLDD

## Objetivo

Simular una adquisición forense utilizando Debian y GitHub Codespaces.

## Estructura de la evidencia

```text
evidencia/
├── adquisicion.log
├── dcfldd_sim.sh
├── destino.hash
├── disk.img
├── evidencia.dd
├── hash_copia.txt
├── hash_original.txt
├── hashes.txt
└── origen.hash
```

## Paso 1 - Crear disco de prueba

```bash
dd if=/dev/urandom of=disk.img bs=1M count=100
```

## Paso 2 - Crear copia forense

```bash
dd if=disk.img of=evidencia.dd bs=4M status=progress
```

## Paso 3 - Generar hashes

```bash
sha256sum disk.img > hash_original.txt

sha256sum evidencia.dd > hash_copia.txt
```

## Paso 4 - Verificar integridad

```bash
cat hash_original.txt

cat hash_copia.txt
```

## Resultado

Los hashes deben coincidir para demostrar que la copia forense es íntegra.

## Archivos generados

| Archivo | Descripción |
|----------|-------------|
| disk.img | Evidencia original |
| evidencia.dd | Imagen forense |
| hash_original.txt | Hash SHA256 original |
| hash_copia.txt | Hash SHA256 de la copia |
| adquisicion.log | Registro de adquisición |
