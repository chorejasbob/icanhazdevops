# Encoding: utf-8
name             'icanhazdevops'
maintainer       'YOUR_COMPANY_NAME'
maintainer_email 'none'
license          ''
description      'Installs/Configures icanhazdevops'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.2'

depends 'apache2'
depends 'iptables'
depends 'logrotate'
depends 'apt'
