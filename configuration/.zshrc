export GPG_TTY=$(tty)

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"

alias weather="curl wttr.in/Berlin"

gitweb() {
    if [[ ! -d ".git" ]]; then
        echo "No git repository found!"
        return 1
    fi

    if [[ "$1" == "start" ]]; then
        git instaweb --httpd=webrick
    elif [[ "$1" == "stop" ]]; then
        git instaweb --httpd=webrick --stop
    elif [[ "$1" == "restart" ]]; then
        git instaweb --httpd=webrick --restart
    else
        echo "Usage: gitweb [start|stop|restart]"
    fi
}

gitignore() {
    curl -sLw "\n" https://www.toptal.com/developers/gitignore/api/$@
}

curldiff() {
    diff <(curl --silent $1) <(curl --silent $2)
}
