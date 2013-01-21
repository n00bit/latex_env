name "drupal"
description "Requirements for a full LAMP-based Drupal install"
run_list(
  "recipe[apache2]",
  "recipe[apache2::mod_actions]",
  "recipe[apache2::mod_ssl]",
  "recipe[apache2::mod_fastcgi]",
  "recipe[apache2::mod_expires]",
  "recipe[apache2::mod_rewrite]",
  "recipe[mysql::server]",
  "recipe[php]",
  "recipe[php::package]",
  "recipe[php::module_mysql]",
  "recipe[php::module_apc]",
  "recipe[php::module_curl]",
  "recipe[php::module_gd]",
  "recipe[php-fpm]",
  "recipe[user]",
  "recipe[webapp]"
)
default_attributes(
  "apache2" => {
    "listen_ports" => ["80", "443"],
  },
  "mysql" => {
    "server_root_password" => "root",
    "server_debian_password" => "root",
    "server_repl_password" => "root",
    "allow_remote_root" => "true",
    "bind_address" => '0.0.0.0'
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
        :web_server => 'apache2',
  }
)