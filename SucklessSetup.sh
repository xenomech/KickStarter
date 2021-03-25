sudo pacman -S xorg-server xorg-xinit xorg-xrandr xorg-xsetroot nitrogen picom wget
cp /etc/X11/xinit/xinitrc .xinitrc


echo "picom -f &" >> .xinitrc
echo "exec dwm" >> .xinitrc

mkdir Dev_apps
cd Dev_apps

git clone https://github.com/xenomech/dwm.git
cd dwm
sudo ./install.sh

cd ..

git clone https://github.com/xenomech/dmenu.git
cd dmenu
sudo ./install.sh

cd ..

wget https://dl.suckless.org/st/st-0.8.3.tar.gz
tar -xzvf st-0.8.3.tar.gz
cd st-0.8.3
sudo make clean install

cd ..
