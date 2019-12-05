function Get-SKBackupSharepointBackupStatus {
    [CmdletBinding()]
    param (
        [Parameter(
            Mandatory = $true,
            Position = 0,
            ValueFromPipeline = $true)]
        [guid]$subscriptionId
    )
    
    Begin {
        $endpoint = "/Backup/$subscriptionId/sites"
    }

    Process {
        $return = Invoke-SkykickAPIGeneric -endpoint $endpoint -method GET
    }

    End {
        return $return
    }
}
