ansadmin:
   group.present:
     - gid: 4000
     - system: True


ansadmin:
   user.presnt:
     - fullname: Ansible Admin
     - shell: /bin/bash
     - home: /home/ansadmin
     - password: $1$JwoSj31w$YDIt9E/iJHayx7ApjUq4q/
     - uid: 4000
     - gid: 4000
