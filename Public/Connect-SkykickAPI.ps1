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
            $return = "Connected to Skykick API"
        }
        else {
            $return = "Failed to connect to Skykick API"
        }
    }

    End {
        return $return
    }
}
