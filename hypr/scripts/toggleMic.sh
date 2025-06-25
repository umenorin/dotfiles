#!/bin/sh

IS_NOT_MUTED=`pactl get-source-mute @DEFAULT_SOURCE@ | grep no` 
TOGGLE_MUTE=`pactl set-source-mute @DEFAULT_SOURCE@ toggle`

if [[ -n $IS_NOT_MUTED ]]; then
    $TOGGLE_MUTE && `paplay ~/.config/hypr/audios/discord-mute-sound.mp3`
  else
    $TOGGLE_MUTE && `paplay ~/.config/hypr/audios/discord-unmute-sound.mp3`
fi
