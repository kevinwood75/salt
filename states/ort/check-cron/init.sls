check-cron:
  service.running:
    - name: crond
    - enable: True
