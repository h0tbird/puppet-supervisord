class supervisord::install inherits supervisord {

    package { 'python-setuptools':
        ensure => latest,
    } ->

    package { 'python-pip':
        ensure => latest,
    } ->

    package { 'supervisor':
        provider => 'pip',
    }
}
