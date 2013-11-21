node default {
  stage { 'pre': before => Stage['main'] }
  class { 'epel': stage => 'pre' }

  class { 'apache': }
  class { 'apache::mod::php': }
  class { 'mysql::server': }
}
