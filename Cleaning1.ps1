Set-ExecutionPolicy Unrestricted -Scope CurrentUser

Remove-Item -Path C:\Windows\Prefetch -Recurse -Force -ErrorAction 'silentlycontinue'

Remove-Item -Path C:\Windows\Temp -Recurse -Force  -ErrorAction 'silentlycontinue'

Get-ChildItem -Path 'C:\Users' | foreach {
     Get-ChildItem -Path "$($_.FullName)\AppData\Local\Temp" -ErrorAction 'silentlycontinue' | Remove-Item -Force -Recurse -ErrorAction 'silentlycontinue'
}


$choice = ""
while ($choice -notmatch "[y|n]"){
    $choice = read-host "Do you want clear Recycle Bin? (Y/N)"
}

if ($choice -eq "y"){
    Clear-RecycleBin -Force  
}
else
{
    write-host "Canceled!"
}

exit