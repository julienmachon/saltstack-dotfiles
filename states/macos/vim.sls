neovim-install:
  cmd.run:
    - name: brew install neovim
    - user: {{ grains.user }}
    - group: {{ grains.user }}
