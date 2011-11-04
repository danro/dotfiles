#!/usr/bin/env zsh

PROMPT='%{$fg[gray]%} %{$fg_bold[yellow]%}%p %{$fg[green]%}%2~ %{$fg_bold[yellow]%}$(git_prompt_info)%{$fg_bold[yellow]%} % %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}) %{$fg[blue]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[yellow]%})"
