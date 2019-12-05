function Get-SKBackupSubscriptionSettings {
    [CmdletBinding()]
    param (
        [Parameter(
            Mandatory = $true,
            Position = 0,
            ValueFromPipeline = $true)]
        [guid]$subscriptionId
    )
    
    Begin {
        $endpoint = "/Backup/$subscriptionId/subscriptionsettings"
    }

    Process {
        $return = Invoke-SkykickAPIGeneric -endpoint $endpoint -method GET
    }

    End {
        return $return
    }
}
