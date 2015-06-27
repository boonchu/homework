# == Class: class_me
#
# Full description of class class_me here.
#
# === Parameters
#
# Classme 
#
class class_me (

  $version    = 'present',
  $ntpservers = ['1.pool.ntp.org','2.pool.ntp.org'],
  $enable     = true,
  $start      = true,

) {

  Class{ 'Ntp::Install' } -> Class{ 'Ntp::Config' }  ~> Class{ 'Ntp::Service' } -> Class['Ntp'] 

}
