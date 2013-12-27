# Define your sites here
$sites = [
    'drupal'
]

# Magic
define mySites {
  apache::vhost { "${name}.dev":
    server_name   => "${name}.dev",
    serveraliases => [
    ],
    docroot       => "/var/www/${name}.dev",
    port          => '80',
    env_variables => [
    ],
    priority      => '1',
  }

  file { "/var/www/${name}.dev":
    ensure => "directory",
  }
}

mySites { $sites: }

mysql::db { 'drupal6':
  user     => 'root',
  password => 'root',
  host     => 'localhost',
  grant    => ['all'],
}
