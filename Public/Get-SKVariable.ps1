function Get-SKVariable {
    [CmdletBinding()]
    param(
        [Parameter(
            Mandatory = $true, 
            Position = 0, 
            ValueFromPipeline=$true)]
        [string]$name
    )

    Begin {

    }

    Process {
        if (!(Get-Module "UniversalDashboard*")) {
            $return = (Get-Variable -Name "script:$name" -ErrorAction SilentlyContinue -Scope Global -ValueOnly)
        }
        else {
            $return =  (Get-Item -PSPath "Cache:$name" -ErrorAction SilentlyContinue)
        }
    }

    End {
        return $return
    }
    
}