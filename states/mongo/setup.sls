create_storage_path:
    file.directory:
       - name: "/var/mongodb/db/woodez"
       - user: mongod
       - group: mongod
       - dir_mode: 755

keyfile_creation:
    file.directory:
       - name: "/var/mongodb/pki"
       - user: mongod
       - group: mongod
       - dir_mode: 755
    file.managed:
       - user: mongod
       - group: mongod
       - name: /var/mongodb/pki/woodez-keyfile
       - source: salt://mongo/files/woodez-keyfile
       - mode: 400

mongo_config_file:
    file.managed: 
       - user: mongod
       - group: mongo
       - name: /etc/mongod.conf
       - source: salt://mongo/files/mongod.conf