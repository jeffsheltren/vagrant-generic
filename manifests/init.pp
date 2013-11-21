node default {
  stage { 'pre': before => Stage['main'] }
  class { 'epel': stage => 'pre' }

  class { 'apache': }
  resources { "firewall":
    purge => true
  }
  class { 'firewall': }
  class { 'mysql::server': }
  class { 'php::cli': }
  class { 'php::mod_php5': }
  php::ini { '/etc/php.ini':
    display_errors => 'On',
    memory_limit   => '256M',
  }
  php::module { [ 'gd', 'imap', 'mbstring', 'mcrypt', 'mysql', 'pdo', 'pear', 'pecl-apc', 'pecl-memcache', 'soap', 'xml', 'xmlrpc' ]: }

}
