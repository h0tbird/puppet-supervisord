class supervisord::config inherits supervisord {

    file {

        '/etc/supervisord.conf':
            ensure  => present,
            content => template("${module_name}/supervisord.conf.erb"),
            owner   => 'root',
            group   => 'root',
            mode    => '0644',
            require => Exec['pip_install_supervisor'];

        '/etc/supervisord.d':
            ensure => directory,
            owner  => 'root',
            group  => 'root',
            mode   => '0755';
    }
}
