---
external help file:
Module Name: SkykickAPI
online version:
schema: 2.0.0
---

# Invoke-SKBackupSharepointDiscovery

## SYNOPSIS
Invokes an Shrepoint discovery, returns an operation id to check progress with Get-SKOperationStatus.

## SYNTAX

```
Invoke-SKBackupSharepointDiscovery [-subscriptionId <guid>] [<CommonParameters>]
```

## DESCRIPTION
Invokes an Sharepoint discovery, returns an operation id to check progress with Get-SKOperationStatus.

## EXAMPLES

### Example 1
```powershell
PS C:\> Invoke-SKBackupSharepointDiscovery -subscriptionId "somesubscriptionId"
```

Gets active running backup jobs.

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
