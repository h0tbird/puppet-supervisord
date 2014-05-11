class supervisord (

    $version = 'latest',

) {

    contain "${module_name}::install"
    contain "${module_name}::config"
}
