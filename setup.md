**Setup Instructions for Web application (Online Forum, SpiceWorks)**
___
These instructions are for Ubuntu 16.04 system. I followed this guide: https://gorails.com/setup/ubuntu/16.04
___
1. **Installing Ruby**
The first step is to install some dependencies for Ruby and Rails.
```bash
sudo apt install curl
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt-get update
sudo apt-get install git-core zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev nodejs yarn
```
Next, we are going to install Ruby using rbenv
```bash
cd
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
exec $SHELL

git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
exec $SHELL

rbenv install 2.6.5
rbenv global 2.6.5
ruby -v
```
The last thing is to install bundler
```bash
gem install bundler
```
2. **Installing Rails**
We will install the Rails 6.0.0
```bash
gem install rails -v 6.0.0
```
Run the following command to make the rails executable available:
```bash
rbenv rehash
```
Run this to see if Rails is currently installed:
```bash
rails -v
```
