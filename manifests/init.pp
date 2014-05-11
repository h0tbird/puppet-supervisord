class supervisord (

    $supervisord_version = 'latest',

){

    contain "${module_name}::install"
    contain "${module_name}::config"
    contain "${module_name}::service"
}
