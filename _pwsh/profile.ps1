#color
$Host.PrivateData.ErrorBackgroundColor = [console]::BackgroundColor 

#command aliases
function x{exit}
function c{cls}
function e{echo $args}

#navigation macros
function .{cd .}
function ..{cd ..}
function ...{cd ..\..}
function ....{cd ..\..\..}
function .....{cd ..\..\..\..}
function ~{cd $env:USERPROFILE}
function /{cd \}
function \{cd \}
