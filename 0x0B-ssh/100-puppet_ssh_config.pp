file { '/home/p3nt3st4r/.ssh/config':
  ensure  => file,
  mode    => '0600',
  content => "\
Host your_server_ip
    IdentityFile ~/.ssh/school
    PreferredAuthentications publickey
    PasswordAuthentication no
  ",
  owner   => 'p3nt3st4r',
  group   => 'p3nt3st4r',
}

