LOCAL_BIN="$HOME/.local/bin"
if ! [[ "$PATH" == *"$LOCAL_BIN"* ]]
    then
        export PATH="$PATH:$LOCAL_BIN"
    fi
