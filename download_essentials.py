import os
import sys
import platform
from http.client import IncompleteRead
from time import sleep
from urllib.request import Request, urlopen
from random import randrange

vim_plug_url = (
    'https://raw.githubusercontent.com/'
    'junegunn/vim-plug/master/plug.vim'
)

base_path = os.path.expanduser('~')

vim_plug_path = os.path.join(base_path, 'vimfiles', 'autoload', 'plug.vim')

is_64bits = sys.maxsize > 2 ** 32

im_select_url = (
    'https://github.com/daipeihust/im-select/'
    'raw/master/im-select-win/out/x64/im-select.exe'
) if is_64bits else (
    'https://github.com/daipeihust/im-select/'
    'raw/master/win/out/x86/im-select.exe'
)

im_select_path = os.path.join(base_path, 'vimfiles', 'im-select.exe')


def save_vim(content):
    print('save vim')
    pass


def save_exe(content):
    print('save exe')
    pass


save_file = {
    'vim': save_vim,
    'exe': save_exe
}


def download_file(url, destination):
    print(url)
    print(destination)

    def return_content(url):
        request_obj = Request(url, headers={
            'User-agent': (
                'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0)'
                ' Gecko/20100101 Firefox/97.0'
            )
        })
        try:
            with urlopen(request_obj) as response:
                return response.read()
        except IncompleteRead:
            print('download file failed, retry...')
            sleep(randrange(1, 5))
            return return_content(url)

    # print(return_content(url))
    content = return_content(url)
    save_file[url.split('.')[-1]](content)


if __name__ == '__main__':
    print('download vim-plug')
    download_file(vim_plug_url, vim_plug_path)
    if platform.system() == 'Windows':
        print('download im-select')
        download_file(im_select_url, im_select_path)
