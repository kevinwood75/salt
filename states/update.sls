{% if grains['os_family'] == 'RedHat' %}

system.reboot:
  module.run:
    - require:
      - cmd: update-package

update-package:
    cmd.run:
      - name: yum update -y

{% endif %} 
