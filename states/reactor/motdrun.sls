{% set postdata = data.get('post', {}) %}

{% if postdata.secretkey == "jandrew28" %}
deploy_my_app:
  local.state.apply:
    - tgt: '{{ postdata.tgt }}'
    - arg:
      - motd
{% endif %}
