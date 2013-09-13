# == Class: openssh::params
#
# Determines proper values for parameters based on operating system.
#
# === Examples
#
# Do not call directly.
#
class openssh::params {
  case $::osfamily {
    redhat: {
      $service_name = 'sshd'
      $config_template = 'ssh/redhat.sshd_config.erb'
    }
    debian: {
      $service_name = 'ssh'
      $config_template = 'ssh/debian.sshd_config.erb'
    }
    default: {
      fail("Module ${module_name} is not supported on ${::osfamily}")
    }
  }

}
