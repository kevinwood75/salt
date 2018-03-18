{% if grains['os_family'] == 'RedHat' %}
     {{ grains['mnt_point'] }}:
          mount.mounted:
              - device: {{ grains['nfs_vol'] }}
              - fstype: nfs
              - persist: True
              - mkmnt: True
{% endif %}
