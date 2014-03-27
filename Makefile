CONFIG_PATH=${HOME}/.config/config_file/
BACKUP_PATH=./backup

.PHONY: vim awesome zsh astyle urxvt tmux weechat conky gitconfig st

all:


install: vim awesome zsh astyle urxvt tmux weechat conky git 


vim:
	@(rm -rf ${HOME}/.vim ${HOME}/.vimrc)
	@(ln -s ${CONFIG_PATH}/vim ${HOME}/.vim)
	@(ln -s ${CONFIG_PATH}/vim/vimrc ${HOME}/.vimrc)
	@(echo 'config de vim installé !')


awesome:
	@(rm -rf ${HOME}/awesome)
	@(rm -f ${CONFIG_PATH}/../awesome)
	@(ln -s ${CONFIG_PATH}/awesome ${CONFIG_PATH}/../awesome)
	@(echo 'Config de awesome installé !')

zsh:
	@(rm -rf ${HOME}/.zshrc ${HOME}/.oh-my-zsh)
	@(rm -f ${CONFIG_PATH}/../oh-my-zsh)
	@(ln -s ${CONFIG_PATH}/oh-my-zsh/ ${CONFIG_PATH}/../oh-my-zsh)
	@(ln -s ${CONFIG_PATH}/oh-my-zsh/zshrc ${HOME}/.zshrc)
	@(echo 'Config de ZSH installé !')

astyle:
	@(rm -f ${HOME}/.astylerc)
	@(ln -s ${CONFIG_PATH}/astylerc ${CONFIG_PATH}/../astylerc)
	@(echo 'Config de astyle installé !')

st:
	@(cd ${CONFIG_PATH}/st_src; make && sudo cp st /usr/local/bin/)

# urxvt:
# 	@(rm -f ${HOME}/.Xdefaults)
# 	@(ln -s ${CONFIG_PATH}/Xdefaults ${HOME}/.Xdefaults)
# 	@(echo 'Config de urxvt installé !')

tmux:
	@(rm -f ${HOME}/.tmux.conf)
	@(ln -s ${CONFIG_PATH}/tmux.conf ${HOME}/.tmux.conf)
	@(echo 'Config de tmux installé !')

weechat:
	@(rm -f ${HOME}/.weechat)
	@(ln -s ${CONFIG_PATH}/weechat ${HOME}/.weechat)
	@(echo 'Config de weechat installé !')

conky:
	@(rm -f ${HOME}/.conkyrc)
	@(ln -s ${CONFIG_PATH}/conky ${CONFIG_PATH}/../conky)
	@(ln -s ${CONFIG_PATH}/conky/conkyrc ${HOME}/.conkyrc)
	@(echo 'Config de conky installé !')

git:
	@(rm -f ${HOME}/.gitconfig)
	@(ln -s ${CONFIG_PATH}/gitconfig ${HOME}/.gitconfig)
	@(echo 'Config de git installé !')
