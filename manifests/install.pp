class supervisord::install inherits supervisord {

    package { 'python-setuptools':
        ensure => $version,
    } ->

    exec { 'easy_install_pip':
        command => 'easy_install pip',
        creates => '/usr/bin/pip',
        path    => '/usr/bin',
    } ->

    exec { 'pip_install_supervisor':
        command => 'pip install supervisor',
        creates => '/usr/bin/supervisord',
        path    => '/usr/bin',
    }
}
