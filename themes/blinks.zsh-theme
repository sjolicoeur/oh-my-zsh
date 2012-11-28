# https://github.com/blinks zsh theme

function _prompt_char() {
  if $(git rev-parse --is-inside-work-tree >/dev/null 2>&1); then
    echo "%{%F{blue}%}±%{%f%k%b%}"
  else
    echo ' '
  fi
}

ZSH_THEME_GIT_PROMPT_PREFIX=" [git::%{%B%F{blue}%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{%f%k%b%K{brblack}%B%F{green}%}]"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{%F{red}%}*%{%f%k%b%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

PROMPT='%{%f%k%b%}
%{%K{brcyan}%B%F{green}%}%n%{%B%F{blue}%}@%{%B%F{cyan}%}%m%{%B%F{green}%} %{%b%F{yellow}%K{brblack}%}%~%{%B%F{green}%}$(git_prompt_info)%E%{%f%k%b%}
%{%K{brcyan}%}=%{%K{brblack}%}%{%f%k%b%}=> '

RPROMPT='!%{%B%F{cyan}%}%!%{%f%k%b%}'