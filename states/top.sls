base:
  ###########
  # All Host
  ############
  '*':
    - motd
    - resolv
    - users
    - inspec
    - selinux
  ###################
  # CENTOS 7 states
  ###################
  'osmajorrelease:7':
    - match: grain
    - nslookup 
    - firewalld 
