#
# == Class: ruby::install
#
class ruby::install inherits ruby::params {

    package { 'ruby':
        ensure => present,
        name => $::ruby::params::ruby_package_name,
    }
}
