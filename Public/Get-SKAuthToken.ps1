
function Get-SKAuthToken {
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
        #building of basic auth's headers
        $toBase = "${userId}:${apikey}"
        $bytes = [System.Text.Encoding]::ASCII.GetBytes($tobase);
        $base64 = [System.Convert]::ToBase64String($bytes)

        #required headers
        $headers = @{
            "Ocp-Apim-Subscription-Key" = "$apikey"
            Authorization = "Basic $base64"
        }

        #contenttype of the required sorts
        $contenttype = "application/x-www-form-urlencoded"

        #body definition
        $body = "grant_type=client_credentials&scope=$scope"
    }
    
    Process {
        try {
            $returned = Invoke-RestMethod -Uri "https://apis.skykick.com/auth/token?%s" -Headers $headers -ContentType $contenttype -Body $body -Method POST -ErrorAction SilentlyContinue
            
            Write-Verbose "AuthToken reccieved, cached in $($script:SKToken.expires_in)"
            
            #store a prebuilt header for future reference
            Set-SKVariable -Name "SKHeader" -value @{
                "Ocp-Apim-Subscription-Key" = "$apikey"
                Authorization = "Bearer $($returned.access_token)"
            } | Out-Null

            #store the keys for future automatic resignins
            Set-SKVariable -Name "SKKeys" -value @{
                APIKey = $apikey
                UserId = $userId 
            } | Out-Null

            #return true for successful auth
            $return = $true
        }
        catch {
            if ($_.Exception.Response.StatusCode -eq "401") {
                $return = $false
            }
            else {
                Write-Output $_.Exception.Message
                $return =  $false
            }
        }
    }

    End {
        return $return
    }
    
}