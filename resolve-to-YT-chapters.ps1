# This script takes ingests Resolve marker export files (as .csv) in \input-csv\  
# and then outputs .txt files into \output-txt\ for easy YouTube Video Chapters for Video Descriptions

#Example output txt:
#00:00:00 Intro
#00:00:19 Background
#00:02:21 Tradeoffs
#00:04:11 Outro

#grab the Files from \input-csv folder
$files = Get-ChildItem $PSScriptRoot"\input-csv"
#iterate on the files
foreach ($f in $files){
    #check for .txt in input folder and skip
    if ((Split-Path -Path $f -Leaf).Split(".")[1] -eq 'txt'){continue}  
    #pull in csv
    $csv = Import-Csv $PSScriptRoot"\input-csv\"$f -Header '#','Reel','Match','V','C','Dur','Source In','Source Out','Record Duration','Record In','Record Out','Name','Comments','Source Start','Source End','Source Duration','Codec','Source FPS','Resolution','Color','Notes','EDL Clip Name','Marker','Keywords' | select 'Source In','Notes' 
    #trim the 'Source In' filed to remove milliseconds, add to string array
    $out = @()
    ForEach ($notes in $csv){
        $out += $notes.'Source In'.Substring(0,8) + " " + $notes.Notes
    } 
    #set output filename
    $output = $PSScriptRoot+"\output-txt\"+$f.BaseName+".txt"
    #output the file as .txt
    $out | Out-File -Filepath $output
    #write to window 
    Write-Host $f complete
}
#pause at the end
cmd /c 'pause'