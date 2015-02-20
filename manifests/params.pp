#
# == Class: ruby::params
#
# Defines some variables based on the operating system
#
class ruby::params {

    case $::osfamily {
        'RedHat': {
            $ruby_package_name = 'ruby'
            $ruby_net_ldap_package_name = 'ruby-net-ldap'
        }
        'Debian': {
            $ruby_package_name = 'ruby'
            $ruby_net_ldap_package_name = 'ruby-net-ldap'
        }
        default: {
            fail("Unsupported operating system ${::osfamily}")
        }
    }
}
