class chronyd::service (
  $service_name = $chronyd::service_name,
  $ensure       = $chronyd::ensure,
  $enable       = $chronyd::enable,
  $hasrestart   = $chronyd::hasrestart,
  $hasstatus    = $chronyd::hasstatus,
) {
  service { 'chronyd':
    name       => $service_name,
    ensure     => $ensure,
    enable     => $enable,
    hasrestart => $hasrestart,
    hasstatus  => $hasstatus,
  }
}
