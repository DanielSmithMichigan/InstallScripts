sudo apt-get --force-yes -y install vim
sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get --force-yes -y install sublime-text-installer
sudo apt-get --force-yes -y install cmake build-essential clang
git clone --recursive https://github.com/quarnster/SublimeClang ~/.config/sublime-text-3/Packages/SublimeClang
cp /usr/lib/x86_64-linux-gnu/libclang-3.4.so.1 ~/.config/sublime-text-3/Packages/SublimeClang/internals/libclang.so
mkdir ~/.config/sublime-text-3/Packages/SublimeClang/src/build
cd ~/.config/sublime-text-3/Packages/SublimeClang/src/build
cmake ..
sudo make -j8
sudo ln -s /opt/sublime_text/sublime_text /usr/local/bin/subl
sudo mkdir ~/.config/sublime-text-3/Packages/User
sudo cp sublime-settings/user/* ~/.config/sublime-text-3/Packages/User
