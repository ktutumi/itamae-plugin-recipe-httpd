require "itamae/plugin/recipe/httpd/version"

default_vars = {
    :server_root => '/etc/httpd',
    :timeout => 60,
    :keep_alive => false,
    :max_keep_alive_requests => 100,
    :keep_alive_timeout => 15,
    :prefork => {
        :start_servers => 8,
        :min_spare_servers => 5,
        :max_spare_servers => 20,
        :server_limit => 256,
        :max_clients => 256,
        :max_requests_per_child => 4000,
    },
    :listen => 80,
}
node.reverse_merge!(:httpd => default_vars)

include_recipe 'httpd::default'

