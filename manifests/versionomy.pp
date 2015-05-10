#
# == Class: ruby::versionomy
#
# Setup Ruby versionomy
#
# == Parameters
#
# [*provider*]
#   Provider to use for installing Ruby Versionomy. Valid values are undef 
#   (default) and 'gem'. Typically you'd want to use 'gem', because Versionomy 
#   is rarely included in distribution repositories.
#
class ruby::versionomy
(
    $provider = undef

) inherits ruby::params {

    include ruby

    $package_name = $provider ? {
        undef => $::ruby::params::ruby_versionomy_package_name,
        'gem' => $::ruby::params::ruby_versionomy_gem_name,
    }

    package { 'ruby-versionomy':
        ensure => present,
        provider => $provider,
        name => $package_name,
        require => Class['ruby::install'],
    }
}
