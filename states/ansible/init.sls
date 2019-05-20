ansible_group:
  group.present:
    - name: woodez
    - gid: 4000

ansible_user:
  user.present:
   - name: wood_user
   - shell: /bin/bash
   - fullname: Ansible user
   - uid: 4000
   - gid: 4000
   - createhome: True
   - password: $1$dElXImZZ$hYEcczKWCU6/20dJ0qIBm/

ansible_ssh_key:
  cmd.run:
    - name: ssh-keygen -q -N '' -f /home/wood_user/.ssh/id_rsa
    - runas: wood_user
    - unless: test -f /home/wood_user/.ssh/id_rsa

install_pubkey:
  file.managed:
    - name: /home/wood_user/.ssh/authorized_keys
    - source: salt://ansible/files/authorized_keys
    - user: wood_user
    - group: woodez
    - mode: 0700
