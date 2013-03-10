define rsyslog::module( $name = $title ) {
  datacat_fragment {
    "rsyslog::module::${name}":
      target => '/etc/rsyslog.conf',
      data   => { module => [ $name ] };
  }
}

