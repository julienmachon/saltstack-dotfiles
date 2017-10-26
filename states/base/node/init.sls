include:
  - {{ grains.os_family | lower }}: node

fix-npm-permission-tmp:
  file.managed:
    - name: {{ grains.homedir }}/.tmp/fixnpm.sh
    - source: salt:///node/fixnpm.sh
    - template: jinja
    - makedirs: True
    - user: {{ grains.user }}
    - group: {{ grains.user }}

fix-npm-permission:
  cmd.run:
    - name: {{ grains.homedir }}/.tmp/fixnpm.sh
    - user: {{ grains.user }}
    - group: {{ grains.user }}