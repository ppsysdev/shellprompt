# shellprompt

Project holds files to setup shell prompt with same theme as in vim when using vim-airline.

*Requirements:*
1. When you don't wish to install vim plugins,
    1. get .shell_prompt.sh locally from
    <code>
        git clone https://github.com/pskpatil/shellprompt.git
        cp .shell_prompt.sh ~/
        echo "source ~/.shell_prompt.sh" >> ~/.bashrc
        source ~/.shell_prompt.sh
    </code>
        
2. When you wish to customize further.
    1. Following plugins needed to be installed.
        1. vim-airline [https://github.com/vim-airline/vim-airline]
        2. vim-airline-themes [https://github.com/vim-airline/vim-airline-themes]
        3. promptline.vim [https://github.com/edkolev/promptline.vim]

    <code>
        vim -c 'PromptlineSnapshot! ~/.shell_prompt.sh' -c ':q' && source ~/.shell_prompt.sh
    </code>



