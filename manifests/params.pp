#
# == Class: ruby::params
#
# Defines some variables based on the operating system
#
# FIXME: Ruby versionomy is not available for CentOS/RedHat/Fedora as a package. 
# Using the Gem provider would be a solution.
#
class ruby::params {

    case $::osfamily {
        'RedHat': {
            $ruby_package_name = 'ruby'
            $ruby_net_ldap_package_name = 'rubygem-net-ldap'
        }
        'Debian': {
            $ruby_package_name = 'ruby'
            $ruby_net_ldap_package_name = 'ruby-net-ldap'
            $ruby_versionomy_package_name = 'ruby-versionomy'
        }
        default: {
            fail("Unsupported operating system ${::osfamily}")
        }
    }

    $ruby_versionomy_gem_name = 'versionomy'
}
