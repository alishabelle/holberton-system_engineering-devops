# set up password config on sever with puppet
file_line { 'password off':
    path   => '/etc/ssh/ssh_config',
    line   => 'PasswordAuthentication no',
    replace => true,
}

file_line { 'Holberton indentity key':
    path   => '/etc/ssh/ssh_config',
    line   => 'IdentityFile ~/.ssh/holberton',
    replace => true,
}
