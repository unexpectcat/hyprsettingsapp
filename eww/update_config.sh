#!/bin/bash

# $1 is the value passed from Eww {}
NEW_VALUE=$1

# Update the JSON file (using jq is the cleanest way)
jq ".appearance.rounding = $NEW_VALUE" ~/.config/hypr/hyprsettingsapp/eww/settings.json > ~/.config/hypr/hyprsettingsapp/eww/settings.json.tmp && mv ~/.config/hypr/hyprsettingsapp/eww/settings.json.tmp ~/.config/hypr/hyprsettingsapp/eww/settings.json

# Optional: Tell Hyprland to refresh immediately
hyprctl reload