# Install puppet-lint
package { 'puppet-lint':
  ensure   => '2.5.0',
  provider => 'gem'
}

exec { 'install-flask': 
  command => "pip3 install 'flask==2.1.0'",
  path    => ['/usr/bin/', '/usr/sbin/', '/bin'],
}
