$package = 'MongoeVUE'

try {
  # HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\
  $msiid = '{5B55CD4F-146D-4B7E-9E75-DE4432797A43}'
  Uninstall-ChocolateyPackage $package 'MSI' -SilentArgs "$msIid /qb" -validExitCodes @(0)
  
  # the following is all part of error handling
  Write-ChocolateySuccess $package
} catch {
  Write-ChocolateyFailure $package "$($_.Exception.Message)"
  throw 
}
