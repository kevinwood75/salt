# Generate password
# python -c "import crypt; print crypt.crypt('jandrew28', '\$6\$SALTsalt\$')" 

users:
  kwood:
    fullname: Kevin Wood
    uid: 5000
    gid: 5000
    shell: /bin/bash
    home: /home/kwood
    password: {{ salt['sdb.get']('sdb://myvault/salt/user1?password') }} 
    enforce_password: True
