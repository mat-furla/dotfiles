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

## BTRFS flags
```
noatime,nodev,noexec,nosuid,ssd,compress=zstd,space_cache=v2,commit=60,subvol=@srv
```

## Improve Battery Life
1) Enable tlp service
2) Modify `GRUB_CMDLINE_LINUX_DEFAULT` in `/etc/default/grub` to contain: `i915.semaphores=1 i915.modeset=1 i915.use_mmio_flip=1 i915.powersave=1 i915.enable_ips=1 i915.disable_power_well=1 i915.enable_hangcheck=1 i915.enable_cmd_parser=1 i915.fastboot=0 i915.enable_ppgtt=1 i915.reset=0 i915.lvds_use_ssc=0 i915.enable_psr=0 vblank_mode=0 i915.i915_enable_rc6=1`
   - In Void Linux `intel_iommu=glfx_off` option is needed.
