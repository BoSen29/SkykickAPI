function Connect-SkykickAPI {
    [CmdletBinding()]
    param (
        [Parameter(
            Mandatory = $true,
            Position = 0)]
        [string]$apikey,
        [Parameter(
            Mandatory = $true,
            Position = 1)]
        [string]$userId,
        [Parameter(
            Position = 2)]
        [ValidateSet('Partner', 'Distributor')]
        [string]$scope = 'Partner'
    )
    
    Begin {
        
    }

    Process {
        if (Get-SKAuthToken -apikey $apikey -userId $userId) {
            $return = $true
        }
        else {
            $return = $false
        }
    }

    End {
        return $return
    }
}
