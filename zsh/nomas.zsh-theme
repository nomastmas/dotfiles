if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="green"; fi
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

local host_name="%{$fg[$NCOLOR]%}%n%{$reset_color%}@%{$fg[cyan]%}%m%{$reset_color%}"
local path_string="%{$fg[magenta]%}%~%{$reset_color%}"
local prompt_string="%{$fg[red]%}%(!.#.$)%{$reset_color%} "
local newline=$'\n'

PROMPT='${host_name} ${path_string} $(git_prompt_info)${newline}${prompt_string}'
# PROMPT='%{$fg[$NCOLOR]%}%n%{$reset_color%}@%{$fg[cyan]%}%m\
# %{$reset_color%}:%{$fg[magenta]%}%~\
# $(git_prompt_info) \
# %{$fg[red]%}%(!.#.$)%{$reset_color%} '

PROMPT2='%{$fg[red]%}\ %{$reset_color%}'
RPS1='${return_code}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}("
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}○%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}💩 %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[yellow]%})%{$reset_color%}"
