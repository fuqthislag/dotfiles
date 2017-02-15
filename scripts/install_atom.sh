#!/bin/sh

apm install file-icons language-batch language-generic-config language-ini language-powershell language-viml minimap minimap-cursorline minimap-pigments pigments sort-lines

# file-icons
# language-batch
# language-generic-config
# language-ini
# language-powershell
# language-viml
# minimap
# minimap-cursorline
# minimap-pigments
# pigments
# sort-lines
## color-picker
## multi-cursor-plus
## quick-highlight
### autocomplete-python
### python-indent

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
