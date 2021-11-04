function fish_prompt
    set_color $fish_color_cwd
    echo -n (basename $PWD)
    set_color yellow
    echo -n (fish_git_prompt)
    set_color normal
    echo -n ' '
end
