class chronyd::install(
  $package_name = $chronyd::package_name,
) {
  package { 'chronyd':
    name   => $package_name,
    ensure => present,
  }
}
