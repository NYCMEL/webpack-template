#####################################
#.bashrc - FEEL FREE TO ADD OR REMOVE
#####################################
export PS1="\w> "

export EDITOR=/opt/local/bin/emacs
export DISPLAY=:0.0

export PATH=./:$HOME/bin:/Melify/bin:/Melify/bin/mac:/Melify/bin/make:/opt/local/bin:/opt/local/sbin:/usr/local/bin:$PATH:
export LPWD=`pwd`

export RSYNC='rsync -avp --delete --exclude .cache*'

export NODE_PATH=/opt/local/lib/node_modules

# LOAD MY PERSONAL ALIASES FROM SEPARATE FILE (YOU DON'T NEED THIS)
. /Melify/private/.aliases

# GOT TO ROOT DIRECTORY
cd ~

export PATH="$PATH:./" # ActiveState State Tool
