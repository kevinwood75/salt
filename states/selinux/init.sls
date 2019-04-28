perm_disable_selinux:
  file.managed:
    - name: /etc/sysconfig/selinux
    - source: salt://selinux/files/selinux

install_dep_pkg:
  pkg.installed:
    - name: policycoreutils-python

disable_temp_selinux:
  selinux.mode:
    - name: permissive

