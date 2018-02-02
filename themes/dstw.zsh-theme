# dstw.zsh-theme
# influenced by af-magic, arrow; fix on vi-mode indicator
# Repo: https://github.com/dstw/oh-my-zsh
# Direct Link: https://github.com/dstw/oh-my-zsh/blob/master/themes/dstw.zsh-theme

if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="green"; fi
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

MODE_INDICATOR="%{$fg_bold[red]%}>%{$reset_color%}"

# primary prompt
PROMPT='$FG[032]%~ \
$(vi_mode_prompt_info)\
$FG[105]%(!.#.➤ )%{$reset_color%} '
PROMPT2='%{$fg[red]%}\ %{$reset_color%}'
RPS1='${return_code}'

# color vars
eval my_gray='$FG[237]'
eval my_orange='$FG[214]'

# right prompt
if type "git_prompt_info" > /dev/null
then
	RPROMPT='$(git_prompt_info)'
fi

# git settings
ZSH_THEME_GIT_PROMPT_PREFIX="$FG[075][git:$FG[078]"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="$my_orange*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="$FG[075]]%{$reset_color%}"
