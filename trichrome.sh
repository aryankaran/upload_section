#!/bin/bash

stable="50050{58,59,78,98,99} 49510{41,61} 48960{58,79,88,127} 48440{48,58,73,88} 47580{87,101} 46920{70,87,98} 46640{45,92,104} 46380{50,74} 46060{50,61,71,80,85} 45770{62,82} 45150{105,115,131,159,166} 44720{77,88,101,114,120,134,164} 44300{66,82,91,210}"

path="/sdcard/Trichrome-stable-android.txt" # put here path to version list
pack=com.google.android.trichromelibrary

vl=$(cat "$path" | sed 's-}-}{33,34}-g')
vl=$(bash -c "echo $vl")

for v in $vl;do pm uninstall ${pack}_${v} && echo -e "$v\n";done
