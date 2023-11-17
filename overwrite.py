import os
import shutil
from pathlib import Path
from datetime import datetime


timestamp = datetime.now().strftime('%Y%m%d%H%M%S%f')
is_windows = os.name == 'nt'

nvim_base = Path.home().joinpath('AppData', 'Local')
nvim_base = nvim_base if is_windows else Path.home().joinpath('.config')

repo = Path(__file__).parent

nvim_folder = 'nvim'
nvim_target = nvim_base.joinpath(nvim_folder)

vim_folder = 'vimfiles' if is_windows else '.vim'
vim_target = Path.home().joinpath(vim_folder)

wezterm_config = '.wezterm.lua'
wezterm_target = Path.home().joinpath(wezterm_config)

def backup_replace(src: Path, dst: Path):
    if dst.exists(follow_symlinks=False):
        newname = dst.stem + timestamp + dst.suffix
        dst.rename(dst.parent.joinpath(newname))
    is_directory = dst.suffix == ''
    dst.symlink_to(src, target_is_directory=is_directory)

if __name__ == '__main__':
    # print(timestamp)
    # if nvim_target.is_dir():
    #     nvim_target.unlink()
    #     shutil.rmtree(nvim_target, True)
    # if vim_target.is_dir():
    #     # print(vim_target)
    #     vim_target.unlink()
    #     shutil.rmtree(vim_target, True)
    # if wezterm_target.exists():
    #     Path.unlink(wezterm_target)
    # vim_target.symlink_to(repo.joinpath('vim'), True)
    # nvim_target.symlink_to(repo.joinpath('nvim'), True)
    # wezterm_target.symlink_to(repo.joinpath(wezterm_config))

    # repo中的配置文件夹名称固定
    vim_source = repo.joinpath('vim')
    backup_replace(vim_source, vim_target)
    backup_replace(repo.joinpath(wezterm_config), wezterm_target)
    alacritty_src = repo.joinpath('alacritty')
    alacritty_dst = Path(os.path.expandvars('%APPDATA%')).joinpath('alacritty')
    backup_replace(alacritty_src, alacritty_dst)
