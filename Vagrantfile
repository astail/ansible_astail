# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.box = "bento/centos-7.5"
#  config.vm.box = "astel_centos7"

  config.vm.provider "virtualbox" do |v|
    v.memory = 1024
    v.cpus = 2
    v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    v.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
  end

  config.ssh.insert_key = false
  config.vm.provision "shell", inline: "systemctl restart network.service"

  config.vm.provision "ansible" do |ansible|
    ansible.verbose = "v"
    ansible.playbook = "site.yml"
    ansible.inventory_path = "inventory/vagrant"
    ansible.limit = "all"
    ansible.raw_arguments = "--vault-password-file=ansible_vault.txt"
  end

  config.vm.define "node01" do |node|
    node.vm.hostname = "node01.example.com"
    node.vm.network "private_network", ip: "10.0.1.111"
  end
end
