log_level                :info
log_location             STDOUT
node_name                'ringohub'
client_key               '.chef/ringohub.pem'
validation_client_name   'chef-validator'
validation_key           '/etc/chef-server/chef-validator.pem'
chef_server_url          'https://helvetica.local:443'
syntax_check_cache_path  '.chef/syntax_check_cache'
file_cache_path '/tmp/chef-solo'
cookbook_path ['cookbooks', 'site-cookbooks']
role_path 'roles'
data_bag_path 'data_bags'
