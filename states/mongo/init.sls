# {% if grains['roles'] == 'mongo' %}

include:
  - mongo.setup

mongo_start:
  service.running:
     - name: 'mongod'
     - reload: True
# {% endif %}
