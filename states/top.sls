base:
  ###########
  # All Host
  ############
  '*':
    - motd
    - resolv
    - users
  ###################
  # CENTOS 7 states
  ###################
  'osmajorrelease:7':
    - match: grain
    - nslookup   
