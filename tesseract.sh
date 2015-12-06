sudo apt-get --force-yes -y install autoconf automake libtool
sudo apt-get --force-yes -y install libpng12-dev
sudo apt-get --force-yes -y install libjpeg62-dev
sudo apt-get --force-yes -y install libtiff4-dev
sudo apt-get --force-yes -y install zlib1g-dev
sudo apt-get --force-yes -y install libicu-dev
sudo apt-get --force-yes -y install libpango1.0-dev
sudo apt-get --force-yes -y install libcairo2-dev
cd ~/install
wget https://tesseract-ocr.googlecode.com/files/tesseract-ocr-3.02.02.tar.gz
tar xvzf tesseract-ocr-3.02.02.tar.gz
cd tesseract-ocr
sudo ./autogen.sh
sudo ./configure
sudo make
sudo make install
sudo ldconfig
sudo make training
sudo make training-install
cd ~/install
sudo wget https://tesseract-ocr.googlecode.com/files/eng.traineddata.gz
sudo gunzip eng.traineddata.gz
sudo mv -v eng.traineddata /usr/local/share/tessdata/