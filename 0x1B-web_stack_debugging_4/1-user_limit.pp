# make requests higher
exec {'limit_increase':
     command => 'sed -i "s/5/6000/g; s/4/5000/g" /etc/security/limits.conf',
     path    => ['/usr/bin', '/sbin', '/bin', '/usr/sbin']
}