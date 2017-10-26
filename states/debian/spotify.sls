spotify-ppa:
  pkgrepo.managed:
    - humanname: Spotify PPA
    - name: deb http://repository.spotify.com stable non-free
    - file: /etc/apt/sources.list.d/spotify.list
    - keyserver: hkp://keyserver.ubuntu.com:80
    - keyid: BBEBDCB318AD50EC6865090613B00F1FD2C19886

spotify-install:
  pkg.latest:
    - require:
      - pkgrepo: spotify-ppa
    - name: spotify-client
    - skip_verify: True
    - refresh: True