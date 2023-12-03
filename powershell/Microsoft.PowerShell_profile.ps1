# 关闭遥测
$env:POWERSHELL_TELEMETRY_OPTOUT = 1
# 关闭更新的检查
$env:POWERSHELL_UPDATE_CHECK = "off"

$ENV:STARSHIP_CONFIG = "$HOME\starship.toml"

# installed:
# starship
# fzf
# psfzf
# psreadline
# scoop-completion
# terminal-icons

Import-Module scoop-completion
Import-Module terminal-icons

Set-PSReadLineOption -EditMode Vi
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView

Invoke-Expression (&starship init powershell)
