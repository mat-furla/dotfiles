## ABREVIATIONS
abbr sd 'sudo'
abbr ls 'n'
abbr N 'sudo -E nnn'
abbr dl 'cd $HOME/Downloads'
abbr doc 'cd $HOME/Documents'
abbr dev 'cd $HOME/Dev'
abbr ... 'cd ../..'
abbr .... 'cd ../../..'
abbr ..... 'cd ../../../..'
abbr chx 'chmod +x'
abbr rb 'sudo shutdown -r now'
abbr p 'sudo shutdown -h now'

abbr q 'xbps-query -Rs'
abbr i 'sudo xbps-install -S'
abbr u 'sudo xbps-install -Syyu'
abbr r 'sudo xbps-remove -Rcn'
abbr c 'sudo xbps-remove -o'

abbr code 'code-oss'
abbr gs 'git status'
abbr ga 'git add --all'
abbr gl 'git pull'
abbr gc 'git commit -m'
abbr gp 'git push --set-upstream origin master'

abbr xload 'xrdb -load $HOME/.Xresources'


## EXPORT
set fish_greeting

set PATH $HOME/.local/bin $PATH
set PATH $HOME/.yarn/bin $PATH

set -gx NNN_BMS 'd:/home/matheus/Downloads/;D:/home/matheus/Dev'
set -gx NNN_OPENER $HOME/.config/nnn/plugins/nuke
set -gx NNN_FCOLORS '02030b020005060f0d0b0d09'
set -gx NNN_PLUG 'l:-_|leafpad $nnn;c:-_|code-oss $nnn;f:fzopen'
set -gx NNN_TRASH 1

set -gx QT_QPA_PLATFORMTHEME gtk3
set -gx _JAVA_AWT_WM_NONREPARENTING 1

set -gx BROWSER firefox
set -gx VISUAL leafpad
set -gx EDITOR nano


## FLATPAK
set -l xdg_data_home $XDG_DATA_HOME ~/.local/share
set -gx --path XDG_DATA_DIRS $xdg_data_home[1]/flatpak/exports/share:/var/lib/flatpak/exports/share:/usr/local/share:/usr/share

for flatpakdir in ~/.local/share/flatpak/exports/bin /var/lib/flatpak/exports/bin
    if test -d $flatpakdir
        contains $flatpakdir $PATH; or set -a PATH $flatpakdir
    end
end


## PROMPT
starship init fish | source
