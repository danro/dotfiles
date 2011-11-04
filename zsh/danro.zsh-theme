PROMPT='%{$fg[gray]%} %{$fg_bold[yellow]%}%p %{$fg[cyan]%}%2~ %{$fg_bold[yellow]%}$(git_prompt_info)%{$fg_bold[yellow]%} % %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}) %{$fg[green]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[yellow]%})"
