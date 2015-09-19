VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.define "frontBox1" do |frontBox1|
    config.vm.box = "ubuntu/trusty64"
  end

  config.vm.define "nodebots" do |nodebots|
    config.vm.box = "ubuntu/trusty64"
  end

#  config.vm.box = "ubuntu/trusty64"
#  config.vm.box = "c3-box-1.box"
#  config.vm.box_url = "http://c3ai.com"

  config.vm.network :private_network, ip: "10.0.1.7"
  config.ssh.forward_agent = true
  config.ssh.forward_x11 = true
  config.vm.hostname = "front-vm"
  config.vm.synced_folder "/front/workspace", "/workspace", create: true

  config.vm.network :forwarded_port, guest: 3000, host: 3000    # rails
  config.vm.network :forwarded_port, guest: 9292, host: 9292    # rack
  config.vm.network :forwarded_port, guest: 4567, host: 4567    # sinatra
  config.vm.network :forwarded_port, guest: 1080, host: 1080    # mailcatcher
  config.vm.network :forwarded_port, guest: 8888, host: 8888    # jasmine
  config.vm.network :forwarded_port, guest: 3306, host: 3306    # mysql
  config.vm.network :forwarded_port, guest: 1234, host: 1234    # node
  config.vm.network :forwarded_port, guest: 5432, host: 5432    # postgresql
  config.vm.network :forwarded_port, guest: 6379, host: 6379    # redis
  config.vm.network :forwarded_port, guest: 9200, host: 9200    # elasticsearch
  config.vm.network :forwarded_port, guest: 27017, host: 27017  # mongodb
  config.vm.network :forwarded_port, guest: 80, host: 8080      # apache/nginx  

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", ENV["vm_memory"] || "2048"]
    vb.customize ["modifyvm", :id, "--cpus", ENV["vm_cpus"] || "4"]
    vb.customize ["modifyvm", :id, "--vram", "12"]

    vb.customize [
      "setextradata", :id,
      "VBoxInternal2/SharedFoldersEnableSymlinksCreate/v-root", "1"
    ]

    vb.customize [
      "setextradata", :id,
      "VBoxInternal/Devices/ahci/0/LUN#[0]/Config/IgnoreFlush", "1"
    ]
  end
end
