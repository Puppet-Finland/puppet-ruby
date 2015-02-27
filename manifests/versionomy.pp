#
# == Class: ruby::versionomy
#
# Setup Ruby versionomy
#
class ruby::versionomy inherits ruby::params {

    include ruby

    package { 'ruby-versionomy':
        name => $::ruby::params::ruby_versionomy_package_name,
        ensure => present,
        require => Class['ruby::install'],
    }
}
