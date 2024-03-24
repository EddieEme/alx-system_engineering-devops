# Ensure SSH configuration directory exists
file { '/etc/ssh':
  ensure => directory,
}

# Ensure SSH client configuration file exists
file { '/etc/ssh/ssh_config':
  ensure  => present,
}

# Add lines to SSH client configuration file
file_line { 'use_private_key':
  path    => '/etc/ssh/ssh_config',
  line    => 'IdentityFile ~/.ssh/school',
}

file_line { 'refuse_password_authentication':
  path    => '/etc/ssh/ssh_config',
  line    => 'PasswordAuthentication no',
}
