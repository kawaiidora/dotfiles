from pathlib import Path

base = Path.home().joinpath('AppData', 'Local')

repo = Path(__file__).parent

nvim_target = base.joinpath('nvim')

nvim_data = base.joinpath('nvim-data')

#def link(source, destination):
#    if os.path.exists(destination):
#        os.remove(destination)
#    os.mkdir(destination)
#os.symlink(source, destination)

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
    if nvim_data.exists():
        # nvim_data.rmdir()
        pass
    if nvim_target.exists():
        nvim_target.rmdir()
    nvim_target.symlink_to(repo.joinpath('nvim'), target_is_directory=True)
    