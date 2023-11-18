import os
from pathlib import Path
from datetime import datetime


timestamp = datetime.now().strftime('%Y%m%d%H%M%S%f')
is_windows = os.name == 'nt'

repo = Path(__file__).parent

vim_folder = 'vimfiles' if is_windows else '.vim'
vim_target = Path.home().joinpath(vim_folder)

def backup_replace(source: Path, target: Path):
    if target.exists(follow_symlinks=False):
        newname = target.stem + timestamp + target.suffix
        target.rename(target.parent.joinpath(newname))
    is_directory = target.suffix == ''
    target.symlink_to(source, target_is_directory=is_directory)

if __name__ == '__main__':
    # repo中的配置文件夹名称固定
    vim_source = repo.joinpath('vim')
    backup_replace(vim_source, vim_target)
    alacritty_source = repo.joinpath('alacritty')
    appdata = Path(os.path.expandvars('%APPDATA%'))
    alacritty_target = appdata.joinpath('alacritty')
    backup_replace(alacritty_source, alacritty_target)
