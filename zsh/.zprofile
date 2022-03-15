
# MacPorts Installer addition on 2017-12-31_at_17:13:52: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
















