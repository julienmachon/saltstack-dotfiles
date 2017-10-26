include:
  - ./users
  - {{ grains.os_family | lower }}: setup

base16-shell:
  git.latest:
    - name: https://github.com/chriskempson/base16-shell.git
    - target: {{ grains.homedir }}/.config/base16-shell

gnome-terminal-profile:
  cmd.run:
    - name: dconf load /org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/ < salt:///setup/setup.dconf
    
install-base-packages:
  pkg.installed:
    - pkgs:
      - gnome-tweak-tool
