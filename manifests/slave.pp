exec { "apt-update":
    command => "/usr/bin/apt-get update"
}

Exec["apt-update"] -> Package <| |>

group { "puppet":
  ensure => "present",
}

class { '::mysql::server':
  override_options => { 
    'mysqld' => {
      'server-id' => '2'
    }
  }
}
