# Atualizado: Script para exibir ícones personalizados por workspace

#!/bin/bash

# Mapeamento dos ícones por workspace (usando Nerd Fonts)
declare -A ICONS=(
  [1]=''   # Chrome
  [2]=''   # Terminal
  [3]=''   # Arquivos
  [4]=''   # Música
  [5]=''   # Vídeos
  [6]=''   # Código
  [7]=''   # Chat
  [8]=''   # Games
  [9]=''   # Sistema
)

active=$(hyprctl workspaces -j | jq '.[] | select(.focused==true) | .id')

# Se workspace ativa tiver ícone, exibe
if [[ -n "${ICONS[$active]}" ]]; then
    echo "${ICONS[$active]}"
else
    echo "$active"  # Fallback para número
fi

