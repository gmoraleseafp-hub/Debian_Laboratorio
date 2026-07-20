#!/bin/bash

ORIGEN=$1
DESTINO=$2

echo "=== ADQUISICION FORENSE ==="

sha256sum "$ORIGEN" > origen.hash

dd if="$ORIGEN" of="$DESTINO" bs=4M status=progress

sha256sum "$DESTINO" > destino.hash

echo ""
echo "Hash Original:"
cat origen.hash

echo ""
echo "Hash Copia:"
cat destino.hash

echo ""
echo "Proceso Finalizado"
