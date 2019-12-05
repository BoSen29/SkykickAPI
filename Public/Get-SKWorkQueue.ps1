function Get-SKWorkQueue {
    [CmdletBinding()]
    param (
        #this function doesn't take any parameters
    )
    
    Begin {
        $endpoint = "/workqueue"
    }

    Process {
        $return = Invoke-SkykickAPIGeneric -endpoint $endpoint -method GET
    }

    End {
        return $return
    }
}
