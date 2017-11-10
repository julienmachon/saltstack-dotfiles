slack-install:
  cmd.run:
    - name: brew cask install slack
    - user: {{ grains.user }}
    - group: {{ grains.user }}
