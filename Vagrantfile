# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"

  # config.vm.network :forwarded_port, host: 8080, guest: 80
  config.vm.network "private_network", ip: "192.168.50.29"
  config.vm.hostname="website.test"


  #Synced folder for Apache
  config.vm.synced_folder "src", "/var/www/html",
    owner: "www-data", group: "www-data"
  config.vm.provision :shell, path: "bootstrap.sh"
end
