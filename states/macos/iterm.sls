iterm-install:
  cmd.run:
    - name: brew cask install iterm2
    - user: {{ grains.user }}
    - group: {{ grains.user }}
