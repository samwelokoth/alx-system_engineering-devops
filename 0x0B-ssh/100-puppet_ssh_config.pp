# Puppet manifest for configuring SSH client

file { '/home/p3nt3st4r/.ssh/config':
  ensure  => file,
  mode    => '0600',
  content => "\
# SSH client configuration for connecting to a server without password
Host 54.166.77.54
    IdentityFile ~/.ssh/school
    PreferredAuthentications publickey
    PasswordAuthentication no
",
  owner   => 'p3nt3st4r',
  group   => 'p3nt3st4r',
}


