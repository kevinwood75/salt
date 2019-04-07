{% if grains['roles'] == 'mongo' %}
include:
  - conf

mongo-restart:
  service.running:
    - name: 'mongod'
    - full_restart: True

{% endif %}