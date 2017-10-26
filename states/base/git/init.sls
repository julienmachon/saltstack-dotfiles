git:
  pkg.installed

git-config:
  file.managed:
    - name: {{ grains.homedir }}/.gitconfig
    - source: salt://git/gitconfig
    - user: {{ grains.user }}
    - group: {{ grains.user }}
    - makedirs: True
  
git-ignore:
  file.managed:
    - name: {{ grains.homedir }}/.gitignore
    - source: salt:///git/gitignore
    - user: {{ grains.user }}
    - group: {{ grains.user }}
    - force: True
