dev_inspec_linux_script:
  file.managed:
    - name: /var/tmp/run_inspec_linux.sh
    - source: salt://inspec/files/run_inspec_linux.sh



# run_test:
#  cmd.run:
#    - name: export HOME="/root" && cd /var/tmp && inspec exec https://github.com/kevinwood75/inspec-test.git --reporter=json
