#!/usr/bin/env bash

urldate=$(date +"%Y/%m/%d")
filedate=$(date +"%Y-%m-%d")
url="https://static01.nyt.com/images/$urldate/nytfrontpage/scan.pdf"
infile="nytscan_$filedate.pdf"
outfile="nytscan_$filedate.jpg"

# Download NYT frontpage scan
wget -q -O "$infile" "$url"

# Convert PDF scan to JPEG
convert \
  -quality 100 \
  -density 300 \
  -scale 1920x1080 \
  -gravity center \
  -extent 1920x1080 \
  +repage \
  -fill white \
  -opaque none \
  -colorspace sRGB \
  -strip \
  $infile $outfile
  
# Display on screen
: "${NYTONPI_FB:=/dev/fb0}"
: "${NYTONPI_TTY:=1}"
fbi \
  -d $NYTONPI_FB \
  -T $NYTONPI_TTY \
  -a $outfile
