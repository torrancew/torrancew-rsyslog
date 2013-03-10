class rsyslog::configure( $udp_mode = true, $udp_port = 514, $tcp_mode = false, $tcp_port = 514 ) {
  Class['rsyslog::install'] -> Class['rsyslog::configure']

  datacat {
    '/etc/rsyslog.conf':
      template => "${module_name}/rsyslog.conf.erb";
  }

  rsyslog::module {
    'local_logging':
      name => 'imuxsock';

    'kernel_logging':
      name => 'imklog';
  }

  file {
    '/etc/rsyslog.d':
      ensure => directory,
      owner  => 'root',
      group  => 'root',
      mode   => 0755;
  }
}

