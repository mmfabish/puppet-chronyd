class chronyd (
  $package_name = $chronyd::params::package_name,
  $config_file  = $chronyd::params::config_file,
  $servers      = $chronyd::params::servers,
  $service_name = $chronyd::params::service_name,
  $ensure       = $chronyd::params::ensure,
  $enable       = $chronyd::params::enable,
  $hasrestart   = $chronyd::params::hasrestart,
  $hasstatus    = $chronyd::params::hasstatus,
) inherits chronyd::params {
  class { 'chronyd::install': } ->
  class { 'chronyd::config': } ~>
  class { 'chronyd::service': }
}
