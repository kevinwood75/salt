dev_inspec_linux_script:
  file.managed:
    - name: /var/tmp/run_inspec_linux.sh
    - source: salt://inspec/files/run_inspec_linux.sh

remove_src:
  file.absent:
    - name: /var/tmp/inspec-test/

git_inspec_code:
  cmd.run:
    - name: git clone https://github.com/kevinwood75/inspec-test.git /var/tmp/inspec-test 


run_test:
  cmd.run:
    - name: bash /var/tmp/run_inspec_linux.sh 
