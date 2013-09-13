# == Class: openssh::install
#
# Installs the opensshd package.
#
# === Parameters
#
# See top openssh class for details.
#
# === Examples
#
# Do not call directly.
#
class openssh::install {

  $package_name   = $openssh::package_name
  $package_ensure = $openssh::package_ensure

  package { $package_name:
    ensure => $package_ensure,
  }
}
