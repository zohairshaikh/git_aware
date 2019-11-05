# git_aware
Make your command line interactive to the git repositories and keep you informed with the current branch on the project


# Configuration
For Bash - 
Add ```PROMPT_COMMAND+="source <path_to_prompt.sh>"``` in your bash file. ```bashrc``` or ```bash_profile``` respectively.

For ZSH - 
Add ``` precmd() { eval "$PROMPT_COMMAND" } PROMPT_COMMAND="source <path_to_prompt.sh>" ``` in your zshrc file. 

This command basically updates your PROMPT_COMMAND variable and will run the provided script on every command you run in the terminal.