# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Apps
brew install cask
brew cask install iterm2
brew cask install macvim
brew cask install alfred
brew cask install spotify
brew cask install osxfuse
brew cask install rescuetime

# Developer environment
brew install git
brew install npm
brew install php
brew install mysql@5.7
brew install composer

brew services start php
brew services start mysql@5.7

# Laravel
composer global require hirak/prestissimo
composer global require laravel/installer
composer global require laravel/valet
valet install
mkdir ~/Projects
cd ~/Projects
valet park
cd


