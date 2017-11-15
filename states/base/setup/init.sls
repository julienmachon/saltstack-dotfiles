include:
  - ./users
  - {{ grains.os_family | lower }}: setup

base16-shell:
  git.latest:
    - name: https://github.com/chriskempson/base16-shell.git
    - target: {{ grains.homedir }}/.config/base16-shell

ternjs-profile:
  file.managed:
    - name: {{ grains.homedir }}/.tern-config
    - source: salt:///setup/tern-config
    - template: jinja
    - makedirs: True
    - user: {{ grains.user }}
    - group: {{ grains.user }}

{% if grains.os != 'MacOS' %}
gnome-terminal-profile-tmp:
  file.managed:
    - name: {{ grains.homedir }}/.tmp/julien.dconf
    - source: salt:///setup/julien.dconf
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
{% else %}
iterm-profile:
  file.managed:
    - name: {{ grains.homedir }}/Library/Preferences/com.googlecode.iterm2.plist
    - source: salt:///setup/com.googlecode.iterm2.plist
    - template: jinja
    - makedirs: True
    - user: {{ grains.user }}
    - group: {{ grains.user }}
{% endif %}
