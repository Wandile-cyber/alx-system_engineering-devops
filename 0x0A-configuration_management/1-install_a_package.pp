# Install puppet-lint
# Install puppet-lint
package { 'python3-pip':
  ensure => installed,
}

exec { 'install-flask': 
  command => "pip3 install 'flask==2.1.0'",
  path    => ['/usr/bin/', '/usr/sbin/', '/bin'],
}

file { '/etc/puppet/modules':
  ensure => directory, 
}

file { '/var/www/html/flask_app.py':
  content => '
from flask import Flask
app = Flask(__name__)

@app.route("/")
def hello():
   return "Hello from Flask!"
',
}

service { 'apache2':
  ensure => running,
  enable => true,
}
