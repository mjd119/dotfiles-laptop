#!/usr/bin/env bash

#-------------------------------#
# Display current cover         #
# ueberzug version              #
#-------------------------------#
#TODO Find a way to change artwork without having to manually running the tmux session twice

function ImageLayer {
    ueberzug layer -sp json
}

COVER="/tmp/cover.png"
TEMP_COVER="/tmp/temp_cover.png"
X_PADDING=0
Y_PADDING=0
# Added these two lines so manual tmux restart not required (may change to see if the Missing Album art image is shown on startup)
touch $COVER
touch $TEMP_COVER

function add_cover {
    if [ -e $COVER ]; then
        echo "{\"action\": \"add\", \"identifier\": \"cover\", \"x\": $X_PADDING, \"y\": $Y_PADDING, \"path\": \"$COVER\"}";
    #else # Use this as the album art if one isn't found
    #    COVER="$HOME/.config/ncmpcpp/Missing_Art.jpg"
    #    echo "{\"action\": \"add\", \"identifier\": \"cover\", \"x\": $X_PADDING, \"y\": $Y_PADDING, \"path\": \"$COVER\"}";
    fi
}

clear
ImageLayer -< <(
    add_cover
    while inotifywait -q -q -e close_write "$COVER"; do
        add_cover
    done
)
