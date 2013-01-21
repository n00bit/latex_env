name "lnmp"
description "Requirements for a full nginx-based development environment"
run_list(
  "recipe[build-essential]",
  "recipe[mysql::server]",
  "recipe[php]",
  "recipe[php::module_mysql]",
  "recipe[php::module_apc]",
  "recipe[php::module_curl]",
  "recipe[php::module_gd]",
  "recipe[nginx]",
  "recipe[git]",
  "recipe[webapp]"
)
default_attributes(
  "mysql" => {
    "server_root_password" => "root",
    "server_debian_password" => "root",
    "server_repl_password" => "root",
    "allow_remote_root" => "true",
    "bind_address" => '0.0.0.0',
  },
  :webapp => {
        :vhosts => [
            :id => 'dev_dev',
            :host_name => "dev.dev",
            :host_aliases => ["dev.dev"],
            :www_redirect => true,
            :document_root => 'dev_dev',
            :ssl_www_redirect => false,
        ],
        :apps => [
            :id => 'dev_dev',
            :name => 'dev',
            :vhost => 'dev_dev',
            :profile => 'php',
            :group => 'www-data',
        ],
        :web_server => 'nginx',
  }
)