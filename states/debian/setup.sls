packages-base:
  pkg.installed:
    - pkgs:
      - build-essential
      - uuid-runtime
      - curl

packages-useless:
  pkg.purged:
    - pkgs:
      - rhythmbox
      - aisleriot
      - gnome-mines
      - gnome-sudoku
      - gnome-mahjongg

