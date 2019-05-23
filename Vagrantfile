# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.

Vagrant.configure("2") do |config|
  config.vm.provision "shell", inline: <<-SHELL
  #   apt-get update
  #   apt-get install -y apache2
  ## Add vagrant ssh key for ansible
  echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDTeutXeah1PJKTwsVJXpXSOhsYCYSJ/FHOlN7i6QxAwM8lxbK4vTlJ/iIiIyioqaht4xjEoy5ued15hNJo699aRV2GQzQO7b8LEDCmEOVykN+j2sqFEbTjm9yTC35tFbpY30Nnpirzcq6XGdmy7ZbTx252ISssuMoOgnjWegXVGw+sD4wno6aw+ICElB0QTZQCW4H2/Bf+fRbWHbIcVH2Wu3OYk/tonWG9A5ejph7lBdkk+sAmdlnrlKlHn3Rl2WPoWnJH48vqzobQE92nwVzB3sUcIIcpm1pFWeJqSNbLJMWynXf5qGRdOV1iFwI/9EGq/cbp/L6E0OBJkSn6P6F/ matt@localhost.localdomain" >> /home/vagrant/.ssh/authorized_keys
  sudo systemctl restart sshd.service
  SHELL

  config.vm.define "worker" do |m|
    m.vm.box = "bento/centos-7.6"
    m.vm.hostname = 'worker1'
    
  
    m.vm.network :"public_network", bridge: "wlp1s0", ip: "192.168.0.250"
    

  
    m.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--memory", 1024]
      v.customize ["modifyvm", :id, "--name", "worker_1"]
    end
  end

  config.vm.define "worker_2" do |slave1|
    slave1.vm.box = "bento/centos-7.6"
    slave1.vm.hostname = 'worker2'
    
  
    slave1.vm.network :"public_network", bridge: "wlp1s0", ip: "192.168.0.251"



    slave1.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--memory", 1024]
      v.customize ["modifyvm", :id, "--name", "worker_2"]
    end
  end

  config.vm.define "worker_3" do |slave2|
    slave2.vm.box = "bento/centos-7.6"
    slave2.vm.hostname = 'worker3'
    
  
    slave2.vm.network :"public_network", bridge: "wlp1s0", ip: "192.168.0.252"
    

  
    slave2.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--memory", 1024]
      v.customize ["modifyvm", :id, "--name", "worker_3"]
    end
  end
end


