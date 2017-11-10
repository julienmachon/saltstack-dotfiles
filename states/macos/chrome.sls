chrome-install:
  cmd.run:
    - name: brew cask install google-chrome
    - user: {{ grains.user }}
    - group: {{ grains.user }}
