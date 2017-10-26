vscode-ppa:
  pkgrepo.managed:
    - humanname: Visual Studio Code PPA
    - name: deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main
    - file: /etc/apt/sources.list.d/vscode.list
    - key_url: https://packages.microsoft.com/keys/microsoft.asc

vscode-install:
  pkg.latest:
    - require:
      - pkgrepo: vscode-ppa
    - name: code
    - skip_verify: True
    - refresh: True