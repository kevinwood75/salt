sensu_check_state_id:
  sensu_check:
    - sensu
    - name: "registration"
    - hostname: {{ salt['grains.get']('nodename') }}
    - sensu_url: "http://sensu-test-api.mgmt1.cloud.td.com:4567"
