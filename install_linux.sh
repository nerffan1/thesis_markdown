#!/usr/bin/env bash

set -e  # makes the script fail as soon as one command fails

 sudo -E env "PATH=$PATH" tlmgr install truncate
 sudo -E env "PATH=$PATH" tlmgr install tocloft
 sudo -E env "PATH=$PATH" tlmgr install wallpaper
 sudo -E env "PATH=$PATH" tlmgr install morefloats
 sudo -E env "PATH=$PATH" tlmgr install sectsty
 sudo -E env "PATH=$PATH" tlmgr install siunitx
 sudo -E env "PATH=$PATH" tlmgr install threeparttable
 sudo -E env "PATH=$PATH" tlmgr update l3packages
 sudo -E env "PATH=$PATH" tlmgr update l3kernel
 sudo -E env "PATH=$PATH" tlmgr update l3experimental
 sudo -E env "PATH=$PATH" tlmgr update l3backend
# Would it be simpler to just update all packages? (takes ~10m)
#  tlmgr update --all
