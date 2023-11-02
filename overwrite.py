import os
import shutil
from pathlib import Path

is_windows = os.name == 'nt'

# base = Path.home().joinpath('AppData', 'Local')
# base = base if isWindows else Path.home().joinpath('.config') 

repo = Path(__file__).parent

# nvim_folder = 'nvim'
# nvim_target = base.joinpath(nvim_folder)

vim_folder = 'vimfiles' if is_windows else '.vim'
vim_target = Path.home().joinpath(vim_folder)

if __name__ == '__main__':
    # print(default_vimrc_path)
    # print(repo_vimrc)
    # print(os.path.exists(default_vimrc_path))
    # if os.path.exists(default_vimrc_path):
    #     # print('in_if')
    #     os.remove(default_vimrc_path)
    # os.symlink(repo_vimrc, default_vimrc_path)
    # default_vim_config = '_vimrc' if os.name == 'nt' else '.vimrc'
    # destination_vim = os.path.join(home_path, default_vim_config)
    # repo_vim_config = os.path.join(repo_path, 'init.vim')
    # link(repo_vim_config, destination_vim)
    # source_wezterm = os.path.join(repo_path, 'wezterm.lua')
    # destination_wezterm = os.path.join(home_path, '.wezterm.lua')
    # link(source_wezterm, destination_wezterm)
    # repo_neovim = os.path.join(repo_path, 'neovim.lua')
    # dest_neovim = os.path.join(home_path, 'AppData', 'Local', 'nvim', 'init.lua')
    # if nvim_target.exists():
    #     shutil.rmtree(nvim_target)
    if vim_target.exists():
        shutil.rmtree(vim_target)
    # repo中的vim配置文件夹名称永远是vim
    vim_target.symlink_to(repo.joinpath('vim'))
    # nvim_target.symlink_to(repo.joinpath(nvim_folder), target_is_directory=True)

    