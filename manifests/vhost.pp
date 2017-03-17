define phpfpm::vhost ($port, $servername, $vhost_name = '*', $vhost_dir , $db_host, $db_user, $db_password, $db_name, $gigya_api_key = '*', $gigya_secret_key = '*'){
		File {
			mode		=>	'0677',
		}

		$default_config = "config_${servername}_${port}"

		file { $default_config:
			path		=>	"${vhost_dir}/${servername}.conf",
			content	=>	template('phpfpm/vhost.conf.erb'),
			require	=>	Package['php-fpm'],
			notify	=>	Service['php-fpm'],
		}
}
