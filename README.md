# cosmos-sdk-daemon-bash-aliases
Useful shell bash alias shortcuts for managing Cøsmos SDK.

Copy and paste these commands to command line to install:

```
cd ~/

mkdir .sdk_aliases 

cd .sdk_aliases

git clone https://github.com/LOA-Labs/cosmos-sdk-daemon-bash-aliases.git .

echo "
# Load Cøsmos SDK aliases
if [ -f ~/.sdk_aliases/.aliases ]; then
    . ~/.sdk_aliases/.aliases
fi
" &>> ~/.bashrc

. ~/.bashrc

setsdkvars

```
The above commands will:

1) Make an `~/.sdk_aliases` folder and clone repo into it.
2) Add loading for `~/.sdk_aliases/.aliases` to .bashrc file.
3) Make copy of `~/.sdk_aliases/.sdkvars_template` at `~/.sdkvars` and open it for editing.

After setting your variables, save the `.sdkvars` file and exit.

Type `..b` to reload .bashrc file.

You should now see:
`=== {DAEMON_NAME} sdk aliases loaded ===`

Enjoy!
