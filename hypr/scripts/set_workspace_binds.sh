#!/usr/bin/env sh

if [ "$HYPR_PRESET" = "excalibur" ] ; then
    WORKSPACE=split-workspace
    MOVETOWORKSPACE=split-movetoworkspace
    MOVETOWORKSPACESILENT=split-movetoworkspacesilent
else
    WORKSPACE=workspace
    MOVETOWORKSPACE=movetoworkspace
    MOVETOWORKSPACESILENT=movetoworkspacesilent
fi

for WS in $(seq 1 4) ; do
    CMD="$CMD keyword bind \$mainMod, $WS, $WORKSPACE, $WS ;"
    CMD="$CMD keyword bind \$mainMod \$moveMod, $WS, $MOVETOWORKSPACESILENT, $WS ;"
    CMD="$CMD keyword bind \$mainMod \$launchMod, $WS, $MOVETOWORKSPACE, $WS ;"
done

hyprctl --batch "$CMD"
