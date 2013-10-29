# -*- mode: ruby -*- 
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing! 
VAGRANTFILE_API_VERSION = "2" 

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.berkshelf.enabled = true
  config.omnibus.chef_version = :latest

  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  config.vm.provider :virtualbox do |provider|
    provider.customize ["modifyvm", :id, "--memory", "512"]
  end


  config.vm.define :chef_server_node do |chef_config|
    chef_config.vm.network :private_network, ip: "10.33.33.33"
    chef_config.vm.network :forwarded_port, guest: 80, host: 8000
    chef_config.vm.network :forwarded_port, guest: 443, host: 8443
    chef_config.vm.hostname = 'chef.itsprdp.com'

    chef_config.vm.provision :chef_solo do |chef|
       chef.cookbooks_path = ["site-cookbooks", "cookbooks"]
       chef.roles_path = "roles"
       chef.data_bags_path = "data_bags"
       chef.log_level = :debug

       chef.add_role "chef"
    end
  end

  config.vm.define :chef_client_node do |chef_client_config|
    chef_client_config.vm.network :private_network, ip: "10.33.33.50"
    chef_client_config.vm.hostname = 'node.itsprdp.com'
  end

end 
