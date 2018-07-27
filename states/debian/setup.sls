packages-ppa:
  pkgrepo.managed:
    - ppa: snwh/pulp

packages-base:
  pkg.installed:
    - pkgs:
      - build-essential
      - uuid-runtime
      - curl
      - meld
      - chrome-gnome-shell
      - xclip
      - paper-icon-theme
      - paper-cursor-theme
      #- paper-gtk-theme
      - arc-theme

packages-useless:
  pkg.purged:
    - pkgs:
      - rhythmbox
      - aisleriot
      - gnome-mines
      - gnome-sudoku
      - gnome-mahjongg

