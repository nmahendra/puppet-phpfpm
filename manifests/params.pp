class phpfpm::params {
	if($::fqdn){
		$servername = $::fqdn
	}else{
		$servername = $::hostname
	}

	case $::osfamily {
		'Redhat': {
			$package_name = "php-fpm"
			$service_name = "php-fpm"
			$conf_dir	= "/etc/php-fpm.d"		
		}
	}
}
