# .bash_aliases for Cøsmos SDK.
# https://github.com/paplco/cosmos-sdk-daemon-bash-aliases
# Useful commands to add? Open PR. Thanks

# Nice command prompt formatting.
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# Daemon environment variables. Edit as needed. Keep separate from .bash_aliases
. .sdk_vars

# General useful shortcuts.
alias home='cd ~/ '
alias ..b='. ~/.bash_aliases '
alias cba='cat ~/.bash_aliases '
alias n='nano '
alias nba='n ~/.bash_aliases '
alias pgen='openssl rand -base64 32 '
alias la='ls -la '
alias rmf='rm -Rf '

# Cosmovisor 
export DAEMON_RESTART_AFTER_UPGRADE=true
export DAEMON_ALLOW_DOWNLOAD_BINARIES=false
export PATH=$PATH:~/.${DAEMON_NAME}/cosmovisor/current/bin/:~/go/bin;
alias cvstart="sudo -S systemctl start cosmovisor"
alias cvstatus="sudo -S systemctl status cosmovisor"
alias cvrestart="sudo -S systemctl restart cosmovisor"
alias cvstop="sudo -S systemctl stop cosmovisor"
alias cvlog="journalctl -u cosmovisor.service -n 10 -f"

# SDK shortcuts
alias sdk="${DAEMON_NAME} "
alias cdsdk="cd ${DAEMON_HOME}; la "
alias cnf="cdsdk; cd config; la "
alias cnfe="sdkcnf; n config.toml "
alias bal="sdk q bank balances ${ACC_ADDR} "
alias acc="sdk q account ${ACC_ADDR} "
alias txbr="home; sdk tx broadcast tx.json "
alias txn="home; rm tx.json; n tx.json "
alias txwd="home; sdk tx distribution withdraw-rewards ${VAL_ADDR}  \
  --from=${ACC_ADDR} \
  --chain-id=${CHAIN_ID} \
  --commission \
  --fees=${FEES}${DENOM} \
  --generate-only > tx.json "
alias tdm="sdk tendermint "
alias tdmaddr="tdm show-address "
alias tdmid="tdm show-node-id "
alias tdmval="tdm show-validator "


# Disk management.
alias dmnt="df -h | grep 'mnt' "
alias dbyid="ls /dev/disk/by-id/"
alias dresize="resize2fs "
dmnt; #We use blockchain disks mounted as drives, important to see this stat upon login automatically.
