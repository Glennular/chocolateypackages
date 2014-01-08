try { 
  $packageName = 'mongoose.tiny' 
  $url = 'https://mongoose.googlecode.com/files/mongoose-5.0.exe'
  $scriptPath = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
  $mongoosePath = Join-Path $scriptPath 'mongoose.tiny.exe'
  
  Get-ChocolateyWebFile "$packageName" "$mongoosePath" "$url"
  
  Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw
}
