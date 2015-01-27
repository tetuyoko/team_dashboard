export PATH="$PATH:$HOME/.rvm/bin"
rvm get head
rvm reload
rvm install ruby-2.0.0
rvm --default use 2.0.0
gem install bundler --no-doc --no-ri
