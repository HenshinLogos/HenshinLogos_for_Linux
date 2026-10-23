#!/bin/bash
# Instalador HenshinLogos
# Descarga e instala el paquete .deb desde GitHub Releases

URL="https://github.com/HenshinLogos/HenshinLogos_for_Linux/releases/download/v5.1/henshinlogos_5.1_amd64.deb"
ARCHIVO_LOCAL="henshinlogos_5.1_amd64.deb"

echo "🔽 Descargando $ARCHIVO_LOCAL..."
wget -q --show-progress "$URL" -O "$ARCHIVO_LOCAL"

echo "📦 Instalando..."
sudo dpkg -i "$ARCHIVO_LOCAL" || sudo apt --fix-broken install -y

echo "🧹 Limpiando..."
rm -f "$ARCHIVO_LOCAL"

echo "✅ Instalación completada. Puedes iniciar HenshinLogos desde el menú."
