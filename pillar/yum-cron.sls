{% set malcode = salt['grains.get']('malcode', 'na') -%}

{% if malcode == 'vault' %}
{% set reboot_hour = salt['grains.get']('cname').split(".")[0].split("-")[1] -%}
yum-cron:
  reboot: {{ reboot_hour | replace('e','') | replace('c','') | int  + 1 }}
{% endif %}
