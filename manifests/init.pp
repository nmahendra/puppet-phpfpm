class phpfpm (
	$package_name	= $phpfpm::params::package_name,
	$service_name	=	$phpfpm::params::service_name,
	$vhost_dir		=	$phpfpm::params::conf_dir,
) inherits phpfpm::params {
	include phpfpm::package
	include phpfpm::service

	phpfpm::vhost { "www":
		port				=>	undef,
		db_host			=>	undef,
		db_user			=>	undef,
		db_password	=>	undef,
		db_name			=>	undef,
		servername	=>	undef,
		vhost_dir		=>	$vhost_dir,	
	}
}
