# 🖥️ Arch Linux + Hyprland Setup

Este projeto documenta meu setup pessoal baseado em **Arch Linux puro** com o compositor **Hyprland-Git** (Wayland). Ele é totalmente modularizado, automatizado e focado em desempenho, estética e produtividade.

---

## ✨ Características

- 🎨 Estética inspirada no Archcraft: blur, dark mode, Waybar centralizada, widgets e efeitos
- ⚡ Performance extrema: kernel Zen, input tuning, PipeWire, taxa real de 165Hz
- 🧠 Modularização completa: cada componente isolado com scripts e configurações próprias
- 📦 Instalador automatizado: script `install.sh` aplica todo o ambiente do zero
- 🔊 Suporte real a áudio 7.1 (Razer Tiamat 7.1 V2)
- 🧰 Ambiente de desenvolvimento pronto: Neovim, Kitty, Starship, Node.js, Zsh
- 🖼️ Wallpaper automático com `hyprpaper`

---

## 📁 Estrutura do Projeto

```
.
├── hypr/
│   ├── hyprland.conf
│   ├── hyprlock.conf
│   ├── hyprpaper.conf
│   ├── scripts/
│   └── wallpapers/
├── waybar/
│   ├── config
│   ├── style.css
│   └── scripts/
├── kitty/
├── wofi/
├── dunst/
├── nvim/
│   ├── init.lua
│   └── lua/
├── scripts/
│   └── install.sh
├── starship.toml
├── .gitignore
└── README.md
```

---

## 🔧 Instalação

> ⚠️ Requisitos: Arch Linux instalado e conectado à internet, com `paru` instalado.

```bash
cd ~/.config/scripts
chmod +x install.sh
./install.sh
```

O script irá:

- Instalar todos os pacotes necessários (inclusive AUR)
- Copiar as configurações para `~/.config`
- Tornar scripts executáveis
- Ativar `starship` e PATH no `.zshrc`
- Iniciar `hyprpaper` e aplicar o wallpaper (se estiver presente)

---

## 🖼️ Prints (Exemplo)

> Inclua suas imagens reais após subir ao GitHub na pasta `previews/`

![desktop-blur](./previews/desktop-blur.png)
![waybar-center](./previews/waybar-center.png)

---

## 🧪 Tecnologias

| Componente      | Ferramenta               |
| --------------- | ------------------------ |
| Compositor      | Hyprland-Git             |
| Terminal        | Kitty + Starship         |
| Launcher        | Wofi                     |
| Barra de status | Waybar-Git               |
| Notificações    | Dunst                    |
| Editor          | Neovim (Lua)             |
| Audio           | PipeWire + WirePlumber   |
| Screenshot      | Grim + Slurp + Swappy    |
| Automação       | Shell Scripts (Zsh/Bash) |

---

## ⚙️ Dicas

- Wallpaper deve estar em `~/.config/hypr/wallpapers/wallpaper.jpg`
- Scripts utilitários ficam em `~/.config/scripts` e são acessíveis via PATH
- O `install.sh` é totalmente idempotente (pode rodar várias vezes sem quebrar)

---

## 📜 Licença

MIT License — sinta-se livre para usar, adaptar, melhorar e contribuir.

---

## ✨ Autor

**Samuel Monteiro Junior**  
:rocket: Desenvolvedor, entusiasta de Linux e produtividade visual + extrema performance.
