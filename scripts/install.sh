#!/bin/bash

echo "🚀 Iniciando instalação do Setup Hyprland personalizado..."

# Verifica se o paru está instalado
if ! command -v paru &> /dev/null; then
  echo "❌ Paru não está instalado. Instale com:"
  echo "git clone https://aur.archlinux.org/paru.git && cd paru && makepkg -si"
  exit 1
fi

# Pacotes principais (AUR + oficiais)
PACOTES=(
  hyprland-git hyprpaper hyprlock dunst kitty waybar-git wofi
  pipewire pipewire-pulse wireplumber
  wl-clipboard grim slurp swappy
  starship neovim zsh zsh-completions
  eza jq tree
)

echo "📦 Instalando pacotes essenciais com paru..."
paru -Syu --needed --noconfirm "${PACOTES[@]}"

# Estrutura de diretórios
echo "📁 Criando estrutura de pastas..."
mkdir -p ~/.config/hypr/{scripts,wallpapers}
mkdir -p ~/.config/waybar/scripts
mkdir -p ~/.config/scripts
mkdir -p ~/.config/nvim/lua

# Cópia dos dotfiles (ajuste caminhos conforme seu repositório)
echo "📄 Copiando configurações..."
cp -r ./hypr ~/.config/
cp -r ./waybar ~/.config/
cp -r ./kitty ~/.config/
cp -r ./nvim ~/.config/
cp -r ./dunst ~/.config/
cp -r ./wofi ~/.config/
cp starship.toml ~/.config/
cp -r ./scripts ~/.config/

# Permissões dos scripts
echo "🔧 Tornando scripts executáveis..."
chmod +x ~/.config/hypr/scripts/* ~/.config/waybar/scripts/* ~/.config/scripts/* 2>/dev/null

# Ativação do Starship + PATH (evita duplicação)
if ! grep -q 'starship init' ~/.zshrc; then
  echo 'eval "$(starship init zsh)"' >> ~/.zshrc
  echo 'export PATH="$HOME/.config/scripts:$PATH"' >> ~/.zshrc
fi

# Wallpaper
echo "🖼️ Verificando e aplicando wallpaper com hyprpaper..."
WALLPAPER="$HOME/.config/hypr/wallpapers/wallpaper.jpg"
if [ -f "$WALLPAPER" ]; then
  killall hyprpaper 2>/dev/null
  hyprpaper &
  echo "✅ Wallpaper aplicado com sucesso: $WALLPAPER"
else
  echo "⚠️ Wallpaper não encontrado em: $WALLPAPER"
  echo "💡 Certifique-se de copiar sua imagem para essa pasta antes de usar."
fi

echo "✅ Setup finalizado com sucesso!"

