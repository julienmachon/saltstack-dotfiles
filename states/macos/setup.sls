tap-cask:
  cmd.run:
    - name: brew tap caskroom/cask
    - user: {{ grains.user }}
    - group: {{ grains.user }}
