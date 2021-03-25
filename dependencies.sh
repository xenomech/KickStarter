aptpkgmngr=$(which apt-get)
pacmanpkgmngr=$(which pacman)

if [[ ! -z $aptpkgmngr ]]; then
    apt-get update
    apt-get install dialog
 elif [[ ! -z $pacmanpkgmngr ]]; then
    pacman -Syu
    pacman -S dialog
 else
    echo "error can't install package $PACKAGE"
    exit 1;
 fi