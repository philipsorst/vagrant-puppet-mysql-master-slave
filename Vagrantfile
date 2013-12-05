# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

#  config.vm.box = "precise64"
#  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
#
#  config.vm.provision :puppet do |puppet|
#    puppet.manifests_path = "manifests"
#    puppet.manifest_file  = "site.pp"
#  end
#
  config.vm.define "master" do |master|
    master.vm.hostname = "master"
    master.vm.box = "precise64"
    master.vm.network :private_network, :ip => "192.168.30.100"
    master.vm.provision :puppet do |puppet|
      puppet.manifest_file = "master.pp"
      puppet.module_path = "puppet-modules"
    end
  end

  config.vm.define "slave" do |slave|
    slave.vm.hostname = "slave"
    slave.vm.network :private_network, :ip => "192.168.30.101"
    slave.vm.box = "precise64"
    slave.vm.provision :puppet do |puppet|
      puppet.manifest_file = "slave.pp"
      puppet.module_path = "puppet-modules"
    end
  end

end
