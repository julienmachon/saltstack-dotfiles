tap-cask:
  cmd.run:
    - name: brew tap caskroom/cask
    - user: {{ grains.user }}
    - group: {{ grains.user }}

pip-install:
  cmd.run:
    - name: easy_install pip

python3-install:
  cmd.run:
    - name: brew install python3
    - user: {{ grains.user }}
    - group: {{ grains.user }}
