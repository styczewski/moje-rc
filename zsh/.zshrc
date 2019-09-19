# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/pstyczewski/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Activate vim mode  with <Escape>
# set -o vi

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
alias aliasy='grep "alias" ~/.zshrc | more'
alias qq='exit'
alias cfz='vim ~/.zshrc'
alias cfv='vim ~/.vimrc'
alias cfr='vim ~/.config/ranger/rc.conf'
alias cft='vim ~/.tmux.conf'
alias cfb='vim ~/.config/surfraw/bookmarks'
alias cfi='vim ~/.config/i3/config'
alias cfg_newsbeuter='vim ~/.newsbeuter/config'
alias cfg_feednewsbeuter='vim ~/.newsbeuter/urls'
alias cfg_backdotfiles='vim ~/bin/backdotfiles'
alias rcfz='source ~/.zshrc'
alias news='newsboat'
alias install="sudo apt-get install "
alias remove="sudo apt-get remove "
alias .='pcmanfm .&'
alias www="w3m -B"
alias cal="clear && ncal -3Mw"
alias clock="tty-clock -scC6"
alias capsoff="/home/pstyczewski/Dropbox/moje-aplikacje/capsoff"
alias mplayerpawel="mplayer -ontop -noborder -zoom -x 240 -y 135 -geometry 1170:730"
alias pawelmontuj="encfs /home/pstyczewski/Dropbox/pawel/.pawel /home/pstyczewski/encfs/pawel"
alias notesmontuj="encfs /home/pstyczewski/Dropbox/pawel/.notes/ /home/pstyczewski/encfs/notes"
alias jwmontuj="encfs /home/pstyczewski/Dropbox/jw/.jw /home/pstyczewski/encfs/jw"
alias pawelodmontuj="fusermount -u ~/encfs/pawel"
alias notesodmontuj="fusermount -u ~/encfs/notes"
alias jwodmontuj="fusermount -u ~/encfs/jw"
alias gam="cd /home/pstyczewski/Documents/ && clear && pwd"
alias gad="cd /home/pstyczewski/Downloads/ && clear && pwd"
alias mutt="cd /home/pstyczewski/Downloads/mutt/ && mutt"
alias garr="cd /home/pstyczewski/Dropbox/ && clear && pwd"
alias garm="cd /home/pstyczewski/Dropbox/moje-aplikacje/ && clear && pwd"
alias gae="cd /home/pstyczewski/encfs/ && clear && pwd"
alias zablokuj="gnome-screensaver-command -l"
alias pogoda="curl wttr.in/szczecin"
alias usunkopievim="find . -type d -name ".backups" -exec rm -rf {} \;"
alias q="/usr/bin/kalkulator.sh"
alias katalogdata="mkdir `date '+%Y-%m-%d'` && cd `date '+%Y-%m-%d'` "
alias kopie="rsync -avr --include='*.7z' /mnt/kopie/ /media/pstyczewski/Nowy/KOPIE-ZAPASOWE/"
alias gg='surfraw -browser=opera google'
alias sr='surfraw -browser=opera'
alias srw='sr -browser=w3m'
alias ranger='/home/pstyczewski/bin/ranger/ranger/ranger.py'
alias ra='ranger'
alias open='gnome-open'
alias gcal='gcalccmd'
alias kalendarz='gcalcli'
alias mojekalendarze='gcalcli list'
alias tydzien='clear && gcalcli --width=18 calw 6'
alias miesiac='clear && gcalcli --width=18 calm'
alias dodaj='~/bin/kalendarz-dodajq'
alias dodajwydarzenie='~/bin/kalendarz-dodajf'
alias jwepub2txt='~/bin/jwunzipepub'
alias pigo='ping 8.8.8.8'
alias pigolog='ping -i 10 -c 8640 8.8.8.8 | while read pong; do echo “$(date): $pong”; done > dns_pings.txt'
alias youtubedlmp3='youtube-dl --extract-audio --audio-format mp3 '
alias pawel="clear && figlet Pawel"
alias figlet="clear && figlet $1"
alias pomo="~/bin/pomodoro/po"
alias z="fasd_cd -d"
alias feh='feh --auto-zoom --scale-down -g 1360x768 -B white'
alias v='f -e vim' # quick opening files with vim
alias m='f -e mplayer' # quick opening files with mplayer
alias o='a -e xdg-open' # quick opening files with xdg-open
alias haslo='pwgen -1 16 -B -c | clipcopy && clippaste'
alias nagrajekran1024='ffmpeg -video_size 1024x768 -framerate 25 -f x11grab -i :0.0+500,250 output.mp4'
alias nagrajekran='ffmpeg -video_size 1920x1080 -framerate 25 -f x11grab -i :0.0+0,0 output.mp4'

# aliases GIT -----------------------------
alias aliasygit='clear && grep "alias gt" ~/.zshrc'
alias gti='git init'
alias gts='git status'
alias gtl='git pull' #pobranie zmian ze zdalnego repo
alias gtp='git push' #wypchnięcie zmian do zdalnego repo
alias gtd='git diff | mate'
alias gta='git add .' #dodanie wszystkich plików do przechowalni
alias gtr='git reset' #usuwanie plików z indeksu (odwrotność do kit add)
alias gtau='git add --update' #dodanie plików któ© były już sledzone i zostały zmienione
alias gtc='git commit -v' #zapisanie migawki przechowalni jako commita
alias gtcm='git commit --amend' #poprawianie opisu w commi
alias gtca='git commit -v -a' #commit z przełącznikiem a dodaje śledzone i zmienione pliki, nie trzeba add
alias gtb='git branch' #bez parametru pokazanie gałęzi lub dodanie nowej jeśli zostanie podana jej nazwa
alias gtbd='git branch -d ' #usuwanie gałęzi
alias gtba='git branch -a' #pokazanie wszystkich gałęzi
alias gtco='git checkout' #przełączenie się na gałąż ...
alias gtcob='git checkout -b' #utworzenie nowej gałęzi i przełączenie się na nią
alias gtcot='git checkout -t'
alias gtcotb='git checkout --track -b'
alias gtm='git merge' #scalanie gałęzi
alias gtlog='git log'
alias gtlogp='git log --pretty=format:"%h %s" --graph'

function countdown(){
   date1=$((`date +%s` + $1)); 
   while [ "$date1" -ge `date +%s` ]; do 
     echo -ne "$(date -u --date @$(($date1 - `date +%s`)) +%H:%M:%S)\r";
     sleep 0.1
   done
}

function pdfexp(){
/usr/bin/pdftk $1 cat $2 output plik-$3.pdf
}

function alarm(){
termdown $1 && ~/bin/morse-end
}


function stopwatch(){
  date1=`date +%s`; 
   while true; do 
    echo -ne "$(date -u --date @$((`date +%s` - $date1)) +%H:%M:%S)\r"; 
    sleep 0.1
   done
}

function mkcd () { mkdir "$1" && cd "$1"; }

fzf-dmenu() { 
	# note: xdg-open has a bug with .desktop files, so we cant use that shit
	selected="$(ls /usr/share/applications | fzf -e)"
	nohup `grep '^Exec' "/usr/share/applications/$selected" | tail -1 | sed 's/^Exec=//' | sed 's/%.//'` >/dev/null 2>&1&
}

#Bookmarks
fzf-surfraw() { surfraw "$(cat ~/.config/surfraw/bookmarks | sed '/^$/d' | sort -n | fzf -e)" ;}
fsr() { surfraw "$(cat ~/.config/surfraw/bookmarks | sed '/^$/d' | sort -n | fzf -e -i )" ;}

# fzf_cd() { zle -I; DIR=$(find ${1:-*} -path '*/\.*' -prune -o -type d -print 2> /dev/null | fzf) && cd "$DIR" ; }; zle -N fzf_cd; bindkey '^E' fzf_cd
fzf_killps() { zle -I; ps -ef | sed 1d | fzf -m | awk '{print $2}' | xargs kill -${1:-9} ; }; zle -N fzf_killps; bindkey '^Q' fzf_killps


# ---------------- FZF-extras  ---------------------------
# https://github.com/atweiden/fzf-extras
# fe [FUZZY PATTERN] - Open the selected file with the default editor
#   - Bypass fuzzy finder if there's only one match (--select-1)
#   - Exit if there's no match (--exit-0)
fe() {
  local IFS=$'\n'
  local files=($(fzf-tmux --query="$1" --multi --select-1 --exit-0))
  [[ -n "$files" ]] && ${EDITOR:-vim} "${files[@]}"
}

# Modified version of fe() where you can press
#   - CTRL-O to open with `xdg-open` command,
#   - CTRL-E or Enter key to open with the $EDITOR
fo() {
  local IFS=$'\n'
  local out=($(fzf-tmux --query="$1" --exit-0 --expect=ctrl-o,ctrl-e))
  local key=$(head -1 <<< "$out")
  local file=$(head -2 <<< "$out" | tail -1)
  if [ -n "$file" ]; then
    [ "$key" = ctrl-o ] && open "$file" || ${EDITOR:-vim} "$file"
  fi
}

# fd - cd to selected directory
fd() {
  local dir
  dir=$(find ${1:-.} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  cd "$dir"
}

# fda - including hidden directories
fda() {
  local dir
  dir=$(find ${1:-.} -type d 2> /dev/null | fzf +m) && cd "$dir"
}

# fdr - cd to selected parent directory
fdr() {
  local declare dirs=()
  get_parent_dirs() {
    if [[ -d "${1}" ]]; then dirs+=("$1"); else return; fi
    if [[ "${1}" == '/' ]]; then
      for _dir in "${dirs[@]}"; do echo $_dir; done
    else
      get_parent_dirs $(dirname "$1")
    fi
  }
  local DIR=$(get_parent_dirs $(realpath "${1:-$PWD}") | fzf-tmux --tac)
  cd "$DIR"
}


# fkill - kill process
fkill() {
  local pid
  pid=$(ps -ef | sed 1d | fzf -m | awk '{print $2}')

  if [ "x$pid" != "x" ]
  then
    echo $pid | xargs kill -${1:-9}
  fi
}

# fbr - checkout git branch (including remote branches)
#   - sorted by most recent commit
#   - limit 30 last branches
fbr() {
  local branches branch
  branches=$(git for-each-ref --count=30 --sort=-committerdate refs/heads/ --format="%(refname:short)") &&
  branch=$(echo "$branches" |
           fzf-tmux -d $(( 2 + $(wc -l <<< "$branches") )) +m) &&
  git checkout $(echo "$branch" | sed "s/.* //" | sed "s#remotes/[^/]*/##")
}

# fco - checkout git branch/tag
fco() {
  local tags branches target
  tags=$(
    git tag | awk '{print "\x1b[31;1mtag\x1b[m\t" $1}') || return
  branches=$(
    git branch --all | grep -v HEAD             |
    sed "s/.* //"    | sed "s#remotes/[^/]*/##" |
    sort -u          | awk '{print "\x1b[34;1mbranch\x1b[m\t" $1}') || return
  target=$(
    (echo "$tags"; echo "$branches") |
    fzf-tmux -l40 -- --no-hscroll --ansi +m -d "\t" -n 2 -1 -q "$*") || return
  git checkout $(echo "$target" | awk '{print $2}')
}

# fcoc - checkout git commit
fcoc() {
  local commits commit
  commits=$(git log --pretty=oneline --abbrev-commit --reverse) &&
  commit=$(echo "$commits" | fzf --tac +s +m -e) &&
  git checkout $(echo "$commit" | sed "s/ .*//")
}

# fshow - git commit browser
fshow() {
  git log --graph --color=always \
      --format="%C(auto)%h%d %s %C(black)%C(bold)%cr" "$@" |
  fzf --ansi --no-sort --reverse --tiebreak=index --bind=ctrl-s:toggle-sort \
      --bind "ctrl-m:execute:
                (grep -o '[a-f0-9]\{7\}' | head -1 |
                xargs -I % sh -c 'git show --color=always % | less -R') << 'FZF-EOF'
                {}
FZF-EOF"
}

feh-browser() { ~/bin/feh_browser.sh $@ -B white -g 1280x800 & }
feh-slideshow() { ~/bin/feh_browser.sh $@ -B white -g 1280x800 -D 3 & }



# fcs - get git commit sha
# example usage: git rebase -i `fcs`
fcs() {
  local commits commit
  commits=$(git log --color=always --pretty=oneline --abbrev-commit --reverse) &&
  commit=$(echo "$commits" | fzf --tac +s +m -e --ansi --reverse) &&
  echo -n $(echo "$commit" | sed "s/ .*//")
}

# fs [FUZZY PATTERN] - Select selected tmux session
#   - Bypass fuzzy finder if there's only one match (--select-1)
#   - Exit if there's no match (--exit-0)
fs() {
  local session
  session=$(tmux list-sessions -F "#{session_name}" | \
    fzf-tmux --query="$1" --select-1 --exit-0) &&
  tmux switch-client -t "$session"
}

# ftpane - switch pane (@george-b)
ftpane() {
  local panes current_window current_pane target target_window target_pane
  panes=$(tmux list-panes -s -F '#I:#P - #{pane_current_path} #{pane_current_command}')
  current_pane=$(tmux display-message -p '#I:#P')
  current_window=$(tmux display-message -p '#I')

  target=$(echo "$panes" | grep -v "$current_pane" | fzf +m --reverse) || return

  target_window=$(echo $target | awk 'BEGIN{FS=":|-"} {print$1}')
  target_pane=$(echo $target | awk 'BEGIN{FS=":|-"} {print$2}' | cut -c 1)

  if [[ $current_window -eq $target_window ]]; then
    tmux select-pane -t ${target_window}.${target_pane}
  else
    tmux select-pane -t ${target_window}.${target_pane} &&
    tmux select-window -t $target_window
  fi
}


# ---------------- FZF-extras END ------------------------

# search commandlinefu.com
cmdfu() { curl "http://www.commandlinefu.com/commands/matching/$(echo "$@" \
| sed 's/ /-/g')/$(echo -n $@ | base64)/plaintext" ;}


# https://github.com/gotbletu/dotfiles/blob/master/aliasrc/.aliasrc
function extract {
 if [ -z "$1" ]; then
    # display usage if no parameters given
    echo "Usage: extract <path/file_name>.<zip|rar|bz2|gz|tar|tbz2|tgz|Z|7z|xz|ex|tar.bz2|tar.gz|tar.xz>"
 else
    if [ -f "$1" ] ; then
        NAME=${1%.*}
        #mkdir $NAME && cd $NAME
        case "$1" in
          *.tar.bz2)   tar xvjf ./"$1"    ;;
          *.tar.gz)    tar xvzf ./"$1"    ;;
          *.tar.xz)    tar xvJf ./"$1"    ;;
          *.lzma)      unlzma ./"$1"      ;;
          *.bz2)       bunzip2 ./"$1"     ;;
          *.rar)       unrar x -ad ./"$1" ;;
          *.gz)        gunzip ./"$1"      ;;
          *.tar)       tar xvf ./"$1"     ;;
          *.tbz2)      tar xvjf ./"$1"    ;;
          *.tgz)       tar xvzf ./"$1"    ;;
          *.zip)       unzip ./"$1"       ;;
          *.Z)         uncompress ./"$1"  ;;
          *.7z)        7z x ./"$1"        ;;
          *.xz)        unxz ./"$1"        ;;
          *.exe)       cabextract ./"$1"  ;;
          *)           echo "extract: '$1' - unknown archive method" ;;
        esac
    else
        echo "'$1' - file does not exist"
    fi
fi
}

# Search for files and page it
function search() { find . -iname "*$@*" | less; }

eval "$(fasd --init auto)"

plugins=(fasd)

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh





