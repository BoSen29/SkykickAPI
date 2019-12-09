---
external help file: SkykickAPI-help.xml
Module Name: SkykickAPI
online version:
schema: 2.0.0
---

# Get-SKBackupLastSnapshotStats

## SYNOPSIS
Gets the stats of the last snapshots of the subscription.

## SYNTAX

```
Get-SKBackupLastSnapshotStats [-subscriptionId <guid>] [<CommonParameters>]
```

## DESCRIPTION
Gets the stats of the last snapshot of the subscription.

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-SKBackupLastSnapshotStats -subscriptionId "somesubscriptionId"
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
