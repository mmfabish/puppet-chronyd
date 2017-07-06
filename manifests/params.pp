class chronyd::params {
  # package parameters
  $package_name = 'chrony'

  # configuration parameters
  $config_file  = '/etc/chrony.conf'
  $servers      = [ '0.centos.pool.ntp.org',
                    '1.centos.pool.ntp.org',
                    '2.centos.pool.ntp.org',
                    '3.centos.pool.ntp.org', ]
  
  # service parameters 
  $service_name = 'chronyd'
  $ensure       = 'running'
  $enable       = true
  $hasrestart   = true
  $hasstatus    = true
}
