GIT_GREEN="$(tput setaf 2)"
NORMAL_YELLOW="$(tput setaf 3)"
RESET="$(tput sgr0)"


if [ -d ".git" ]
then
        cd .git/
        branch=$( cat HEAD || true )
        j=0
        for i in $(echo $branch | tr "/" "\n")
        do
                j=$((j+1))
                if [ $j == 4 ]
                then
                        export PS1='${NORMAL_YELLOW}$(whoami)${GIT_GREEN}$i ${RESET}$'

                fi;
        done;
        cd ..
else
        export PS1='${NORMAL_YELLOW}$(whoami)${RESET}$'
fi;
