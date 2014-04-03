Vagrant.configure("2") do |config|
  config.vm.box = "opscode-centos-6.5"
  config.vm.box_url = "http://opscode-vm-bento.s3.amazonaws.com/vagrant/vmware/opscode_centos-6.5_chef-provisionerless.box"
  config.omnibus.chef_version = :latest

  config.vm.provision :chef_client do |chef|
    chef.provisioning_path = "/etc/chef"
    chef.chef_server_url = "https://api.opscode.com/organizations/mfung"
    chef.validation_key_path = "/.chef/mfung-validator.pem"
    chef.validation_client_name = "mfung-validator"
    chef.node_name = "server"
  end
end