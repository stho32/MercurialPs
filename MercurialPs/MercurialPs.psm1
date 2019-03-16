$ErrorActionPreference = "Stop"
Add-Type -AssemblyName System.Web

Push-Location $PSScriptRoot

Get-ChildItem -Filter "*.ps1" -Recurse | 
	ForEach-Object {
		#Write-Host "Loading $($_.Name) ..."
		. ($_.Fullname)
}

Pop-Location
