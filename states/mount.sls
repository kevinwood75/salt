{% if grains['os_family'] == 'RedHat' %}

     nfs_package:
       pkg.install:
         - name: nfs-utils

#     rpcbind_service:
#       cmd:
#         - run
#         - name: /sbin/service rpcbind restart
    
#     nfslock_service:
#       cmd:
#         - run 
#         - name: /sbin/service nfslock restart 

     {{ salt['pillar.get']('mnt_point') }}:
          mount.mounted:
              - device: {{ salt['pillar.get']('nfs_volume') }}
              - fstype: nfs
              - persist: True
              - opts: nfsvers=3,tcp,defaults  
              - mkmnt: True
              - require:
                - pkg: nfs_package
                - cmd: rpcbind_service
                - cmd: nfslock_service
{% endif %}
