{{ansible_managed|comment(decoration='#')}}

# SHELL OPTIONS

# checkwinsize
{% if (bash_checkwinsize == False) %}
shopt -d checkwinsize
{% else %}
shopt -s checkwinsize
{% endif %}

# histappend
{% if (bash_histappend == False) %}
shopt -d histappend
{% else %}
shopt -s histappend
{% endif %}

# SHELL VARIABLES

{% if not (bash_histcontrol == '') %}
# HISTCONTROL
HISTCONTROL='{{bash_histcontrol}}'
{% if (bash_history_readonly == True) %}
readonly HISTCONTROL
{% endif %}
export HISTCONTROL
{% endif %}

{% if not (bash_histfilesize == '') %}
# HISTFILESIZE
HISTFILESIZE={{bash_histfilesize|int}}
{% if (bash_history_readonly == True) %}
readonly HISTFILESIZE
{% endif %}
export HISTFILESIZE
{% endif %}

{% if not (bash_histignore == '') %}
# HISTIGNORE
HISTIGNORE='{{bash_histignore}}'
{% if (bash_history_readonly == True) %}
readonly HISTIGNORE
{% endif %}
export HISTIGNORE
{% endif %}

{% if not (bash_histsize == '') %}
# HISTSIZE
HISTSIZE={{bash_histsize|int}}
{% if (bash_history_readonly == True) %}
readonly HISTSIZE
{% endif %}
export HISTSIZE
{% endif %}

{% if not (bash_histtimeformat == '') %}
# HISTTIMEFORMAT
HISTTIMEFORMAT='{{bash_histtimeformat}}'
{% endif %}

{% if not (bash_prompt_command == '') %}
# PROMPT_COMMAND
PROMPT_COMMAND='{{bash_prompt_command}}'
{% if (bash_history_readonly == True) %}
readonly PROMPT_COMMAND
{% endif %}
export PROMPT_COMMAND
{% endif %}

{% if not (bash_tmout == '') %}
# TMOUT
TMOUT={{bash_tmout|int}}
{% if (bash_tmout_readonly == True) %}
readonly TMOUT
{% endif %}
export TMOUT
{% endif %}

# KEY BINDINGS

if [[ $- =~ i ]]; then
  bind '"\e[1~": beginning-of-line'
  bind '"\e[4~": end-of-line'
fi
