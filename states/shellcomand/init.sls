example_long_shell_command:
  cmd.run:
    - name: |
        ./configure
        make
        make install
        printf 'Rebuilt at %s\n' "$(date)" >> build.log
