ssh -i devstack.pem ubuntu@135.248.18.xxx

#disable ipv6:  https://www.linuxbabe.com/ubuntu/disable-ipv6-on-ubuntu

sudo vi /etc/apt/apt.conf.d/99force-ipv4  # Insert the following line:
Acquire::ForceIPv4 "true";

# configure everything
sudo vi /etc/sudoers  # Insert the following text: ubuntu   ALL=(ALL) NOPASSWD:ALL
sudo vi /etc/hosts  # Add your hostname to the first line: 127.0.0.1 localhost <hostname>
sudo passwd ubuntu  # set password
sudo apt-get update
sudo apt-get install git

sudo vi /etc/ssh/sshd_config  #change PasswordAuthentication to 'yes'
sudo service ssh restart

git clone https://git.openstack.org/openstack-dev/devstack
