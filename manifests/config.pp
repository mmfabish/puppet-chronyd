class chronyd::config (
  $config_file = $chronyd::config_file,
  $servers     = $chronyd::servers,
) {
  file { 'config':
    path    => $config_file,
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template("$module_name/chrony.conf.erb"),
  }
}
