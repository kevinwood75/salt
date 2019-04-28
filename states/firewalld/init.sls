disable_firewalld:
  service.dead:
    - name: firewalld
    - enable: False
    - init_delay: 10
