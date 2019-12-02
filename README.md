my linux env configuration, including vimrc, bashrc, etc. 


1，.vim
<br>
.vim目录及vim_syntax_SV-UVM-SC.rar，见有道云笔记。
<br>
plug：https://github.com/junegunn/vim-plug
<br>
--.vim/plugged/vim-matchup：  https://github.com/andymass/vim-matchup
<br>
--.vim/plugged/verilog_emacsauto.vim: http://www.verilog.com/verilog-mode.html,https://github.com/zhuzhzh/verilog_emacsauto.vim
<br><br>
--.vim/plugged/vlog_inst_gen.vim：https://www.vim.org/scripts/script.php?script_id=4151
<br>
2，zsh
<br>
install zsh.
<br>
git clone https://github.com/robbyrussell/oh-my-zsh
<br>
3，tmux
<br>
install tmux.
<br>
git clone https://github.com/gpakosz/.tmux.git
<br>
4，.gitconfig & beyondcompare
<br>
~/.gitconfig
<br>
beyondcompare:http://www.scootersoftware.com/download.php bcompare-4.3.2.24472.x86_64.rpm; https://blog.csdn.net/qq_26012495/article/details/86514147
<br>
5，auto connect
<br>
step#1：get the verilog-mode.el file from the http://www.verilog.com/verilog-mode.html site, and put it in your ~/.elisp/ directory.
<br>
step#2: use https://github.com/zhuzhzh/verilog_emacsauto.vim, see 1，.vim -- .vim/plugged/verilog_emacsauto.vim
<br>
or download verilog filetype plugin from https://www.vim.org/scripts/script.php?script_id=1875, and put it in your ~/.vim/ftplugin/ directory, creating the directories if necessary. 
<br>
6，scripts
<br>
(1)pymailer.py
   send email using qq email.
<br>
