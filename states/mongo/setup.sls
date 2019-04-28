create_storage_path:
    file.directory:
       - name: "/var/mongodb/db/woodez"
       - makedirs: True
       - user: mongod
       - group: mongod
       - dir_mode: 755

keyfile_directory_creation:
    file.directory:
       - name: "/var/mongodb/pki"
       - makedirs: True
       - user: mongod
       - group: mongod
       - dir_mode: 755

keyfile_creation:
    file.managed:
       - user: mongod
       - group: mongod
       - name: /var/mongodb/pki/woodez-keyfile
       - source: salt://mongo/files/woodez-keyfile
       - mode: 400

mongo_config_file:
    file.managed: 
       - user: mongod
       - group: mongod
       - name: /etc/mongod.conf
       - source: salt://mongo/files/mongod.conf
