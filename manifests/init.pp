class rsyslog {
  include 'rsyslog::install'
  include 'rsyslog::configure'
  include 'rsyslog::service'

  anchor { 'rsyslog::start': } -> Class['rsyslog::install']
  Class['rsyslog::service']    -> anchor { 'rsyslog::end': }
}

