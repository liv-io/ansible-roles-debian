{{ansible_managed|comment(decoration='#')}}

# COLOR SUPPORT

{% if not (shell_color_support == False) %}
if [ -x /usr/bin/dircolors ]; then
  # ls
  alias ls='ls -F --color=auto --time-style="+{{shell_ls_time_style}}"'
  alias la='ls -laF --color=auto --time-style="+{{shell_ls_time_style}}"' # long listing, list all files
  alias ll='ls -lF --color=auto --time-style="+{{shell_ls_time_style}}"'  # long listing
  alias lr='ls -lRF --color=auto --time-style="+{{shell_ls_time_style}}"' # long listing, list subdirectories recursively
  alias lt='ls -ltF --color=auto --time-style="+{{shell_ls_time_style}}"' # long listing, sort by modification time
  alias lz='ls -lZF --color=auto --time-style="+{{shell_ls_time_style}}"' # long listing, shellow MAC label

  # dir
  alias dir='dir --color=auto'
  alias vdir='vdir --color=auto'

  # grep
  alias grep='grep --color=auto'
  alias fgrep='fgrep --color=auto'
  alias egrep='egrep --color=auto'
fi
{% endif %}

# SHELL ALIASES

# cls
alias cls='printf "\033c"'

{% if not (shell_safety == False) %}
# Shell safety
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias ln='ln -i'
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'
{% endif %}

# SHELL VARIABLES

{% if not (shell_ftp_proxy == '') %}
# ftp_proxy
ftp_proxy='{{shell_ftp_proxy}}'
export ftp_proxy
{% endif %}

{% if not (shell_http_proxy == '') %}
# http_proxy
http_proxy='{{shell_http_proxy}}'
export http_proxy
{% endif %}

{% if not (shell_https_proxy == '') %}
# https_proxy
https_proxy='{{shell_https_proxy}}'
export https_proxy
{% endif %}

{% if not (shell_no_proxy == []) %}
# no_proxy
no_proxy='{% for item in shell_no_proxy %}{{item}}{% if not loop.last %},{% endif %}{% endfor %}'
export no_proxy
{% endif %}

{% if not (shell_histsize == '') %}
# HISTSIZE
HISTSIZE={{shell_histsize|int}}
export HISTSIZE
{% endif %}

{% if not (shell_pager == '') %}
# PAGER
PAGER='{{shell_pager}}'
export PAGER
{% endif %}

{% if not (shell_color_prompt == False) %}
# COLOR PROMPT

PS1='\[\033[1;36m\]\u\[\033[1;37m\]@\[\033[1;33m\]\h\[\033[1;37m\]:\[\033[1;31m\]\w \[\033[1;36m\]\$ \[\033[0m\]'
echo -n -e '\033%G'
{% endif %}
