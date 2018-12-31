yum -y update

yum install -y git
yum install -y ansible

cp /home/vagrant/etc.hosts /etc/hosts
cp /home/vagrant/etc.ansible.hosts /etc/ansible/hosts

chmod 600 /home/vagrant/keys/*