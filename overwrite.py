import os
import shutil
from pathlib import Path

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

if __name__ == '__main__':
    if nvim_target.is_dir():
        nvim_target.unlink()
        shutil.rmtree(nvim_target, True)
    if vim_target.is_dir():
        # print(vim_target)
        vim_target.unlink()
        shutil.rmtree(vim_target, True)
    if wezterm_target.exists():
        Path.unlink(wezterm_target)
    # repo中的vim配置文件夹名称永远是vim
    vim_target.symlink_to(repo.joinpath('vim'), True)
    nvim_target.symlink_to(repo.joinpath('nvim'), True)
    wezterm_target.symlink_to(repo.joinpath(wezterm_config))
