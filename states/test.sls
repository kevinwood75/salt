{% set mypkg = 'nfs-utils' %}
nfs_package:
       pkg.installed:
           - name: {{ mypkg }}

telnet_package:
       pkg.installed:
           - name: telnet
