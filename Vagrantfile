# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.require_version ">= 1.7.0"

Vagrant.configure(2) do |config|

  config.vm.box = "bento/centos-7.2"

  config.vm.provider "virtualbox" do |v|
    v.memory = 1024
    v.cpus = 2
    v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    v.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
  end

  config.ssh.insert_key = false

  config.vm.define "node01" do |node|
    node.vm.hostname = "node01.example.com"
    node.vm.network "private_network", ip: "10.0.1.111"
    node.vm.provision :shell, :path => "vagrant/bootstrap.sh"
  end

end
