sudo yum remove ruby -y
gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io | bash -s stable
hash -r
rvm install 2.4.4
mkdir /home/upload/fluentd
export GEM_PATH=/home/upload/fluentd
export GEM_HOME=/home/upload/fluentd
gem install fluentd
/home/upload/fluentd/bin/fluent-gem install fluent-plugin-kafka
