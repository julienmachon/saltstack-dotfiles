include:
  - {{ grains.os_family | lower }}: node

fix-npm-permission:
  cmd.script:
    - name: salt:///node/fixnpmpermissions
    - user: {{ grains.user }}
    - group: {{ grains.user }}

update-env-path:
  environ.setenv:
    - name: path
    - value: {{ grains.homedir }}/.npm-global/bin:{{ grains.path}}
