front-droid-patched:
  file.managed:
    - name: {{ grains.homedir }}/.local/share/fonts/Droid Sans Mono Nerd Font Complete.otf
    - source: https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf
    - source_hash: 6b88535c685f6c140bb07bb7e833bd976b7a53da
    - template: jinja
    - makedirs: True
    - user: {{ grains.user }}
    - group: {{ grains.user }}
  
front-droid-mono-patched:
  file.managed:
    - name: {{ grains.homedir }}/.local/share/fonts/Droid Sans Mono Nerd Font Complete  Mono.otf
    - source: https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete%20Mono.otf
    - source_hash: b89620155b3e695d99c611fffaa324fb6f314114
    - template: jinja
    - makedirs: True
    - user: {{ grains.user }}
    - group: {{ grains.user }}