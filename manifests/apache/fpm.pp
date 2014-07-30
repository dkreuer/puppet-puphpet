# Sets up Apache to use fastcgi
# Useful for things like php-fpm or hhvm

class puphpet::apache::fpm {

  include ::puphpet::params
  include ::apache::params
  include ::puphpet::debian::non_free

  if ! defined(Class['apache::mod::mime']) {
    class { 'apache::mod::mime': }
  }
  if ! defined(Class['apache::mod::fcgid']) {
    class { 'apache::mod::fcgid': }
  }
  if ! defined(Class['apache::mod::alias']) {
    class { 'apache::mod::alias': }
  }
  if ! defined(Class['apache::mod::proxy']) {
    class { 'apache::mod::proxy': }
  }
  if ! defined(Class['apache::mod::proxy_http']) {
    class { 'apache::mod::proxy_http': }
  }
  if ! defined(Apache::Mod['proxy_fcgi']) {
    apache::mod{ 'proxy_fcgi': }
  }
  if ! defined(Apache::Mod['actions']) {
    apache::mod{ 'actions': }
  }

}
