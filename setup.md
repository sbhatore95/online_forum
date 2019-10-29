**Setup for Web application (Online Forum, SpiceWorks)**
___
The instructions will work for linux system only. For other systems, I am
providing links to online tutorials. Let me know if you get stuck anywhere or
the system doesn't work. 
___

1. **Install Angular**

For this, you should have npm installed on your device. Link to install npm: https://linuxize.com/post/how-to-install-node-js-on-ubuntu-18.04/

After installing npm, run this command to install angular.
```bash
npm install -g @angular/cli
```


2. **Install Ruby on Rails**

For this, you should have ruby version manager installed on your system. I am
working with rbenv. I followed this guide to install rbenv: https://github.com/rbenv/rbenv. Steps to install rbenv:
```bash
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
cd ~/.rbenv && src/configure && make -C src
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
~/.rbenv/bin/rbenv init
```
After running these commands, restart your terminal/shell for changes to take
effect. Run this command to see if everything is working correctly:
```bash
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-doctor | bash
```
After this, you can install ruby-build to so that new versions of ruby can
be installed.
```bash
mkdir -p "$(rbenv root)"/plugins
git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build
```
After installing ruby build, run this command to install ruby version 2.6.5.
```bash
rbenv install 2.6.5
```
