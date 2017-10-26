# I would normaly use the line below, but right now, no PPA for Ubuntu artful. Using xenial instead.
# - name: deb [arch=amd64] https://download.docker.com/linux/ubuntu {{ grains.oscodename }} stable

docker-ppa:
  pkgrepo.managed:
    - humanname: Docker CE PPA
    - name: deb [arch=amd64] https://download.docker.com/linux/ubuntu xenial stable
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