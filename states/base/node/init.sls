include:
  - {{ grains.os_family | lower }}: node

fix-npm-permission:
  cmd.run:
    - name: salt:///node/fixnpm.sh
    - user: {{ grains.user }}
    - group: {{ grains.user }}