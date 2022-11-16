


ZSH_THEME_GIT_PROMPT_PREFIX="(%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%f)"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}"

# get the name of the branch we are on
function git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "$ZSH_THEME_GIT_PROMPT_PREFIX$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_SUFFIX"
}

# Checks if working tree is dirty
parse_git_dirty() {
  ref=$(git symbolic-ref HEAD 2> /dev/null)
  if [[ -n $(git status -s --ignore-submodules=dirty 2> /dev/null) ]]; then
    echo "$ZSH_THEME_GIT_PROMPT_DIRTY${ref#refs/heads/}"
  else
    echo "$ZSH_THEME_GIT_PROMPT_CLEAN${ref#refs/heads/}"
  fi
}



PROMPT='%t [%F{green}%n%f] %F{cyan}%0~%f 
$(git_prompt_info) %(?.%F{green}✔%f.%F{red}✘%f) '

RPROMPT=''
