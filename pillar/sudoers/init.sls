# -*- coding: utf-8 -*-
# vim: ft=yaml
---
sudoers:
  # By default the main sudoers file is managed by this formula (False to skip)
  manage_main_config: true
  # By default the included directory is not purged from unwanted files
  purge_includedir: false
  defaults:
    generic:
      - env_reset
      - mail_badpass
      - secure_path="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
  includedir: /etc/sudoers.d
  included_files:
    /etc/sudoers.d/support-woodez:
      users:
        kwood:
          - 'ALL=(ALL) NOPASSWD: ALL'
