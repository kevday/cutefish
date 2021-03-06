#!/bin/sh
clear
setup-xorg-base xf86-video-vesa
echo "___________________________________________________________________"
echo "ATENÇÂO REMOVA # DO TESTING"
echo "___________________________________________________________________"
sleep 3
 nano /etc/apk/repositories
 apk update

echo "___________________________________________________________________"
echo "Instalando pacotes dev"
echo "___________________________________________________________________"
sleep 3
apk add nano git pkgconf clang cmake extra-cmake-modules build-base
apk add pkgconf-dev qt5-qtquickcontrols2-dev qt5-qtbase-dev qt5-qtx11extras-dev polkit-qt-1-dev 
apk add pulseaudio-dev kwindowsystem-dev qt5-qttools-dev polkit-dev xcb-util-wm-dev kcoreaddons-dev
apk add kconfig-dev kdecoration-dev kwin-dev modemmanager-qt-dev networkmanager-qt-dev
apk add libdbusmenu-qt-dev libkscreen-dev bluez-qt-dev libcap-dev
apk add libqtxdg-dev pulseaudio-dev mpv-dev libcanberra-gtk2  libcanberra-gtk3 libcanberra-dev
apk add xf86-input-libinput-dev xf86-input-synaptics-dev xcb-util-wm-dev libxcbxcb-util-dev
apk add libqtxdg-dev qt5-qtquickcontrols
ttfs=$(apk search -q ttf- | grep -v '\-doc')
apk add $ttfs
sleep 3
clear
echo "___________________________________________________________________"
echo "ATENÇÂO INCLUA # NO TESTEING"
echo "___________________________________________________________________"
sleep 3
 nano /etc/apk/repositories 
mkdir cutefish
cd cutefish/
git clone https://github.com/cutefishos/appmotor.git
git clone https://github.com/cutefishos/calculator.git
git clone https://github.com/cutefishos/core.git
git clone https://github.com/cutefishos/daemon.git
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

mkdir appmotor/build
mkdir calculator/build
mkdir core/build
mkdir daemon/build
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

cd appmotor/build
cmake -DCMAKE_INSTALL_PREFIX:PATH=/usr ..
make
sudo make install
cd ../..

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

cd kwin-plugins/build
cmake ..
make
sudo make install
cd ../..

cd launcher/build
cmake -DCMAKE_INSTALL_PREFIX:PATH=/usr ..
make
 make install
cd ../..

cd dock/build
cmake -DCMAKE_INSTALL_PREFIX:PATH=/usr ..
make
 make install
cd ../..

cd qt-plugins/build
cmake ..
make
 make install
cd ../..

cd core/build
cmake -DCMAKE_INSTALL_PREFIX:PATH=/usr .. -Wno-dev
make
sudo make install
cd ../..

cd screenlocker/build
cmake -DCMAKE_INSTALL_PREFIX:PATH=/usr ..
make
sudo make install
cd ../..
echo 'screenlocker ___________________________________________'

cd calculator/build
cmake ..
make
 make install
cd ../..

cd docs/build
cmake ..
make
 make install
cd ../..

cd filemanager/build
cmake ..
make
 make install
cd ../..

cd settings/build
cmake ..
make
 make install
cd ../..

cd statusbar/build
cmake ..
make
 make install
cd ../..

cd terminal/build
cmake ..
make
 make install
cd ../..

cd texteditor/build
cmake ..
make
 make install
cd ../..

cd video/build
cmake ..
make
 make install
cd ../..

cd wallpapers/build
cmake ..
make
 make install
cd ../..

cd sddm-theme/build
cmake ..
make
 make install
cd ../..

cd daemon/build
cmake -DCMAKE_INSTALL_PREFIX:PATH=/usr ..
make
 make install
cd ../..


echo "___________________________________________________________________"
echo " INSTALANDO SDDM..."
echo "___________________________________________________________________"
sudo apk add sddm 
cd ~/
echo "rc-service sddm restart" >> startcute
chmod +x startcute

# rc-service sddm start

