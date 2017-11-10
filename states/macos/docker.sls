docker-install:
  cmd.run:
    - name: brew cask install docker
    - user: {{ grains.user }}
    - group: {{ grains.user }}

docker-compose-install:
  pip.installed:
    - name: docker-compose
