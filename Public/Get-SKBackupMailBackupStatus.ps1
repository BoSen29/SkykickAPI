function Get-SKBackupMailBackupStatus {
    [CmdletBinding()]
    param (
        [Parameter(
            Mandatory = $true,
            Position = 0,
            ValueFromPipeline = $true)]
        [guid]$subscriptionId
    )
    
    Begin {
        $endpoint = "/Backup/$subscriptionId/mailboxes"
    }

    Process {
        $return = Invoke-SkykickAPIGeneric -endpoint $endpoint -method GET
    }

    End {
        return $return
    }
}
