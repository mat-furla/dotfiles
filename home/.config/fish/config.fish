## ABREVIATIONS
abbr sd 'sudo'
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
set -gx EDITOR micro

## SYNTAX HIGHLIGHT
set color00 1d/20/21 # Base 00 - Black
set color01 fb/49/34 # Base 08 - Red
set color02 b8/bb/26 # Base 0B - Green
set color03 fa/bd/2f # Base 0A - Yellow
set color04 83/a5/98 # Base 0D - Blue
set color05 d3/86/9b # Base 0E - Magenta
set color06 8e/c0/7c # Base 0C - Cyan
set color07 d5/c4/a1 # Base 05 - White
set color08 66/5c/54 # Base 03 - Bright Black
set color09 $color01 # Base 08 - Bright Red
set color10 $color02 # Base 0B - Bright Green
set color11 $color03 # Base 0A - Bright Yellow
set color12 $color04 # Base 0D - Bright Blue
set color13 $color05 # Base 0E - Bright Magenta
set color14 $color06 # Base 0C - Bright Cyan
set color15 fb/f1/c7 # Base 07 - Bright White
set color16 fe/80/19 # Base 09
set color17 d6/5d/0e # Base 0F
set color18 3c/38/36 # Base 01
set color19 50/49/45 # Base 02
set color20 bd/ae/93 # Base 04
set color21 eb/db/b2 # Base 06
set colorfg $color07 # Base 05 - White
set colorbg $color00 # Base 00 - Black

set -U fish_color_autosuggestion 504945
set -U fish_color_cancel -r
set -U fish_color_command green #white
set -U fish_color_comment 504945
set -U fish_color_cwd green
set -U fish_color_cwd_root red
set -U fish_color_end brblack #blue
set -U fish_color_error red
set -U fish_color_escape yellow #green
set -U fish_color_history_current --bold
set -U fish_color_host normal
set -U fish_color_match --background=brblue
set -U fish_color_normal normal
set -U fish_color_operator blue #green
set -U fish_color_param bdae93
set -U fish_color_quote yellow #brblack
set -U fish_color_redirection cyan
set -U fish_color_search_match bryellow --background=504945
set -U fish_color_selection white --bold --background=504945
set -U fish_color_status red
set -U fish_color_user brgreen
set -U fish_color_valid_path --underline
set -U fish_pager_color_completion normal
set -U fish_pager_color_description yellow --dim
set -U fish_pager_color_prefix white --bold #--underline
set -U fish_pager_color_progress brwhite --background=cyan


## PROMPT
starship init fish | source
