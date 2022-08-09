```
  ▓█████▄  ▒█████  ▄▄▄█████▓  █████▒██▓ ██▓    ▓█████   ██████ 
  ▒██▀ ██▌▒██▒  ██▒▓  ██▒ ▓▒▓██   ▒▓██▒▓██▒    ▓█   ▀ ▒██    ▒ 
  ░██   █▌▒██░  ██▒▒ ▓██░ ▒░▒████ ░▒██▒▒██░    ▒███   ░ ▓██▄   
  ░▓█▄   ▌▒██   ██░░ ▓██▓ ░ ░▓█▒  ░░██░▒██░    ▒▓█  ▄   ▒   ██▒
  ░▒████▓ ░ ████▓▒░  ▒██▒ ░ ░▒█░   ░██░░██████▒░▒████▒▒██████▒▒
   ▒▒▓  ▒ ░ ▒░▒░▒░   ▒ ░░    ▒ ░   ░▓  ░ ▒░▓  ░░░ ▒░ ░▒ ▒▓▒ ▒ ░
   ░ ▒  ▒   ░ ▒ ▒░     ░     ░      ▒ ░░ ░ ▒  ░ ░ ░  ░░ ░▒  ░ ░
   ░ ░  ░ ░ ░ ░ ▒    ░       ░ ░    ▒ ░  ░ ░      ░   ░  ░  ░  
     ░        ░ ░                   ░      ░  ░   ░  ░      ░  
   ░                                                           

  Distro ..................... Void Linux
  Window Manager ............. bspwm
  Terminal ................... alacritty
  Fonts ...................... JetBrainsMono
  Browser .................... Firefox
  File Browser ............... nnn
  Editor ..................... Visual Studio Code
  Media Player ............... mpv
  Launcher ................... rofi
  Icon Theme ................. Papirus-Dark
```

## Installation
```bash
>> git clone https://github.com/mat-furla/dotfiles $HOME/.dotfiles && $HOME/.dotfiles/setup
```

## Improve Battery Life
1) Enable tlp service
2) Modify `GRUB_CMDLINE_LINUX_DEFAULT` in `/etc/default/grub` to contain: `i915.enable_psr=0`
   - In Void Linux `intel_iommu=glfx_off` option is needed.
