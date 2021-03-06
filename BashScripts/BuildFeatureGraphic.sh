#!/bin/bash

# Script to create "Feature Graphic". This graphic is mandatory 
# for the store listing of the app and has to have exactly
# the size of 1024 x 500 px. It is shown at the top of the
# app store listing.
#
# See section "Feature Graphic" in: 
# https://support.google.com/googleplay/android-developer/answer/1078870?hl=en
#
# The feature graphic generated by this script is just a scaled down
# app icon centered over a black background. 
#
# Prerequisites: 
# * ImageMagick has to be installed.
#
# * Icon in original size 512x512 has to be in folder where this script
#   is to be executed; name for icon: AppIcon_512x512.png
#
#
# For an example file generated by this script see the following URL:
# https://chbosync4android.googlecode.com/svn/wiki/images/AppStoreListing_FeatureGraphic_1024x500.png
#
# This script is distributed WITHOUT ANY WARRANTY!
#
# September 2014, December 2014, May 2015.


PATH=$PATH:/usr/bin  # Needed so that script can be started with double click when using Cygwin

SOURCE_ICON=AppIcon_512x512.png
BACKGROUND_PICTURE=EmptyBlack_1024x500.png
ICON_RESIZED=AppIcon_480x480.png
TRAGET_FILE=Result_FeatureGraphic_1024x500.png


# Step 0: Check presence of original icon
if [ ! -f $SOURCE_ICON ]
then
  echo -e "\nCould not find input file \""${SOURCE_ICON}"\", so aborting script.\n"
  echo -e "\n\nWaiting for ENTER key ...\n"
  read DUMMY_VAR
  exit
fi


# Step 1: Create black rectangle of target size
/usr/bin/convert -size 1024x500 xc:black $BACKGROUND_PICTURE
# Using fully qualified path to convert to prevent that Window's "convert.exe"
# is started (convert.exe is for conversion of FAT volumes to NTFS).


# Step 2: Resize icon from 512x512 to 480x80
/usr/bin/convert -resize 480x480 $SOURCE_ICON $ICON_RESIZED


# Schritt 3: App-Icon in Hintergrund-Grafik einfuegen
# Step 3: Create actual target file by appending resized icon on black background
composite -gravity center $ICON_RESIZED $BACKGROUND_PICTURE  $TRAGET_FILE

echo -e "\nCreated file: "$(du -sh $ZIEL_DATEI)


echo -e "\n\nWaiting for ENTER key ...\n"
read DUMMY_VAR
