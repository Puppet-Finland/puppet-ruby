#
# == Class: ruby::net_ldap
#
# Setup ruby-net-ldap
#
class ruby::net_ldap inherits ruby::params {

    include ::ruby

    package { 'ruby-net_ldap':
        ensure  => present,
        name    => $::ruby::params::ruby_net_ldap_package_name,
        require => Class['ruby::install'],
    }
}
