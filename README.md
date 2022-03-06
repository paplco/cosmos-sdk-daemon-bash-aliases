# cosmos-sdk-daemon-bash-aliases
Useful shell bash alias shortcuts for managing Cøsmos SDK.

## Instructions

```
mkdir .sdk_aliases 

cd .sdk_aliases

git clone https://github.com/paplco/cosmos-sdk-daemon-bash-aliases.git .

```

Run to add to end of ~/.bashrc:

```
echo "

# Load Cøsmos SDK aliases
if [ -f ~/.sdk_aliases/.aliases ]; then
    . ~/.sdk_aliases/.aliases
fi " &>> ~/.bashrc

```

Run to reload .bashrc:

```
. ~/.bashrc

```

You should see:
`=== {DAEMON_NAME} sdk aliases loaded ===`

Now to set your sdk vars. This will copy the vars template and move the file up outside of the git directory. Run command:
```
setsdkvars

```
