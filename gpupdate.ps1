
unblock-file -Path "YOUR-UNC-PATH" -WarningAction SilentlyContinue


$updatepolicy = gpupdate /force 


if ($updatepolicy) {

Write-Host "$updatepolicy"

Write-Host "local policy was sucessfully updated!"

} else {

Write-Host "local policy wasn't able to be updated!"

stop-process -id $pid

}

stop-process -id $pid
