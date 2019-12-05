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
        try {
            if (Get-SKWhoAmI) {
                $return = $true
            }
        }
        catch {
            #not autenticated already, proceeding.
        }
    }

    Process {
        if ($null -eq $return) {
            if (Get-SKAuthToken -apikey $apikey -userId $userId) {
                $return = $true
            }
            else {
                $return = $false
            }
        }
    }

    End {
        return $return
    }
}
