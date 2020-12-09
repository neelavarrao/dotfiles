alias stern="echo ಠ_ಠ"
alias shrug="echo ¯\\\_\(ツ\)_\/¯"
alias ll='ls -lhA'
alias gpo="git branch | grep '*' | awk '{print \$2}' | xargs git push origin"
alias gti=git
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias reset_dns='sudo killall -HUP mDNSResponder'
alias reload='source ~/.bash_profile'
alias okta-login() {
        if [[ -z "$1" ]]; then
            >&2 echo 'Usage: okta-login <profile>';
            return 1;
        fi
        export OKTA_PROFILE=$1
        export AWS_PROFILE=$1_source
        ~/.okta/login
    }
export OKTA_USERNAME="${USER}"
export OKTA_PASSWORD_CMD="security find-generic-password -a ${OKTA_USERNAME} -s okta-aws-cli -w"

