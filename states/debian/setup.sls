packages-ppa:
  pkgrepo.managed:
    - ppa: ppa:snwh/pulp

packages-base:
  pkg.installed:
    - pkgs:
      - build-essential
      - uuid-runtime
      - curl
      - xfonts-utils
      - fonts-droid
      - fonts-hack-ttf
      - paper-icon-theme
      - paper-cursor-theme
      - paper-gtk-theme

packages-useless:
  pkg.purged:
    - pkgs:
      - rhythmbox
      - aisleriot
      - gnome-mines
      - gnome-sudoku
      - gnome-mahjongg

