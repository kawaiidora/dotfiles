import os
from pathlib import Path
from datetime import datetime

repo = Path(__file__).parent
is_windows = os.name == 'nt'
timestamp = datetime.now().strftime('%Y%m%d%H%M%S%f')


def backup_replace(source: Path, target: Path, is_directory=True):
    if target.exists(follow_symlinks=False):
        newname = target.stem + timestamp + target.suffix
        target.rename(target.parent.joinpath(newname))
    target.symlink_to(source, target_is_directory=is_directory)


if __name__ == '__main__':
    # repo中的配置文件夹名称固定

    # Vim
    vim_source = repo.joinpath('vim')
    vim_folder = 'vimfiles' if is_windows else '.vim'
    vim_target = Path.home().joinpath(vim_folder)
    backup_replace(vim_source, vim_target)

    # Alacritty
    alacritty_source = repo.joinpath('alacritty')
    appdata = Path(os.path.expandvars('%APPDATA%'))
    alacritty_target = appdata.joinpath('alacritty')
    backup_replace(alacritty_source, alacritty_target)

    # PowerShell
    pwsh_source = repo.joinpath('powershell')
    pwsh_base = 'Documents' if is_windows else '.congfig'
    pwsh_folder = 'PowerShell' if is_windows else 'powershell'
    pwsh_target = Path.home().joinpath(pwsh_base, pwsh_folder)
    backup_replace(pwsh_source, pwsh_target)

    # Starship
    starship_file = 'starship.toml'
    starship_source = repo.joinpath(starship_file)
    starship_target = Path.home().joinpath(starship_file)
    backup_replace(starship_source, starship_target, False)

    # WindowsTerminal
    wt_source = repo.joinpath('windowsterminal')
    wt_scoop = Path.home().joinpath('scoop', 'apps', 'windows-terminal-preview')
    wt_target = wt_scoop.joinpath('current', 'settings')
    backup_replace(wt_source, wt_target)

    # gitconfig
    gitconfig_file = '.gitconfig'
    gitconfig_source = repo.joinpath(gitconfig_file)
    gitconfig_target = Path.home().joinpath(gitconfig_file)
    backup_replace(gitconfig_source, gitconfig_target, False)
