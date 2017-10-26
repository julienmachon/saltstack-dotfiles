spotify-ppa:
  pkgrepo.managed:
    - humanname: Spotify PPA
    - name: deb http://repository.spotify.com stable non-free
    - file: /etc/apt/sources.list.d/spotify.list
    - keyserver: keyserver.ubuntu.com:80
    - keyid: BBEBDCB318AD50EC6865090613B00F1FD2C19886 0DF731E45CE24F27EEEB1450EFDC8610341D9410

spotify-install:
  pkg.latest:
    - require:
      - pkgrepo: spotify-ppa
    - name: spotify-client
    - skip_verify: True
    - refresh: True