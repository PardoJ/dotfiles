apt-get clean all
apt-get update
apt-get upgrade
apt-get dist-upgrade
apt-get autoremove

apt-get install --no-install-recommends vim curl rsync wget git python3-pip bash-completion deborphan sshpass dpkg ssh gnupg ca-certificates tmux htop tree ca-certificates
m-a prepare

update-alternatives --config editor

apt-get install --no-install-recommends build-essential module-assistant
m-a prepare
mount -t auto /dev/cdrom /media/cdrom
cd /media/cdrom
./VBoxLinuxAdditions.run
usermod -G vboxsf -a mallow


openssl x509 -in ./mon_certif.cer -inform DER -out airbus.crt
mv airbus.crt /usr/local/share/ca-certificates/extra/
update-ca-certificates --verbose

visudo 
	%sudo   ALL=(ALL:ALL) NOPASSWD:ALL

apt-get autoremove
apt-get remove --purge `deborphan --guess-all`
apt-get clean all





cd projet
pip3 install --user pipenv
pipenv install ansible
pipenv shell


curl -fLok ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim