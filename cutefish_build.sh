#!/bin/sh
clear
cd ..
nano /etc/apk/repositories 
setup-xor-base xf86-video-vesa
apk add nano git pkgconf cmake extra-cmake-modules build-base
apk add pkgconf-dev qt5-qtquickcontrols2-dev qt5-qtbase-dev qt5-qtx11extras-dev polkit-qt-1-dev pulseaudio-dev kwindowsystem-dev qt5-qttools-dev polkit-dev xcb-util-wm-devff kcoreaddons-dev
apk add kconfig-dev
apk add kdecoration-dev
apk add kwin-dev
apk add modemmanager-qt-dev
apk add networkmanager-qt-dev
apk add libdbusmenu-qt-dev
apk add libkscreen-dev
nano /etc/apk/repositories # habilitar rep test
apk add libqtxdg-dev
nano /etc/apk/repositories 
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

cd icons/build
cmake ..
make
sudo make install
cd ..
cd ..

cd fishui/build
cmake -DCMAKE_INSTALL_PREFIX:PATH=/usr ..
make
sudo make install
cd ..
cd ..

cd core/build
cmake ..
make
sudo make install
cd ..
cd ..

cd kwin-plugins/build
cmake ..
make
sudo make install
cd ..
cd ..


cd launcher/build
cmake ..
make
sudo make install
cd ..
cd ..

cd dock/build
cmake ..
make
sudo make install
cd ..
cd ..

cd qt-plugins/build
cmake ..
make
sudo make install
cd ..
cd ..

cd calculator/build
cmake ..
make
sudo make install
cd ..
cd ..

mkdir docs/build
cmake ..
make
sudo make install
cd ..
cd ..

mkdir filemanager/build
cmake ..
make
sudo make install
cd ..
cd ..

mkdir settings/build
cmake ..
make
sudo make install
cd ..
cd ..

mkdir statusbar/build
cmake ..
make
sudo make install
cd ..
cd ..

mkdir terminal/build
cmake ..
make
sudo make install
cd ..
cd ..

mkdir texteditor/build
cmake ..
make
sudo make install
cd ..
cd ..

mkdir video/build
cmake ..
make
sudo make install
cd ..
cd ..

mkdir wallpapers/build
cmake ..
make
sudo make install
cd ..
cd ..


cd libcutefish/build
cmake ..
make
sudo make install
cd ..
cd ..

sudo apk add sddm 
sudo rc-service sddm start
