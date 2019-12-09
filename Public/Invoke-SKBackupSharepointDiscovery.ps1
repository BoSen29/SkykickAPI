function Invoke-SKBackupSharepointDiscovery {
    [CmdletBinding()]
    param (
        [Parameter(
            Mandatory = $true,
            Position = 0,
            ValueFromPipeline = $true)]
        [guid]$subscriptionId
    )
    
    Begin {
        $endpoint = "/Backup/$subscriptionId/discoversites"
    }

    Process {
        $return = Invoke-SkykickAPIGeneric -endpoint $endpoint -method POST
    }

    End {
        return $return
    }
}
