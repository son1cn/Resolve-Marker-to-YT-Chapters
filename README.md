# DaVinci Resolve Markers to YouTube Chapter times

## Goal
Combining 'Chapters from Markers' and a certain color marker in the Resolve Delivery tab leads to YouTube quite easily adding Chapters to your videos. This quick script cuts out the timecodes from a Resolve marker .csv export for less friction during export/delivery.

This repo is a simple Powershell script (resolve-to-YT-chapters.ps1) that takes in the .csv from Resolve's Marker output (in the \input-csv\ folder) and pulls out only the 'Source In' and 'Notes' Columns, which can be used to make YouTube Chapter timecodes for Video Descriptions. It then outputs the trimmed file as a text file in \output-txt\, ready to Copy-Paste to your YouTube Description.
##### Assumption: All the markers that are exported from Resolve are wanted for YouTube Chapters. I.e. only one color marker

### Resolve Notes:
Your timeline needs:
- To start at 00:00:00:00, which differs from the default 01:00:00:00. Can be changed for existing timelines via right click -> Timelines -> Starting Timecode...
- A marker at 00:00:00:00 (e.g. intro)

### Input:
Resolve marker export .csv files in \input-csv\

### Output
.txt file(s) in \output-txt\ with:

    'Source In' (with milliseconds cut out)
  
    'Notes' 
  
Ready for easy Copy-Paste to your YouTube video description
