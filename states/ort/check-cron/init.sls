check-cron:
  service.running:
  {% if grains['os_family'] == 'RedHat' %}
    - name: crond
  {% else %}
    - name: cron
  {% endif %} 
    - enable: True
