Import-Module SkykickAPI

#connecting to Skykick
Connect-SkykickAPI -apikey "MyAPIKey" -userId "MyUserId"

#get the subscriptions
$subscriptions = Get-SKSubscriptions

#get status all mailboxes in all subscriptions
foreach ($sub in $subscriptions) {
    (Get-SKBackupMailBackupStatus -subscriptionId $sub.id).IndividualMailboxes
}


