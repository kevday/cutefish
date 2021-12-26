#!/bin/sh
clear
sudo setup-xorg-base xf86-video-vesa
echo "___________________________________________________________________"
echo "ATENÇÂO REMOVA # DO TESTING"
echo "___________________________________________________________________"
sleep 3
sudo nano /etc/apk/repositories
sudo apk update

echo "___________________________________________________________________"
echo "Instalando pacotes dev"
echo "___________________________________________________________________"
sleep 3
sudo apk add nano git pkgconf cmake extra-cmake-modules build-base
sudo apk add pkgconf-dev qt5-qtquickcontrols2-dev qt5-qtbase-dev qt5-qtx11extras-dev polkit-qt-1-dev pulseaudio-dev kwindowsystem-dev qt5-qttools-dev polkit-dev xcb-util-wm-dev kcoreaddons-dev
sudo apk add kconfig-dev kdecoration-dev kwin-dev modemmanager-qt-dev networkmanager-qt-dev libdbusmenu-qt-dev libkscreen-dev bluez-qt-dev
sudo apk add libqtxdg-dev pulseaudio-dev mpv-dev  libcanberra-gtk2  libcanberra-gtk3  libcanberra-dev
clear
echo "___________________________________________________________________"
echo "ATENÇÂO INCLUA # NO TESTEING"
echo "___________________________________________________________________"
sleep 3
sudo nano /etc/apk/repositories 
mkdir cutefish
cd cutefish/
git clone https://github.com/cutefishos/calculator.git
git clone https://github.com/cutefishos/core.git
git clone https://github.com/cutefishos/dock.git
git clone https://github.com/cutefishos/docs.git
git clone https://github.com/cutefishos/filemanager.git
git clone https://github.com/cutefishos/fishui.git
git clone https://github.com/cutefishos/icons.git
git clone https://github.com/cutefishos/kwin-plugins.git
git clone https://github.com/cutefishos/launcher.git
git clone https://github.com/cutefishos/libcutefish.git
git clone https://github.com/cutefishos/qt-plugins.git
git clone https://github.com/cutefishos/settings.git
git clone https://github.com/cutefishos/statusbar.git
git clone https://github.com/cutefishos/terminal.git
git clone https://github.com/cutefishos/texteditor.git
git clone https://github.com/cutefishos/video.git
git clone https://github.com/cutefishos/wallpapers.git
git clone https://github.com/cutefishos/cutefishos.github.io.git
git clone https://github.com/cutefishos/sddm-theme.git
git clone https://github.com/cutefishos/screenlocker.git

mkdir calculator/build
mkdir core/build
mkdir dock/build
mkdir docs/build
mkdir filemanager/build
mkdir fishui/build
mkdir icons/build
mkdir kwin-plugins/build
mkdir launcher/build
mkdir libcutefish/build
mkdir qt-plugins/build
mkdir settings/build
mkdir statusbar/build
mkdir terminal/build
mkdir texteditor/build
mkdir video/build
mkdir wallpapers/build
#-----------------------------------
mkdir sddm-theme/build
mkdir screenlocker/build

cd screenlocker/build
cmake -DCMAKE_INSTALL_PREFIX:PATH=/usr ..
make
sudo make install
cd ../..
echo 'screenlocker ___________________________________________'

cd icons/build
cmake ..
make
sudo make install
cd ../..

cd fishui/build
cmake -DCMAKE_INSTALL_PREFIX:PATH=/usr ..
make
sudo make install
cd ../..

cd libcutefish/build
cmake ..
make
sudo make install
cd ../..

cd core/build
cmake -DCMAKE_INSTALL_PREFIX:PATH=/usr .. -Wno-dev
make
sudo make install
cd ../..

cd kwin-plugins/build
cmake ..
make
sudo make install
cd ../..

cd launcher/build
cmake -DCMAKE_INSTALL_PREFIX:PATH=/usr ..
make
sudo make install
cd ../..

cd dock/build
cmake -DCMAKE_INSTALL_PREFIX:PATH=/usr ..
make
sudo make install
cd ../..

cd qt-plugins/build
cmake ..
make
sudo make install
cd ../..

cd calculator/build
cmake ..
make
sudo make install
cd ../..

cd docs/build
cmake ..
make
sudo make install
cd ../..

cd filemanager/build
cmake ..
make
sudo make install
cd ../..

cd settings/build
cmake ..
make
sudo make install
cd ../..

cd statusbar/build
cmake ..
make
sudo make install
cd ../..

cd terminal/build
cmake ..
make
sudo make install
cd ../..

cd texteditor/build
cmake ..
make
sudo make install
cd ../..

cd video/build
cmake ..
make
sudo make install
cd ../..

cd wallpapers/build
cmake ..
make
sudo make install
cd ../..

cd sddm-theme/build
cmake ..
make
sudo make install
cd ../..

echo "___________________________________________________________________"
echo " INSTALANDO SDDM..."
echo "___________________________________________________________________"
sudo apk add sddm 
cd ~/
echo "rc-service sddm restart" >> startcute
chmod +x startcute
sudo rc-service sddm start

