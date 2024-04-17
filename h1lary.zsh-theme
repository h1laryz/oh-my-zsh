

# Determine the color based on the user ID
if [ $UID -eq 0 ]; then
    BRANCH_COLOR="red"
else
    BRANCH_COLOR="blue"  # Change the branch color to green for non-root users
fi

# Define the additional prompt format
H1LARY_PROMPT='%{$fg_bold[green]%}%~ %{$fg_bold[white]%}$ %{$reset_color%}'

# Adjust the prompt format
PROMPT='%{$fg_bold[white]%}%~ %{$fg_bold[white]%}$ %{$reset_color%}'  # Use %~ to display the full path
RPROMPT='%{$fg_bold[$BRANCH_COLOR]%}$(git_prompt_info)%{$reset_color%}'

# Remove unnecessary lines
ZSH_THEME_GIT_PROMPT_PREFIX="git:"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""

# Set LS_COLORS for directory color
export LS_COLORS="di=37"  # Set directory color to white

# Optionally, set LSCOLORS if you prefer using it instead of LS_COLORS
# export LSCOLORS="exfxcxdxbxegedabagacad"

# Function to set the prompt to H1LARY format
h1lary_prompt() {
    PROMPT="$H1LARY_PROMPT"
}

# Set the prompt initially to H1LARY format
h1lary_prompt
