class rsyslog {
  class {
    'rsyslog::install':
      ensure => present;
    'rsyslog::configure':
      ensure => present;
    'rsyslog::service':
      ensure => present;
  }

  anchor { 'rsyslog::start': } -> Class['rsyslog::install']
  Class['rsyslog::service']    -> anchor { 'rsyslog::end': }
}

