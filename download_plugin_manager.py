import os
import urllib.request

url = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

file_path = os.path.join(os.path.expanduser('~'), 'plug.vim')


if __name__ == '__main__':
    with urllib.request.urlopen(url) as f:
        with open(file_path, 'w') as file:
            print(f.decode('utf-8'))
            # file.write(f)
