
group 'hvetsa' do
  action :create
end

user 'hvetsa' do
  comment                    'Hari Vetsa (hvetsa@us.ibm.com, 0A9701897)'
  uid                        5001
  gid                        'hvetsa'
  home                       '/home/hvetsa'
  shell                      '/bin/bash'
end

directory '/home/hvetsa' do
  owner 'hvetsa'
  group 'hvetsa'
  mode '0700'
end

directory '/home/hvetsa/.ssh' do
  owner 'hvetsa'
  group 'hvetsa'
  mode '0700'
end

file '/home/hvetsa/.ssh/authorized_keys' do
  content 'ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAgEApfL22wn5+Ht2qEYimDXArRxTSsII0jSPAGOu/toi0QbJrzhBxPHn2od3xPhmwemWewb2G/XWv6EtpScoY6ZqmzPQIJtOjUiU8tWXY+yQ17j9QoA0jmzidd0Dwli+nxVBtDbSTBlbOH9A+yYOaWvNyFi/765pcRFZLy6mBOTYO+wudxKpgtzHp898rwTdXLhM/5VxLqYm6bLbF94H0EjeIqzKBH1ITnMeNnEHjDgSqwm4LUSCXXlL5Z/qVh7HFdEWq6nlzdQ8vKJzhYYjKjhhlVxeHV2WF5gT3C38kO6f2USFN4hMkmv05sh/cmhRtnCRnJ0tp3ulkGxGMmiDUEvLRRcrH4r8G4rVwv2T0LmLFcatNImgY7caZF/2nIJG9AXsrkOyXmauhIoTTwAtCoksTI/9S0mymDqLz752W3Z9vFwX2H4JBfZMm7BIyQddZaV5mAbxC9NbkHCIwsL+9LqcfP90EjBGRlJNdVivWs39ULUyAth4kuOTbjDcxJyLZOBFAqlTrwGBaMevE2lkrULPjEgUoaSNfIKIaMo50Jr759ldC53mvSNK5GzR6RPk6Ze83c/2uXFdrXm6Q0Oo+F9+1FEt/vlPMYAeIh961B9JtgwE861b9GuqIR8NVGhHqVasRWpaUcpnal2y+GUSdfux7GESoGwMRDYVqRIB/4JJunk= Hari Vetsa(hvetsa)'
  mode '0700'
  owner 'hvetsa'
  group 'hvetsa'
end

file '/etc/sudoers.d/hvetsa_conf' do
  content 'hvetsa ALL=(ALL:ALL) NOPASSWD: ALL'
  mode '0600'
  owner 'root'
  group 'root'
end

