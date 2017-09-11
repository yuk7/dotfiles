# Copyright (c) 2016 yuk7 <yukx00@gmail.com>
# Released under the MIT license
# http://opensource.org/licenses/mit-license.php

$cpath=Split-Path $MyInvocation.MyCommand.Path
$dpath=[Environment]::GetFolderPath("MyDocuments")+"\WindowsPowerShell"

Remove-Item $dpath"\Microsoft.PowerShell_profile.ps1.bak" 2>$null
Move-Item $dpath"\Microsoft.PowerShell_profile.ps1" $dpath"\Microsoft.PowerShell_profile.ps1.bak" 2>$null

New-Item -ItemType HardLink -Path $dpath -Name Microsoft.PowerShell_profile.ps1 -Value $cpath\Microsoft.PowerShell_profile.ps1 >$null

