#fixing apache2
exec { 'fixing-apache2':
  command => 'expect -c "spawn sudo systemctl start apache2 && sudo systemctl enable apache2; expect \"password:\" {send \"<password>\r\"}; interact"',
  path    => '/usr/local/bin/:/bin/'
}
