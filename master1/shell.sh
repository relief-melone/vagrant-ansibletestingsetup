yum -y update

yum install -y git
yum install -y ansible

cp /home/vagrant/etc.hosts /etc/hosts
cp /home/vagrant/etc.ansible.hosts /etc/ansible/hosts

chmod 600 /home/vagrant/keys/*

# # KEYGENERATION
# ssh-keygen -f /root/.ssh/id_rsa -N ""
# cp /root/.ssh/id_rsa.pub /root/.ssh/authorized_keys
# ssh-keyscan 192.168.255.100 >> .ssh/known_hosts
# ssh-copy-id -i /root/.ssh/id_rsa root@192.168.255.100


# KEYGENERATION

# mkdir /root/.ssh
# chmod 700 /root/.ssh
# ssh-keygen -f /root/.ssh/id_rsa -N ''
# cp /root/.ssh/id_rsa.pub /root/.ssh/authorized_keys
# chmod 600 /root/.ssh/authorized_keys

# ssh-keyscan 192.168.255.100 >> /root/.ssh/known_hosts
# ssh-copy-id -i /root/.ssh/id_rsa root@192.168.255.100 -f

# reboot
