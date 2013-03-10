class rsyslog::service {
  Class['rsyslog::configure'] -> Class['rsyslog::service']

  service {
    'rsyslog':
      ensure    => running,
      enable    => true,
      subscribe => Class['rsyslog::configure'];
  }
}

