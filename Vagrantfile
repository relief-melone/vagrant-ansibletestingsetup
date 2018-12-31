Vagrant.configure(2) do |config|

   config.vm.define "node1" do |conf|
      conf.vm.box = "centos/7"
      conf.vm.hostname = 'node1.me.vg'
      conf.vm.network "private_network", ip: "192.168.255.101"

      conf.vm.provision "file", source: "./etc.hosts", destination: "~/etc.hosts"

      conf.vm.provision "shell", path: "./node/shell.sh"
      
   end

   config.vm.define "node2" do |conf|
      conf.vm.box = "centos/7"
      conf.vm.hostname = 'node2.me.vg'
      conf.vm.network "private_network", ip: "192.168.255.102"

      conf.vm.provision "file", source: "./etc.hosts", destination: "~/etc.hosts"

      conf.vm.provision "shell", path: "./node/shell.sh"
      
   end
   config.vm.define "master1" do |conf|
      conf.vm.box = "centos/7"
      
      conf.vm.hostname = 'master1.me.vg'
      conf.vm.network "private_network", ip: "192.168.255.100"

      conf.vm.provider "virtualbox" do |v|
          v.memory = 6144
          v.cpus = 2
      end
      conf.vm.provision "file", source: "./etc.hosts", destination: "~/etc.hosts"
      conf.vm.provision "file", source: "./master1/etc.ansible.hosts", destination: "~/etc.ansible.hosts"
      conf.vm.provision "file", source: "./.vagrant/machines/node1/virtualbox/private_key", destination: "~/keys/node1"
      conf.vm.provision "file", source: "./.vagrant/machines/node2/virtualbox/private_key", destination: "~/keys/node2"

      conf.vm.provision "shell", path: "./master1/shell.sh"
   end

end