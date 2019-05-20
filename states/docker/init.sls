install_docker_repo:
  file.managed:
    - name: /etc/yum.repos.d/docker-ce.repo
    - source: salt://docker/files/docker-ce.repo


docker_install:
  pkg.installed:
    - pkgs: 
      - yum-utils
      - device-mapper-persistent-data
      - lvm2
      - docker-ce 
      - docker-ce-cli 
      - containerd.io

start_docker:
  service.running:
    - name: docker
    - enable: True

create_jenkins_user:
  user.present:
    - name: jenkins
    - shell: /bin/bash
    - uid: 4000
    - gid: 4000
    - groups:
      - docker
