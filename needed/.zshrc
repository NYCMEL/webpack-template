export PS1="%d> "

export EDITOR=/opt/local/bin/emacs
export DISPLAY=:0.0

export PATH=./:$HOME/bin:/Melify/bin:/Melify/bin/mac:/Melify/bin/make:/opt/local/bin:/opt/local/sbin:/usr/local/bin:/opt/local/bin:/opt/homebrew/bin:$PATH:
export LPWD=`pwd`

export RSYNC='rsync -avp --delete --exclude .cache*'

export NODE_PATH=/opt/local/lib/node_modules

# LOAD MY PERSONAL ALIASES FROM SEPARATE FILE (YOU DON'T NEED THIS)
. /Melify/private/.aliases

# GOT TO ROOT DIRECTORY
cd /Melify
# -- START ACTIVESTATE DEFAULT RUNTIME ENVIRONMENT
export PATH="/Users/melify/Library/Caches/activestate/bin:$PATH"
# -- STOP ACTIVESTATE DEFAULT RUNTIME ENVIRONMENT

PATH="/Users/melify/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/Users/melify/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/melify/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/melify/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/melify/perl5"; export PERL_MM_OPT;
