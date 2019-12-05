function Set-SKVariable {
    [CmdletBinding()]
    param(
        [Parameter(
            Mandatory = $true, 
            Position=0)]
        [string]$name,
        [Parameter(
            Mandatory = $true, 
            Position=1,
            ValueFromPipeline = $true)]
        $value
    )
    Begin {

    }

    Process {
        if (!(Get-Module "UniversalDashboard*")) {
            Set-Variable -Name "script:$name" -Value $value -Scope Global
        }
        else {
            Set-Item -PSPath "Cache:$name" -Value $value
        }
    }
    
    End {
        return $true
    }
}