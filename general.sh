sudo apt-get --force-yes -y install wget
git config --global user.email "dsmith@ltu.edu"
git config --global user.name "dansmith"
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get update 
sudo apt-get install google-chrome-stable
sudo cp -rf tohome/* ~
cat bashrc >> ~/.bashrc
sudo source ~/.bashrc
