#!/bin/sh

apm install autocomplete-python color-picker file-icons language-batch language-generic-config language-ini language-powershell language-viml minimap minimap-cursorline minimap-pigments multi-cursor-plus pigments python-indent quick-highlight sort-lines

# autocomplete-python
# color-picker
# file-icons
# language-batch
# language-generic-config
# language-ini
# language-powershell
# language-viml
# minimap
# minimap-cursorline
# minimap-pigments
# multi-cursor-plus
# pigments
# python-indent
# quick-highlight
# sort-lines

cat <<EOT > ~/.atom/keymap.cson
'atom-text-editor':
  'alt-l': 'editor:split-selections-into-lines'
EOT

cat <<EOT > ~/.atom/config.cson
"*":
  core:
    autoHideMenuBar: true
    telemetryConsent: "no"
  editor:
    fontFamily: "monaco"
    showIndentGuide: true
    showInvisibles: true
    softWrap: true
    softWrapAtPreferredLineLength: true
  welcome:
    showOnStartup: false
EOT
