# set up your client SSH configuration file so that you can connect to # a server without typing a password using puppet

file { '/home/p3nt3st4r/.ssh/config':
  ensure  => file,
  mode    => '0600',
  content => "\
Host 54.166.77.54
    IdentityFile ~/.ssh/school
    PreferredAuthentications publickey
    PasswordAuthentication no
  ",
  owner   => 'p3nt3st4r',
  group   => 'p3nt3st4r',
}

