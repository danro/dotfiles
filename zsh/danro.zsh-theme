#!/usr/bin/env zsh

PROMPT='%{$fg[cyan]%}> %{$fg_bold[yellow]%}%p %{$fg_bold[green]%}%2~ %{$reset_color%}%{$fg[yellow]%}$(git_prompt_info)%{$fg[yellow]%} % %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[white]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}) %{$fg_bold[blue]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[yellow]%})"
