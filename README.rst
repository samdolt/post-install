Procédure de post-installation pour Elementary OS
=================================================

Et autre dérivé d'Ubuntu

Logiciels
=========

Les indispensables

.. code-block:: sh

   sudo apt install firefox firefox-locale-fr \
                    vim-gnome build-essential \
                    valac libgtk-3-dev git bzr \
                    zsh dconf-editor \
                    ubuntu-restricted-extras \
                    git-flow default-jre curl \
                    python-dev libclang1 cmake \
                    libgnome-keyring-dev
                    
ou sur Fedora:

.. code-block:: sh

   sudo dnf install firefox vim-enhanced valac zsh \
                    git bzr git-flow curl cmake    \
                    gtk3-devel glib2-devel gcc \
                    gcc-c++ python-devel \

Console
========

Utilisation de Zsh avec les prompts de Oh My Zsh:

.. code-block:: sh

   chsh -s /bin/zsh
   curl -L http://install.ohmyz.sh | sh
   # Changement du thème de robbyrussell à ys
   cd ~/.oh-my-zsh/themes/
   wget https://raw.githubusercontent.com/samdolt/post-install/master/custom.zsh-theme
   cd $HOME

Ajout de la coloration syntactique

.. code-block:: sh

   cd ~/.oh-my-zsh/custom/plugins
   git clone git://github.com/zsh-users/zsh-syntax-highlighting.git

Finalisation :

.. code-block:: bash

   cd $HOME
   rm .zshrc
   wget https://raw.githubusercontent.com/samdolt/post-install/master/.zshrc
   zsh


Git
===

Configuration de git

.. code-block:: sh

   git config --global user.name "Samuel Dolt"
   git config --global user.email samuel@dolt.ch
   git config --global push.default simple
   git config --global credential.helper cache

Intégration de git à Gnome Keyring :

.. code-block:: sh

   sudo make --directory=/usr/share/doc/git/contrib/credential/gnome-keyring
   git config --global credential.helper /usr/share/doc/git/contrib/credential/gnome-keyring/git-credential-gnome-keyring


Récupération des dépots githubs dans ~/Projets/

.. code-block:: sh

   mkdir ~/Projets
   wget https://raw.githubusercontent.com/samdolt/post-install/master/github-user-repo.sh
   chmod +x github-user-repo.sh
   ./github-user-repo.sh samdolt
   ./github-user-repo.sh elementary-fr

Bazaar
======

.. code-block:: sh

   bzr whoami "Samuel Dolt <samuel@dolt.ch>"
   bzr launchpad-login samuel-dolt

Il faut encore configurer la clef publique SSH sur Launchpad:

.. code-block:: sh

   ssh-keygen -t rsa
   cat ~/.ssh/id_rsa.pub

https://launchpad.net/~samuel-dolt/+editsshkeys

Vim
===

.. code-block:: sh

   git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
   cd $HOME && wget https://github.com/samdolt/post-install/raw/master/.vimrc
   vim +PluginInstall +qall
   
   cd ~/.vim/bundle/YouCompleteMe
   ./install.sh --clang-completer
   cd

Correction orthographique: http://blog.fedora-fr.org/metal3d/post/Correction-orthographique-et-grammaticale-avec-Vim

.. code-block:: sh

   mkdir -p ~/.vim/spell
   cd ~/.vim/spell
   wget http://ftp.vim.org/vim/runtime/spell/fr.utf-8.spl
   wget http://ftp.vim.org/vim/runtime/spell/fr.utf-8.sug
   wget http://ftp.vim.org/vim/runtime/spell/en.utf-8.spl
   wget http://ftp.vim.org/vim/runtime/spell/en.utf-8.sug
   wget http://ftp.vim.org/vim/runtime/spell/de.utf-8.spl
   wget http://ftp.vim.org/vim/runtime/spell/de.utf-8.sug

Correction grammatical :
Plugin : http://www.vim.org/scripts/script.php?script_id=3223

1. Télécharger le plugin VIM et dézipper dans ~/.vim
2. Télécharger le logiciel LanguageTools et désipper dans ~/.vim
3. Vérifier le path dans .vimrc, au niveau du numéro de version

   
Changement de la langue :

.. code-block:: vim

   :set spelllang=fr
   :set spell " Activation du correcteur
   :LanguageToolCheck

Afficher la liste des erreurs du correcteur de syntax:

.. code-block:: vim

   :Error

Gnome 3 / Fedora
================


Elementary OS
=============

Pantheon Terminal
-----------------

Thème solarized dark pour Pantheon-terminal. Requis par le thème solarized de Vim.

.. code-block:: sh

   wget https://gist.githubusercontent.com/samdolt/52af35525663fbd336c1/raw/0364c52692f4d5e6152bc6077ec08fcee4102ab1/terminal_color_scheme
   chmod +x terminal_color_scheme
   ./terminal_color_scheme dark
   
Paramètrage de Scratch
----------------------

.. code-block:: sh

   dconf write /org/pantheon/scratch.settings/style-scheme "'solarizeddark'"

Paramètrage généraux
-------------------

.. code-block:: sh

   dconf write /org/gnome/desktop/background/picture-uri "'/usr/share/backgrounds/The Coast.jpg'"

Thème d'icone Captiva:

.. code-block:: sh

   sudo add-apt-repository ppa:captiva/ppa
   sudo apt-get update
   sudo apt-get install captiva-icon-theme
   dconf write /org/gnome/desktop/interface/icon-theme "'Captiva'"

Firefox
-------

Thème Elementary: https://addons.mozilla.org/fr/firefox/addon/elementary-firefox/

Correction grammaticale: https://www.languagetool.org/

Dictionnaire en français: https://addons.mozilla.org/fr/firefox/addon/dictionnaires-fran%C3%A7ais/

Pipelight pour prise en charge Silverlight et Flash. Attention, il faut fermet Firefox lors
de l'install des plugins (trois dernières lignes).

.. code-block:: sh

  sudo add-apt-repository ppa:pipelight/stable
  sudo apt-get update
  sudo apt-get install --install-recommends pipelight-multi
  sudo pipelight-plugin --update
  sudo pipelight-plugin --enable flash
  sudo pipelight-plugin --enable silverlight
 
 
Mis à jour des logiciels Gnome 3
--------------------------------
 
Pour utiliser une version récente des logiciels Gnome, avec la header bar, il faut rajouter
temporairement le dépot Gnome 3 Staging. 
 
.. code-block:: sh
 
   sudo apt-add-repository ppa:gnome3-team/gnome3-staging 
   sudo apt update
   sudo apt install gitg
   sudo apt-add-repository -r ppa:gnome3-team/gnome3-staging

.. note:: Les logiciels peuvent être instable, et ne seront pas mis à jour


LibreOffice
-----------

.. code-block:: sh
   
   sudo apt-get install libreoffice-nlpsolver libreoffice-presenter-console \
                        libreoffice-pdfimport libreoffice-presentation-minimizer \
                        libreoffice-wiki-publisher libreoffice-help-fr \
                        libreoffice-l10n-fr libreoffice

Correction grammatical: https://www.languagetool.org/

Dictionnaire français: http://extensions.libreoffice.org/extension-center/dictionnaires-francais
   

   
   
