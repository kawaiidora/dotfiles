$ENV:STARSHIP_CONFIG = "$HOME\starship.toml"

# installed:
# starship
# fzf
# psfzf
# psreadline
# scoop-completion
# terminal-icons
# z

Import-Module scoop-completion
Import-Module terminal-icons

Set-PSReadLineOption -EditMode Vi
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView

Invoke-Expression (&starship init powershell)
