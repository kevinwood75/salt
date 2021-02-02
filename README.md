# Salt stats used in automation

## Roll out state modules:

## salt '*' saltutil.sync_states

Vault working: (use version 1 kv)

[root@saltmaster01 salt]# cat /etc/salt/master.d/vault.conf 
# SDB CONFIG
myvault:
  driver: vault

# VAULT CONFIG FOR TOKEN OR APPROLE AUTH MODE
vault:
  url: http://192.168.2.213:8200
  auth:
    method: approle
    role_id: 98e0d956-8932-b4bc-65e1-1f9041cf7746 
    secret_id: cc2b7531-45d0-29e4-5ee8-50a43c2ade60 
  policies:
    - saltmaster


## Query Secrets
[root@saltmaster01 salt]# salt-run sdb.get 'sdb://myvault/test/user1?desc'
test user
[root@saltmaster01 salt]# salt-run sdb.get 'sdb://myvault/test/user1?password'
p4ssw0rd
