#
# ~/.config/fish/config.fish
#

# If not running interactively, don't do anything
if not status is-interactive
    return
end

# no greeting
set -g fish_greeting

# Aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias vi='nvim'

# Prompt (Equivalent to PS1='[\u@\h \W]\$ ')
function fish_prompt
    set -l prompt_symbol '~>'
    if fish_is_root_user
        set prompt_symbol '#~>'
    end
    echo -n ""(prompt_hostname)" "(prompt_pwd)" $prompt_symbol "
end

# change fish colors
set -g fish_color_error f5bde6 --italics
set -g fish_color_command f5bde6 --bold
set -g fish_color_autosuggestion f5bde6 

# Prepend ~/.local/bin to PATH
fish_add_path ~/.local/bin

# Run hyfetch on startup
hyfetch

starship init fish | source
