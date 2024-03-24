#Puppet to make changes to our configuration file
file_line { 'ssh_conf':
	ensure => 'present',
        path   => '/etc/ssh/ssh_config',
        line   => 'PasswordAuthentication no',
}
file_line { 'ssh_conf':
        ensure => 'present',
        path   => '/etc/ssh/ssh_config',
        line   => 'IdentityFile ~/.ssh/school',
}
