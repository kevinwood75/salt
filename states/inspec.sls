run_test:
  cmd.run:
    - name: export HOME="/root" && cd /var/tmp && inspec exec /var/tmp/inspec-test --reporter=json
