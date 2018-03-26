# Generate password
# python -c "import crypt; print crypt.crypt('jandrew28', '\$6\$SALTsalt\$')" 

users:
  ansadmin:
    fullname: Ansible User
    uid: 5000
    gid: 5000
    shell: /bin/bash
    home: /home/ansadmin
    password: $6$SALTsalt$Xl6mOU8TVOs1kc2m0gi2MR804/E5VG9G8hKhwDx742y7j4eA4RyBwUbnjOilsFChlFv.F5v27fQ2A4z47pEO0. 
    enforce_password: True
