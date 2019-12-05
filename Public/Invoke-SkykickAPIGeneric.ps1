function Invoke-SkykickAPIGeneric {
    [CmdletBinding()]
    param (
        [Parameter(
            Mandatory = $true,
            Position = 0)]
        [string]$endpoint,
        [Parameter(
            Position = 1
        )]
        [ValidateSet(
            'GET', 
            'POST', 
            'PUT')]
        [string]$method = 'GET'
    )

    Begin {
        if($null -ne (Get-SKVariable -Name "SKHeader")) { 
            try {
                #validate credentials
                Invoke-RestMethod -Uri "https://apis.skykick.com/isalive" -Method GET -Headers (Get-SKVariable -name "SKHeaders") | Out-Null
            }
            catch {
                if ($_.Exception.Response.StatusCode -eq "401") {
                    #credentials failed
                    #try to generate a new access token

                    #store the cached variables in a local varaible, for future reference
                    $keys = Get-SKVariable -Name "SKKeys"
    
                    if ((Get-SKAuthToken -userId $keys.UserId -apikey $keys.APIKey) -eq $true) {
                        Write-Verbose "Reauthenticated, new token reccieved"
                    }
                    else {
                        throw ("Failed to refresh token.")
                    }
    
                }
                else {
                    #remove the header var, as it is invalid
                    Set-SKVariable -name "SKHeader" -value $null | Out-Null
                    throw ("IsAlive failed, non handled error $($Exception.Message)")
                }
            }
        }
        else {
            throw ("Not logged in. Run 'Connect-SkykickAPI' first.")
        }
    }

    Process {
        try {
            $return = Invoke-RestMethod -Uri "https://apis.skykick.com/$endpoint" -Headers (Get-SKVariable -name "SKHeader") -Method $method
        }
        catch {
            throw ("Unknown error: $($Exception.Message)")
        }
    }
    
    End {
        return $return
    }
}