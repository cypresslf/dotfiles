eval (/opt/homebrew/bin/brew shellenv)
if status is-interactive
    # Commands to run in interactive sessions can go here
end
status is-login; and pyenv init --path | source
status is-interactive; and pyenv init - | source

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

