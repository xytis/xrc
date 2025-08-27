# Plug brew
/opt/homebrew/bin/brew shellenv | source

# Plug mise
mise activate fish | source

fish_add_path ~/.bin

if status is-interactive
    zoxide init fish | source
    abbr --add xrc vim ~/.xrc

    function fish_greeting
    end
end

# vim: set expandtab filetype=fish ts=4 sw=4:
