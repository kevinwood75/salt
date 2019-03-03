# app_cron:
#  cron.present:
#    - name: '/usr/bin/find /td/logs/WebLogs -name \*[0-9].log -mtime +1 -type f -exec gzip {} \; > /var/tmp/weblogs-compress.log 2>&1'
#    - hour: 1
#    - minute: 0
#    - user: root
#    - identifier: 'compress websphere app logs'

cron_rm:
   cron.absent:
     - name: '/usr/bin/find /td/logs/WebLogs -name \*[0-9].log -mtime +1 -type f -exec gzip {} \; > /var/tmp/weblogs-compress.log 2>&1'
     - hour: 1
     - minute: 0
     - user: root
     - identifier: 'compress websphere app logs'