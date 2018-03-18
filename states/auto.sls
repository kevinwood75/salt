{% set agent_name = salt['grains.get']('host')|replace('-','')|truncate(16)|upper %}

echo {{ agent_name }} > /tmp/test
    cmd.run
