import os

user_home_path = os.path.expanduser('~')

repo_path = os.path.abspath(os.path.dirname(__file__))

default_vimrc_name = '_vimrc' if os.name == 'nt' else '.vimrc'

default_vimrc_path = os.path.join(user_home_path, default_vimrc_name)

repo_vimrc = os.path.join(repo_path, 'init.vim')

if __name__ == '__main__':
    # print(default_vimrc_path)
    # print(repo_vimrc)
    # print(os.path.exists(default_vimrc_path))
    if os.path.exists(default_vimrc_path):
        # print('in_if')
        os.remove(default_vimrc_path)
    os.symlink(repo_vimrc, default_vimrc_path)
