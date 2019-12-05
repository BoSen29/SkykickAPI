function Get-SKWhoAmI {
    [CmdletBinding()]
    param (
        #this function doesn't take any parameters
    )
    
    Begin {
        $endpoint = "/whoami"
    }

    Process {
        $return = Invoke-SkykickAPIGeneric -endpoint $endpoint -method GET
    }

    End {
        return $return
    }
}
