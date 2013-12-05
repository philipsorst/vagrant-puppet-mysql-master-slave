## RESOURCES
# http://stackoverflow.com/questions/2366018/how-to-re-sync-the-mysql-db-if-master-and-slave-have-different-database-incase-o


VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.define "master" do |master|
    master.vm.box = "precise64"
    master.vm.box_url = "http://files.vagrantup.com/precise64.box"
    master.vm.hostname = "master"
    master.vm.network :private_network, :ip => "192.168.30.100"
    master.vm.provision :puppet do |puppet|
      puppet.manifest_file = "master.pp"
      puppet.module_path = "puppet-modules"
    end
  end

  config.vm.define "slave" do |slave|
    slave.vm.box = "precise64"
    slave.vm.box_url = "http://files.vagrantup.com/precise64.box"
    slave.vm.hostname = "slave"
    slave.vm.network :private_network, :ip => "192.168.30.101"
    slave.vm.provision :puppet do |puppet|
      puppet.manifest_file = "slave.pp"
      puppet.module_path = "puppet-modules"
    end
  end

end
