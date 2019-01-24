ZSH_THEME_GIT_PROMPT_PREFIX="$git_fg("
ZSH_THEME_GIT_PROMPT_CLEAN="$reset ○"
ZSH_THEME_GIT_PROMPT_DIRTY="$reset 💩"
ZSH_THEME_GIT_PROMPT_SUFFIX="$git_fg)$reset"

local reset="%{$reset_color%}"
local path_fg="%{$fg[green]%}"
local prompt_fg="%{$fg[magenta]%}"
local git_fg="%{$fg[yellow]%}"

local path_string="$path_fg%~$reset"
local prompt_string="$reset$prompt_fg%(!.#.$)$reset "
local newline=$'\n'

PROMPT='${path_string} $(git_prompt_info)${newline}${prompt_string}'
