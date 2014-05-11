class supervisord::install inherits supervisord {

    package { 'supervisor': ensure => $supervisord_version }
}
