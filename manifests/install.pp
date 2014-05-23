class supervisord::install inherits supervisord {

    package { 'python-setuptools':
        ensure => latest,
    } ->

    exec { 'easy_install_pip':
        command => 'easy_install pip',
        creates => '/usr/bin/pip',
        path    => '/usr/bin',
    } ->

    package { 'supervisor':
        ensure   => $version,
        provider => 'pip',
    }
}
