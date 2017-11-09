docker-install:
  cmd.run:
    - name: brew cask install docker

docker-compose-install:
  pip.installed:
    - name: docker-compose