{% set  list_disks = salt['grains.get']('disks')[1] %}

used_space:
  disk.status:
    - name: /
    - maximum: 4%
