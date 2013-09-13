# == Class: openssh::config
#
# Configures the openssh config file.
#
# === Parameters
#
# See top openssh class for details.
#
# === Examples
#
# Do not call directly.
#
class openssh::config {

  $port                    = $openssh::port
  $permit_root_login       = $openssh::permit_root_login
  $log_level               = $openssh::log_level
  $x11_forwarding          = $openssh::x11_forwarding
  $max_auth_tries          = $openssh::max_auth_tries
  $password_authentication = $openssh::password_authentication
  $ciphers                 = $openssh::ciphers
  $client_alive_interval   = $openssh::client_alive_interval
  $client_alive_count_max  = $openssh::client_alive_count_max
  $allow_users             = $openssh::allow_users
  $deny_users              = $openssh::deny_users
  $banner                  = $openssh::banner
  $config_template         = $openssh::config_template

  file { '/etc/ssh/sshd_config':
    ensure  => file,
    mode    => '0600',
    owner   => 'root',
    group   => 'root',
    content => template($config_template),
  }
}
