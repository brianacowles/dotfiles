#
# ~/.bashrc
#
echo '                 .os:         -+:                 '
echo '                .//../-   `://.`h-                '
echo '    `s:-.     --y.s   -+ /o/::. .y.     ``        '
echo '     /o..::- -: .s/   -s/y/``y-  .y ..--s.        '
echo '     oh+- `.+s   `s--/-` s` `d    y+`` o+-+/      '
echo '  .  o-o/-  .y    `h/---.y. +o`-:/s-.:-+.+h.      '
echo '  y-`s :o/:  s    `y/...`../s++:.`   d+:+s:       '
echo '  :/:s/-+o/+`//   o-        -+-      m/+yo--.`    '
echo '   +. ..-oyss:s. -o           ::    -ho+-``-:+`   '
echo '  ``+-    `-+hhh-.s           -o   .s-``-/+oo.    '
echo '  /+:y/`     .+so/s+.       `-y+::/s/.+o:::-      '
echo '   //-/o:....-.++.--/+:-.`.:/:.`    `.-.-///.     '
echo '    `:--o+:-.   `--:+ooo/+s/.          `.:-/:.    '
echo '    `/o/:-///+//:::s+`    `-/+/-..`.-::-.    ::   '
echo '      `.:::/+oo/+.`ss.        ./do::+/::-----.-/` '
echo '          ```    -::o/:`       .s+o:-.`````-:+/-` '
echo '  ~welcome!~        .::///.` `:y:`+. `.....`      '
echo '                       ...-...` ...`              '

alias ei3="vim ~/.config/i3/config"
alias glados="ssh bec8616@glados.cs.rit.edu"
alias queeg="ssh bec8616@queeg.cs.rit.edu"
alias lock="betterlockscreen -l blur"
alias updot="cp -rf ~/.bashrc ~/Documents/repos/dotfiles; 
             cp -rf ~/.vimrc ~/Documents/repos/dotfiles; 
             cp -rf ~/.config/i3/config ~/Documents/repos/dotfiles;
             git -C /home/briana/Documents/repos/dotfiles add .;
             git -C /home/briana/Documents/repos/dotfiles commit;
             git -C /home/briana/Documents/repos/dotfiles push"
alias cat="ccat"
export EDITOR='vi'
export VISUAL='vi'

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#alias ls='ls --color=auto'
#force_color_prompt=yes
#PS1='\[\e[1;91m\][\u@\h \w]\$\[\e[0m\]'
