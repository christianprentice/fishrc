if status is-interactive
	# Commands to run in interactive sessions can go here

	#ALIAS
	alias tree='eza -l --icons --tree'
	alias ls='eza -l --icons'
    alias dnf='dnf5'
    alias vim='nvim'
    alias rmatrix='rusty-rain -c alphalow -C green -H white'
    alias zj='zellij'


	# Nightfox Color Palette
	# Style: carbonfox
	# Upstream: https://github.com/edeneast/nightfox.nvim/raw/main/extra/carbonfox/carbonfox.fish
	set -l foreground f2f4f8
	set -l selection 2a2a2a
	set -l comment 6e6f70
	set -l red ee5396
	set -l orange 3ddbd9
	set -l yellow 08bdba
	set -l green 25be6a
	set -l purple be95ff
	set -l cyan 33b1ff
	set -l pink ff7eb6

	# Syntax Highlighting Colors
	set -g fish_color_normal $foreground
	set -g fish_color_command $cyan
	set -g fish_color_keyword $pink
	set -g fish_color_quote $yellow
	set -g fish_color_redirection $foreground
	set -g fish_color_end $orange
	set -g fish_color_error $red
	set -g fish_color_param $purple
	set -g fish_color_comment $comment
	set -g fish_color_selection --background=$selection
	set -g fish_color_search_match --background=$selection
	set -g fish_color_operator $green
	set -g fish_color_escape $pink
	set -g fish_color_autosuggestion $comment

	# Completion Pager Colors
	set -g fish_pager_color_progress $comment
	set -g fish_pager_color_prefix $cyan
	set -g fish_pager_color_completion $foreground
	set -g fish_pager_color_description $comment

    fish_vi_key_bindings

    # Go path
    # set -Ux fish_user_paths /usr/local/go/bin $fish_user_paths
    set -x GOPATH (go env GOPATH)
    set -x PATH $PATH (go env GOPATH)/bin

end

zoxide init --cmd cd fish | source

