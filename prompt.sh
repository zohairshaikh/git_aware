GIT_GREEN="$(tput setaf 2)"
FOLDER_CYAN="$(tput setaf 46)"
NORMAL_YELLOW="$(tput setaf 3)"
RESET="$(tput sgr0)"


if [ -d ".git" ]
then
        cd .git/
        branch=$( cat HEAD || true )
        j=0
        for i in $(echo $branch | tr "/" "\n")
        do
                ((j++))
                if [ "$j" = 4 ]
                then
                        if [ -e logs/refs/remotes/origin/$i ]
                        then
                                export PS1='\[${NORMAL_YELLOW}$(whoami) • ${FOLDER_CYAN}/${PWD##*/}/ → ${GIT_GREEN}$i ✓ ${RESET}$\] '
                        else
                                export PS1='\[${NORMAL_YELLOW}$(whoami) • ${FOLDER_CYAN}/${PWD##*/}/ → ${GIT_GREEN}$i ✗ ${RESET}$ \]'
                        fi


                fi;
        done;
        cd ..
else
        export PS1='\[${NORMAL_YELLOW}$(whoami) • ${FOLDER_CYAN}/${PWD##*/}/${RESET}$\] '
fi;
