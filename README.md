# cosmos-sdk-daemon-bash-aliases
Useful shell bash alias shortcuts for managing Cøsmos SDK.

## Instructions

```
mkdir .sdk_aliases 

cd .sdk_aliases

git clone https://github.com/paplco/cosmos-sdk-daemon-bash-aliases.git .

```

Add to end of ~/.bashrc

```
if [ -f ~/.sdk_aliases/.aliases ]; then
    . ~/.sdk_aliases/.aliases
fi
```

Run

```
. ~/.bashrc

```

You should see:
`=== {DAEMON_NAME} sdk aliases loaded ===`

Now to set your sdk vars, run:
```
sdkvars

```
