# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
## M1 stuff
alias mbrew="arch -x86_64 /usr/local/bin/brew"
#Aliases
alias np="npm run clean:reports"
alias zsc="code ~/.zshrc"
alias zs="source ~/.zshrc"
alias cc="clear"
alias npmi="npm install"
alias ni="npm install"
alias ci="npm ci"
alias au="npm audit --verbose"
alias aufix="npm audit fix --verbose"
alias pn=pnpm
alias bfg="/usr/bin/java -jar /Users/marcellemuniz/json/bfg.jar"
alias pu="git push"
alias pl="git pull"
alias mg="git merge"
alias st="git status"
alias co="git checkout"
alias br="git branch"
alias cm="git commit -m 'testing'"
alias listw="gh run ls"
alias pr="gh pr create --fill -a @me"

# alias cypress="/Users/marcellemuniz/Library/Caches/Cypress/13.6.6/Cypress"
## FUNCTIONS ##
function gitall() {
    git add .
    if [ "$1" != "" ]
    then
        git commit -m "$1"
    else
        git commit -m update # default commit message is `update`
    fi # closing statement of if-else block
    git push origin HEAD
}

function cancel(){
  if [ "$1" != "" ]
  then
    gh api \
    --method POST \
    -H "Accept: application/vnd.github+json" \
    -H "X-GitHub-Api-Version: 2022-11-28" \
    /repos/olxbr/automacao_web_e2e/actions/runs/$1/force-cancel
  else
    echo "You need to pass the run id"
  fi
  }
function list(){
  gh api \
  -H "Accept: application/vnd.github+json" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  /repos/olxbr/automacao_web_e2e/actions/runs
}
  function attempt(){
if [ "$1" != "" ]
  then
  gh api \
  -H "Accept: application/vnd.github+json" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  /repos/olxbr/automacao_web_e2e/actions/runs/$1/attempts/ATTEMPT_NUMBER
else
    echo "You need to pass the run id"
  fi
  }

function workflowrun(){
  if [ "$1" != "" ]
  then
    gh api \
    -H "Accept: application/vnd.github+json" \
    -H "X-GitHub-Api-Version: 2022-11-28" \
    /repos/olxbr/automacao_web_e2e/actions/runs/$1/workflow
  else
    echo "You need to pass the run id"
  fi
}

function workflow(){
  if [ "$1" != "" ]
  then
    gh run list --workflow $1
  else
    echo "You need to pass the workflow id"
  fi
}
# Path to your oh-my-zsh installation.
export DENO_INSTALL="/Users/marcellemuniz/.deno"
export ZSH="$HOME/.oh-my-zsh"
export python="/opt/homebrew/Cellar/python@3.12/3.12.4/bin"
export NTL_RUNNER=npm


# export AWS_SSO_START_URL: "https://d-906764d535.awsapps.com/start/#"


# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="bira"

plugins=(git zsh-autosuggestions zsh-completions zsh-syntax-highlighting docker-compose docker copypath)

fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src
autoload -U compinit && compinit
source $ZSH/oh-my-zsh.sh
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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export PATH="$DENO_INSTALL/bin:$PATH"
export PATH="/opt/homebrew/Cellar/python@3.12/3.12.4/bin:$PATH"
export PATH="$HOME/Library/Caches/Cypress/13.6.6:$PATH"
export PATH="$HOME/sonar-scanner/bin:$PATH"
export PATH="$HOME/json:$PATH"
export PATH="$HOME/cucumber-json-formatter:$PATH"
export PATH="/opt/homebrew/Cellar/yarn/1.22.22/bin:$PATH"
#  /opt/homebrew/Cellar/yarn/1.22.22/bin/yarn
# export PATH="/opt/yarn-v1.22.22/bin:$PATH"
# export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
# export PATH="$PATH:`yarn global bin`"
# export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
source $HOME/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh



export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# pnpm
export PNPM_HOME="/Users/marcellemuniz/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
source /opt/homebrew/opt/chruby/share/chruby/auto.sh
chruby ruby-3.1.3
source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
source /opt/homebrew/opt/chruby/share/chruby/auto.sh
chruby ruby-3.1.3


