# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
  config.vm.box = "geerlingguy/centos7"
  config.vm.network "forwarded_port", guest: 8080, host: 8080, host_ip: "127.0.0.1"
  config.vm.provider "virtualbox" do |vb|
   vb.memory = "2048"
 end
  config.vm.provision "file", source: "files", destination: "/tmp"
  config.vm.provision "shell", path: "install_scripts/jira.sh"
end
