# set up password config on sever with puppet
file_line { 'password off':
    ensure => present,
    path   => 'etc/ssh/ssh_config',
    line   => 'PasswordAuthentication no',
    match  => '^*.PasswordAuthentication yes$',
}

file_line { 'Holberton indentity key':
    ensure => present,
    path   => 'etc/ssh/ssh_config',
    line   => 'IdentityFile ~/.ssh/holberton',
    match  => '^IdentityFile',
}
