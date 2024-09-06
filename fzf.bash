# Setup fzf
# ---------
if [[ ! "$PATH" == */home/tcowley/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/tcowley/.fzf/bin"
fi

# Auto-completion
# ---------------
source "/home/tcowley/.fzf/shell/completion.bash"

# Key bindings
# ------------
source "/home/tcowley/.fzf/shell/key-bindings.bash"
