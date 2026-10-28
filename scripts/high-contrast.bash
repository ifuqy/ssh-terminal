# Source in the target interactive Bash shell. No persistent files are changed.
# Preserve existing extension-specific rules, then override these type colours.
export LS_COLORS="${LS_COLORS:+$LS_COLORS:}no=38;2;255;255;255:fi=38;2;255;255;255:di=1;38;2;80;180;255:ln=1;38;2;0;230;255:ex=1;38;2;0;255;100:ow=1;38;2;0;255;100:tw=1;38;2;0;255;100:st=1;38;2;0;255;100:or=1;38;2;255;85;85:mi=1;38;2;255;85;85"
if [ -n "${BASH_VERSION-}" ]; then
    export PS1='\[\e[1;38;2;0;255;100m\]\u@\h\[\e[0;38;2;255;255;255m\]:\[\e[1;38;2;80;180;255m\]\w\[\e[0;38;2;255;255;255m\]\$ \[\e[0m\]'
fi
