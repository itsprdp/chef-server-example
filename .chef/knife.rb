log_level                :info
log_location             STDOUT
node_name                'admin'
client_key               '/home/itsprdp/chef-server-example/.chef/admin.pem'
validation_client_name   'chef-validator'
validation_key           '/etc/chef-server/chef-validator.pem'
chef_server_url          'https://chef.itsprdp.com'
syntax_check_cache_path  '/home/itsprdp/chef-server-example/.chef/syntax_check_cache'
cookbook_path            [ './cookbooks', './site-cookbooks' ]

