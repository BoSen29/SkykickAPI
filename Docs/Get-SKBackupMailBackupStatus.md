---
external help file:
Module Name: SkykickAPI
online version:
schema: 2.0.0
---

# Get-SKBackupMailBackupStatus

## SYNOPSIS
Gets the stats of backup of mailboxes in the subscription.

## SYNTAX

```
Get-SKBackupMailBackupStatus [-subscriptionId <guid>] [<CommonParameters>]
```

## DESCRIPTION
Gets the stats of backup of mailboxes in the subscription.

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-SKBackupMailBackupStatus -subscriptionId "somesubscriptionId"
```

## PARAMETERS

### -subscriptionId
SubscriptionId from Get-SKSubscriptions

```yaml
Type: guid
Parameter Sets: (All)
Aliases:

Required: True
Position: 0
Default value: None
Accept pipeline input: yes
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS
