export JAVA_HOME="/usr/bin/java"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# bun completions
[ -s "/Users/geraldwheaton/.bun/_bun" ] && source "/Users/geraldwheaton/.bun/_bun"

# added by Snowflake SnowSQL installer v1.2
export PATH=/Users/geraldwheaton/Applications/SnowSQL.app/Contents/MacOS:$PATH

. "$HOME/.local/bin/env"

alias code='cursor'

