class supervisord::install inherits supervisord {

    package { 'python-pip':
        ensure => latest,
    } ->

    package { 'supervisor':
        ensure   => $version,
        provider => 'pip',
    }
}
