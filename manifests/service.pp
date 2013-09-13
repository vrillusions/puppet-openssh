# == Class: openssh::service
#
# Manages the openssh service.
#
# === Parameters
#
# See top openssh class for details.
#
# === Examples
#
# Do not call directly.
#
class openssh::service {

  $service_name    = $openssh::service_name
  $service_ensure  = $openssh::service_ensure
  $service_enable  = $openssh::service_enable

  service { $service_name:
    ensure => $service_ensure,
    enable => $service_enable,
  }
}
