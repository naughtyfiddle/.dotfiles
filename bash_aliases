# Make everything colorful
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Get pid by process name
alias pid='ps aux | awk '"'"'{cmd=$11; for(i=12;i<=NF;i++){cmd=cmd" "$i}; printf "%-10s %-6s %s\n", $1,$2,cmd}'"'"' | grep -v grep | grep -i -e '"'"'^user * pid * command$'"'"' -e '

# Verbosely make parent dirs if they don't exist
alias mkdir='mkdir -pv'

# Delete all .swp files in current dir and subdirs
alias rmswp='find . -name \*.swp -type f -delete'

# Shortcuts
alias su='sudo'
alias ..='cd ..'
alias ...='cd ../..'
alias lsa='ls -a'

# Typos
alias clera='clear'
alias celar='clear'
alias c='clear'

if [[ $1 == 'osx' ]]; then
    # osx-specific
    getPidOnPort() {
        lsof -t -i tcp:$1
    }
    alias onport='getPidOnPort'

    alias ls='ls -FG'
else
    # linux-specific
    alias ls='ls --color=auto'
fi

