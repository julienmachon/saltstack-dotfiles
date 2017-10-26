include:
  - ./users
  - {{ grains.os_family | lower }}: setup

base16-shell:
  git.latest:
    - name: https://github.com/chriskempson/base16-shell.git
    - target: {{ grains.homedir }}/.config/base16-shell

gnome-terminal-profile-tmp:
  file.managed:
    - name: {{ grains.homedir }}/.tmp/julien.dconf
    - source: salt:///setupu/julien.dconf
    - template: jinja
    - makedirs: True
    - user: {{ grains.user }}
    - group: {{ grains.user }}

gnome-terminal-profile:
  cmd.run:
    - name: dconf load /org/gnome/terminal/legacy/profiles:/ < {{ grains.homedir }}/.tmp/julien.dconf
    - user: {{ grains.user }}
    - group: {{ grains.user }}
    
install-base-packages:
  pkg.installed:
    - pkgs:
      - gnome-tweak-tool
