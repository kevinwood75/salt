epel_install:
  pkg.installed:
    - name: epel-release 


python2_pip:
  pkg.installed:
    - name: python2-pip
    - refresh: True
