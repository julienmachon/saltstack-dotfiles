include:
  - {{ grains.os_family | lower }}: node

fix-npm-permission:
  cmd.script:
    - name: fixnpmpermissions
    - source: salt:///node/fixnpmpermissions
    - user: {{ grains.user }}
    - group: {{ grains.user }}