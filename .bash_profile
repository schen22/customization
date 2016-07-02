# Bash
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx # dark background
alias ls='ls -hFG'
alias l='ls -laghFG'
alias xcode='open -a xcode'
alias text='open -a TextEdit'
alias pre='open -a Preview'

export GREP_OPTIONS='--color=auto'

# Commom Mac programs
alias reload='source ~/.bash_profile'
alias xcode='open -a xcode'
alias mate='open -a TextMate'
#alias sublime='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias text='open -a TextEdit'
#alias pwdfailed='syslog -k Time ge -24h | egrep -e "sshd|ftpd|afp|vnc"'

# Grep
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;35;40'

# Git
export PS1="\[\033[38m\]\u\[\033[32m\] \w \[\033[31m\]\`ruby -e \"print (%x{git branch 2> /dev/null}.split(%r{\n}).grep(/^\*/).first || '').gsub(/^\* (.+)$/, '(\1) ')\"\`\[\033[37m\]$\[\033[00m\] "

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

  # Android
  #export ANDROID_SDK=/Applications/android-sdks/
  #export ANDROID_ROOT=$ANDROID_SDK
  #export ANDROID_HOME=$ANDROID_SDK

  #export ANDROID_NDK=/Applications/android-ndk-r8c
  #export NDK_ROOT=$ANDROID_NDK

  #export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

