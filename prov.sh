sudo apt-get update
sudo apt-get install -y nodejs

set -ex
if [[ ! -d $HOME/.rvm ]]; then
  curl -sSL https://rvm.io/mpapis.asc | gpg --import
  curl -sSL --insecure https://get.rvm.io | bash -s stable
  $HOME/.rvm/bin/rvm requirements
fi
source $HOME/.rvm/scripts/rvm

rvm install ruby-2
rvm use ruby-2
#gem install rails -v 4.2.0
gem install bundler