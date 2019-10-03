# automate fixed error
exec { 'fix error in file':
  command => '/bin/sed -i "s/.phpp/.php/g" /var/www/html/wp-setting.php'
}
