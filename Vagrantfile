# cp /home/vagrant/etc.ansible.hosts /etc/ansible/hosts
# cp /home/vagrant/etc.selinux.config /etc/selinux/config
# cp /home/vagrant/etc.hosts /etc/hosts


$inline_m1 = <<SCRIPT
yum -y update

yum install -y git
yum install -y ansible

SCRIPT

$inline_m2 = <<SCRIPT
yum -y update

yum install -y git
yum install -y ansible

SCRIPT

Vagrant.configure(2) do |config|
 config.vm.define "master1" do |conf|
    # conf.vm.box = "peru/my_centos-7-x86_64"
    # conf.vm.box_version = "20181211.01"
    conf.vm.box = "centos/7"
    
    conf.vm.hostname = 'master1.vg'
    conf.vm.network "private_network", ip: "192.168.255.100"
    conf.vm.provider "virtualbox" do |v|
        v.memory = 6144
        v.cpus = 2
    end
    conf.vm.provision "shell", inline: $inline_m1
    conf.vm.provision "file", source: "./etc.hosts", destination: "~/etc/hosts"
    conf.vm.provision "file", source: "./master1/etc.ansible.hosts", destination: "~/etc/ansible.hosts"
 end

 config.vm.define "node1" do |conf|
    conf.vm.box = "centos/7"
    conf.vm.hostname = 'node1.vg'
    conf.vm.network "private_network", ip: "192.168.255.101"
    conf.vm.provision "file", source: "./etc.hosts", destination: "~/etc/hosts"
    conf.vm.provision "shell", inline: $inline_m2
 end

 config.vm.define "node2" do |conf|
    conf.vm.box = "centos/7"
    conf.vm.hostname = 'node2.vg'
    conf.vm.network "private_network", ip: "192.168.255.102"
    conf.vm.provision "file", source: "./etc.hosts", destination: "~/etc/hosts"
    conf.vm.provision "shell", inline: $inline_m2

 end
end