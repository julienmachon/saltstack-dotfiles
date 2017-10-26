node-ppa:
  pkgrepo.managed:
    - humanname: Node PPA
    - name: deb https://deb.nodesource.com/node_6.x {{ grains.oscodename }} main
    - file: /etc/apt/sources.list.d/nodesource.list
    - key_url: https://deb.nodesource.com/gpgkey/nodesource.gpg.key

node-install:
  pkg.latest:
    - require:
      - pkgrepo: node-ppa
    - name: nodejs
    - skip_verify: True
    - refresh: True