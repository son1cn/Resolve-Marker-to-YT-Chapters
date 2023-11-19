# DaVinci Resolve Markers to YouTube Chapter times

## Goal
This repo is a simple Powershell script (resolve-to-YT-chapters.ps1) that takes in the .csv from Resolve's Marker output and pulls out only the 'Source In' and 'Notes' Columns, which can be used to make YouTube Chapter timecodes for Video Descriptions

### Input:
Resolve marker export .csv files in \input-csv\

### Output
.txt file(s) in \output-txt\ with:
  'Source In' (with milliseconds cut out)
  'Notes' 
Ready for easy Copy-Paste to your YouTube video description
