## Forked from amix/vimrc for personal use

This repository is forked from The Ultimate Vim Configuration for personal use for automating vim setup.(see https://github.com/amix/vimrc)
There are the following changes from the original repository.
(However, since there will be a lot of modifications in the repository for a while, I didn't translate the changes.)

### Changelist

- set nu
- 커서모드
- 운영체제 공용 클립보드 사용 (macOS Catalina 에서만 테스트)
- flake8 키맵<F5> 제거
- lightline 을 air vim-airline 으로 대체
- vim-dispath를 사용하여 VS의 빌드/실행 프로세스를 간단히 흉내
- CTRL+F, CTRL+B 를 vim 의 원래 키맵으로 수정 (CTRL-P 플러그인 키맵 제거)
- <leader>를 기본 설정으로 복원
- NERDTreeToggle 키맵을 SHIFT + ~ 로 변경
- 몇몇 유용한 Vundle 플러그인 설정 (YouCompleteMe, vim-airline, vim-dispatch, Omnisharp, ..., 단 설치는 직접 진행해야 함)
- Vundle 과 YouCompleteMe 를 제외한 설정과정 자동화 (두가지 플러그인의 설정방법은 문서 후반에 다룹니다)

### Compatibility

All of these processes were tested only in the following environments:

- macOS Catalina
- Ubuntu 18.04 LTS

## How to install the Awesome version?
### Install for your own user only

	git clone --depth=1 https://github.com/vampirefh/vimrc.git ~/.vim_runtime
	sh ~/.vim_runtime/install_awesome_vimrc.sh
	
### Install for multiple users

	git clone --depth=1 https://github.com/vampirefh/vimrc.git /opt/vim_runtime
	sh ~/.vim_runtime/install_awesome_parameterized.sh /opt/vim_runtime user0 user1 user2
	# to install for all users with home directories
	sh ~/.vim_runtime/install_awesome_parameterized.sh /opt/vim_runtime --all
	
Naturally, `/opt/vim_runtime` can be any directory, as long as all the users specified have read access.

## Finllay,
### Install Vundle.vim

For complete use, the Vundle installation process must be done manually.

    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

Then enter the following command:

    vim +PluginInstall

### Build YCM for use with C++ and C#

(You can skip this process if you do not use C++ and C#.)
After installing clang and .NET core, build YCM. (see https://github.com/ycm-core/YouCompleteMe)

    cd ~/.vim/bundle/YouCompleteMe
    python3 ./install.py --clangd-completer --cs-completer --all

## How to update to latest version?
* visit https://github.com/amix/vimrc
