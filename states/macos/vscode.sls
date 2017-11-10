vscode-install:
  cmd.run:
    - name: brew cask install visual-studio-code
    - user: {{ grains.user }}
    - group: {{ grains.user }}
