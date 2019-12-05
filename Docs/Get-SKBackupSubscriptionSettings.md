---
external help file:
Module Name: SkykickAPI
online version:
schema: 2.0.0
---

# Get-SKBackupSubscriptionSettings

## SYNOPSIS
Gets the settings of the subscription.

## SYNTAX

```
Get-SKBackupSubscriptionSettings [-subscriptionId <guid>] [<CommonParameters>]
```

## DESCRIPTION
Gets the settings of the subscription.

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-SKBackupSubscriptionSettings -subscriptionId "somesubscriptionId"
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
