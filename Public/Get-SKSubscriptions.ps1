function Get-SKSubscriptions {
    [CmdletBinding()]
    param (
        #This function doesn't take any commands
    )
    
    Begin {
        $endpoint = "Backup/?"
    }

    Process {
        $return = Invoke-SkykickAPIGeneric -endpoint $endpoint -method GET
    }

    End {
        return $return
    }
}
