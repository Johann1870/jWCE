Get-ChildItem -Path $args[0] -Recurse -File | Get-FileHash -Algorith MD5 | Select-Object * -ExcludeProperty Algorithm | Export-Csv -Path $args[1] -UseCulture -NoTypeInformation
