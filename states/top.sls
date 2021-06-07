base:
  ###################
  # CENTOS 7 states
  ###################
  'osmajorrelease:7':
    - match: grain
    - nslookup  
  ###########
  # All Host
  ############
  '*':
    - motd
    - resolv
    - users
    - sudoers
    - sudoers.included
    - ddns.update
