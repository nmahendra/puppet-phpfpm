class phpfpm::package ($package_name = $phpfpm::params::package_name) {
	package { 'php-fpm':
		name		=>	$package_name,
		ensure	=>	present,
	}
}
