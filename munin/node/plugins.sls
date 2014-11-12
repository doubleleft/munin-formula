{% from "munin/map.jinja" import munin_node with context %}

include:
  - munin.node.config

munin_plugins_config:
  file.managed:
    - name: {{ munin_node.config_plugins }}
    - source: {{ munin_node.config_plugins_src }}
    - template: jinja
    - user: root
    - group: root
    - mode: 644
    - watch_in:
      - service: munin_node
