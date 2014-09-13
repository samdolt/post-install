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
   
