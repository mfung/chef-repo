# See http://docs.opscode.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "mfung"
client_key               "#{current_dir}/mfung.pem"
validation_client_name   "mfung-validator"
validation_key           "#{current_dir}/mfung-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/mfung"
cache_type               'BasicFile'
cache_options( :path =>  "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
cookbook_copyright       "Meng Fung Corp"
cookbook_license         "apachev2"
cookbook_email           "meng.fung@gmail.com"