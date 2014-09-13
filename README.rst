post-install
============

Linux Post-instal

Logiciels
=========

.. code-block:: sh

   sudo apt install firefox firefox-locale-fr \
                    vim-gnome build-essential \
                    valac libgtk-3-dev git bzr zsh

Console
========

.. code-block:: sh

   chsh -s /bin/zsh
   curl -L http://install.ohmyz.sh | sh
   # Changement du thème de robbyrussell à ys
   sed -i 's/robbyrussell/ys/' ~/.zshrc
   
Pantheon Terminal
=================

Thème solarized dark pour Pantheon-terminal. Requis par le thème solarized de Vim.

.. code-block:: sh

   wget https://gist.githubusercontent.com/OpenNingia/5665472/raw/0364c52692f4d5e6152bc6077ec08fcee4102ab1/terminal_color_scheme
   chmod +x terminal_color_scheme
   ./terminal_color_scheme dark


Git
===

.. code-block:: sh

   git config --global user.name "Samuel Dolt"
   git config --global user.email samuel@dolt.ch
   git config --global push.default simple

Vim
===

.. code-block:: sh

   git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
   cd $HOME && https://github.com/samdolt/post-install/raw/master/.vimrc
   vim +PluginInstall +qall
   echo "export TERM='xterm-256color'" >>  .zshrc
   
   
