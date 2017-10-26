docker-ppa:
  pkgrepo.managed:
    - humanname: Docker CE PPA
    - name: deb [arch=amd64] https://download.docker.com/linux/ubuntu {{ grains.oscodename }} stable
    - file: /etc/apt/sources.list.d/docker.list
    - key_url: https://download.docker.com/linux/ubuntu/gpg

docker-install:
  pkg.latest:
    - require:
      - pkgrepo: docker-ppa
    - name: docker-ce
    - skip_verify: True
    - refresh: True

docker-compose-install:
  pip.installed:
    - name: docker-compose