$Public = @( Get-ChildItem -Recurse -Path "$PSScriptRoot\Public\" -filter *.ps1 )

Foreach ($function in $Public) {
    try {
        . $function.FullName
    }
    catch {
        Write-Error -Message "Failed to import function $($function.FullName): $_"
    }
}

Export-ModuleMember -Function $Public.BaseName