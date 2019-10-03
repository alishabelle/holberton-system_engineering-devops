# automate fixed error
exec { 'fix error in file':
  command => 'sed -i "s/phpp/php/g" /var/www/html/wp-setting.php',
  path    => ['/usr/bin', '/sbin', '/bin', '/usr/sbin']
}
