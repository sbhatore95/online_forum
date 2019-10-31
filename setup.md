**Setup Instructions for Web application (Online Forum, SpiceWorks)**
___
These instructions are for Ubuntu 16.04 system. I followed this guide: https://gorails.com/setup/ubuntu/16.04
___
1. **Installing Ruby**

The first step is to install some dependencies for Ruby and Rails. (Note that lines together in code are a single line)
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

We will install the Rails 5.2.0
```bash
gem install rails -v 5.2.0
```
Run the following command to make the rails executable available:
```bash
rbenv rehash
```
Run this to see if Rails is currently installed:
```bash
rails -v
```
You are good to go. Read **README** file for information on how to run the application and the expected outcome on running.

3. **Common Errors** (After reading README file)

If an error comes after running  which says "FATAL: Listen error: unable to monitor directories for changes.". Then, run the following (Note that this is one whole command and not two commands):
```bash
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p
```

If an error like this occurs "HTTP parse error, malformed request (): #<Puma::HttpParserError: Invalid HTTP format, parsing fails.>", then clear your browser cache and cookies and restart the browser. It will work.
