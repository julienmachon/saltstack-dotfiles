spotify-install:
  cmd.run:
    - name: brew cask install spotify
    - user: {{ grains.user }}
    - group: {{ grains.user }}
