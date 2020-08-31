#!/bin/bash
input=$1
output_name=$2

ffmpeg -i $input -vcodec libx264 -f mp4 -vb 1024k -preset slow ${output_name}.mp4
ffmpeg -i $input -f webm -vcodec libvpx-vp9 -vb 1024k ${output_name}.webm
