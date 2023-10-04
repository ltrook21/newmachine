#Author : Heapbytes <Gourav> (https://github.com/heapbytes)

PROMPT='
┌─[%F{blue} %~%f] [%F$(get_ip_address)%f] $(git_prompt_info)
└─➜ '

RPROMPT='[%F{red}%?%f]'

get_ip_address() {
  local GLYPH_WG0="󰟒"
  local GLYPH_PROTON0="󱘖"
  local GLYPH_WLO1=""
  local GLYPH_NO_IP=""
  

  if [[ -n "$(ifconfig wg0 2>/dev/null)" ]]; then
    echo "%{$fg[red]%}$GLYPH_WG0 $(ifconfig wg0 | awk '/inet / {print $2}')%{$reset_color%}"
  elif [[ -n "$(ifconfig wg2 2>/dev/null)" ]]; then
    echo "%{$fg[red]%}$GLYPH_WG0 $(ifconfig wg2 | awk '/inet / {print $2}')%{$reset_color%}"
  elif [[ -n "$(ifconfig wg1 2>/dev/null)" ]]; then
    echo "%{$fg[yellow]%}$GLYPH_WG0 $(ifconfig wg1 | awk '/inet / {print $2}')%{$reset_color%}"
  elif [[ -n "$(ifconfig proton0 2>/dev/null)" ]]; then
    echo "%{$fg[blue]%}$GLYPH_PROTON0 $(ifconfig proton0 | awk '/inet / {print $2}')%{$reset_color%}"
  elif [[ -n "$(ifconfig wlo1 2>/dev/null)" ]]; then
    echo "%{$fg[green]%}$GLYPH_WLO1 $(ifconfig wlo1 | awk '/inet / {print $2}')%{$reset_color%}"
  else
    echo "%{$fg[gray]%}$GLYPH_NO_IP No IP%{$reset_color%}"
  fi

# if [[ -n "$(ifconfig wg0 2>/dev/null)" ]]; then
    # echo "%{$fg[green]%}$(ifconfig wg0 | awk '/inet / {print $2}')%{$reset_color%}"
  # elif [[ -n "$(ifconfig proton0 2>/dev/null)" ]]; then
    # echo "%{$fg[green]%}$(ifconfig proton0 | awk '/inet / {print $2}')%{$reset_color%}"
  # elif [[ -n "$(ifconfig wlo1 2>/dev/null)" ]]; then
    # echo "%{$fg[green]%}$(ifconfig wlo1 | awk '/inet / {print $2}')%{$reset_color%}"
  # else
    # echo "%{$fg[red]%}No IP%{$reset_color%}"
  # fi
}
