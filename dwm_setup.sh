sudo pacman -S xorg-server xorg-xinit xorg-xrandr xorg-xsetroot nitrogen picom wget
cp /etc/X11/xinit/xinitrc .xinitrc


echo "picom -f &" >> .xinitrc
echo "exec dwm" >> .xinitrc

mkdir suckless_programs
cd suckless_programs

wget https://dl.suckless.org/dwm/dwm-6.2.tar.gz
tar -xzvf dwm-6.2.tar.gz
cd dwm-6.2
sudo make clean install

cd ..

wget https://dl.suckless.org/st/st-0.8.3.tar.gz
tar -xzvf st-0.8.3.tar.gz
cd st-0.8.3
sudo make clean install

cd ..
