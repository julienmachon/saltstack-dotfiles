node-install:
  cmd.run:
    - name: brew install node
    - user: {{ grains.user }}
    - group: {{ grains.user }}
