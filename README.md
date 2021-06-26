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

  Distro ..................... Debian Sid/Void Linux
  Window Manager ............. bspwm
  Terminal ................... alacritty
  Fonts ...................... Iosevka
  Browser .................... Chromium Browser
  File Browser ............... nnn
  Editor ..................... Visual Studio Code
  Media Player ............... mpv
  Launcher ................... rofi
  GTK Theme .................. Materia GTK Theme
  Icon Theme ................. Papirus-Dark

```

# Installation

```sh
>> git clone https://github.com/mat-furla/dotfiles .dotfiles
>> ./dotfiles/setup
```

An `install.sh` is included to add all
the needed packages for my system, modify as wanted.

# Hardware Acceleration in Browser

1) Enable flags contained in `extra/chromium.conf`
2) Install the h264ify extension

# BTRFS flags

```plain
rw,ssd,noatime,autodefrag,compress=zstd,space_cache,commit=120,subvol=__
```

# Improve Battery Life

1) Enable tlp service
2) Modify `GRUB_CMDLINE_LINUX_DEFAULT` in `/etc/default/grub` to contain: `i915.semaphores=1 i915.modeset=1 i915.use_mmio_flip=1 i915.powersave=1 i915.enable_ips=1 i915.disable_power_well=1 i915.enable_hangcheck=1 i915.enable_cmd_parser=1 i915.fastboot=0 i915.enable_ppgtt=1 i915.reset=0 i915.lvds_use_ssc=0 i915.enable_psr=0 vblank_mode=0 i915.i915_enable_rc6=1`
   - In Void Linux `intel_iommu=glfx_off` option is needed.