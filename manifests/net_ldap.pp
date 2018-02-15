#
# == Class: ruby::net_ldap
#
# Setup ruby-net-ldap
#
class ruby::net_ldap
(
    Boolean $manage_epel = true

) inherits ruby::params
{

    include ::ruby

    if $::osfamily == 'RedHat' {
        $require = Class['::epel']
        if $manage_epel {
            include ::epel
        }
    } else {
        $require = undef
    }

    package { 'ruby-net_ldap':
        ensure  => present,
        name    => $::ruby::params::ruby_net_ldap_package_name,
        require => [ Class['ruby::install'], $require ]
    }
}
