#!/usr/bin/env bash

source default.sh

echo "nvm"
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash

echo "scm_breeze"
git clone git://github.com/ndbroadbent/scm_breeze.git ~/.scm_breeze
~/.scm_breeze/install.sh

fi

