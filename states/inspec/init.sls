dev_inspec_linux_script:
  file.managed:
    - name: /var/tmp/run_inspec_linux.sh
    - source: salt://inspec/files/run_inspec_linux.sh



run_test:
  cmd.run:
    - name: /var/tmp/run_inspec_linux.sh 
