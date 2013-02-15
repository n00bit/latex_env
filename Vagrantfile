# -*- mode: ruby -*-

Vagrant::Config.run do |config|

  config.vm.box = "precise32"
  config.vm.box_url = "http://files.vagrantup.com/precise32.box"

  # config.vm.boot_mode = :gui
  
  config.vm.customize ["modifyvm", :id, "--memory", "512"]


  # host, bridge
  network = "host"
  if ENV["OS"].to_s.include? "Windows" then
    nfsd = false
  else
    nfsd = true
  end

  if network == "host" 
    config.vm.network :hostonly, "33.33.33.10"
    config.vm.share_folder "v-data", "/vagrant", ".", :nfs => nfsd
  end

  if network == "bridge" 
    config.vm.network :bridged
    config.vm.share_folder "v-data", "/vagrant", ".", :nfs => false
  end
  
  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = ["cookbooks"]
    chef.roles_path = "roles"
#    chef.data_bags_path = "data_bags"

#      # puts "It's first run of box, and not be initialized by chef"
      
      chef.log_level = :debug # :info
      # install make & mc, apt
      chef.add_recipe "platform_packages::data_bag"
      chef.add_recipe "apt"

      # lamp/nginx & drupal
      chef.add_role "latex"
  end
end
