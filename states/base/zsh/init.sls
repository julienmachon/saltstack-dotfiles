zsh:
  pkg.installed

oh-my-zsh:
  cmd.script:
    - name: https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh

zsh-config:
  file.managed:
    - name: {{ grains.homedir }}/.zshrc
    - source: salt:///zsh/zshrc
    - template: jinja
    - makedirs: True
    - user: {{ grains.user }}
    - group: {{ grains.user }}