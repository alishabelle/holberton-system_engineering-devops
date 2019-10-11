# increases the limit of requests allowed
exec { 'limits_change':
    command => 'sed -i "s/15/30000/g" /etc/default/nginx; sudo service nginx restart',
    path    => ['/usr/bin', '/sbin', '/bin', '/usr/sbin']
}
