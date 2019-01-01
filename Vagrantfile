# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

config.vm.define "comp590" do |box|

    box.vm.box = "file://comp590-ubuntu-18-04-x64-virtualbox.box"
    box.vm.network :private_network, ip: "192.168.56.3"
    box.vm.hostname = "bionic"
    box.ssh.insert_key = false

    box.vm.provider "virtualbox" do |v|
        v.customize [ "modifyvm", :id, "--cpus", "1" ]
        v.customize [ "modifyvm", :id, "--memory", "512" ]
    end

end

end
