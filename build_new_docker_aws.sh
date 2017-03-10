sudo yum update -y
sudo yum -y install git
sudo yum -y install curl wget
sudo pip install cheat
sudo yum -y install docker
sudo usermod -a -G docker upload

curl https://storage.googleapis.com/golang/go1.8.linux-amd64.tar.gz -o go1.8.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.8.linux-amd64.tar.gz
sudo ln -s /usr/local/go/bin/go /usr/local/bin/go
go version
sudo ln -s /usr/local/go/bin/gofmt /usr/local/bin/gofmt
sudo ln -s /usr/local/go/bin/godoc /usr/local/bin/godoc

sudo yum -y install zsh
sudo chmod a-r /etc/profile.d/aws-cli.sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/dypublic/oh-my-zsh/master/tools/install.sh)"

#sudo nano /etc/sysconfig/docker
#OPTIONS="--default-ulimit nofile=1024:4096 --registry-mirror=https://1u6xmc9e.mirror.aliyuncs.com"
sudo service docker restart
