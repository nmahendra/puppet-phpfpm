class phpfpm::service ($service_name = $phpfpm::params::service_name)
{
	service { 'php-fpm':
		name		=>	$service_name,
		enable	=>	true,
		ensure	=>	running,
		require	=>	Package['php-fpm'],
	}
}
