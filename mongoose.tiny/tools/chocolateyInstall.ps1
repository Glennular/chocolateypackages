try { 
  $packageName = 'mongoose.tiny' 
  $url = 'http://cesanta.com/cgi-bin/api.cgi?act=dl&id=O0ZX1GPGIE7RVAH1&os=win'
  $scriptPath = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
  $mongoosePath = Join-Path $scriptPath 'mongoose.tiny.exe'
  
  Get-ChocolateyWebFile "$packageName" "$mongoosePath" "$url"
  
  Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw
}
