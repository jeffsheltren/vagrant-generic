node default {
  stage { 'pre': before => Stage['main'] }
  class { 'epel': stage => 'pre' }
  class { 'common': }

  class { 'apache': }
  class { 'mysql': }
  class { 'mysql::server': }
  class { 'mysql::java': }
  class { 'mysql::python': }
  class { 'mysql::ruby': }
  class { 'php::cli': }
  class { 'php::mod_php5': }
}
