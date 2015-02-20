#
# == Class: ruby
#
# Install Ruby
#
# == Parameters
#
# [*manage*]
#   Manage Ruby with Puppet. Valid values 'yes' (default) and 'no'.
#
# == Authors
#
# Samuli Seppänen <samuli@openvpn.net>
#
# Samuli Seppänen <samuli.seppanen@gmail.com>
#
# == License
#
# BSD-license. See file LICENSE for details.
#
class ruby
(
    $manage = 'yes'
)
{

if $manage == 'yes' {

    include ruby::install
}
}
