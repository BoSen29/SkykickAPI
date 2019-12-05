---
external help file:
Module Name: SkykickAPI
online version:
schema: 2.0.0
---

# Get-SKOperationStatus

## SYNOPSIS
Gets the status of an given operation id.

## SYNTAX

```
Get-SKOperationStatus [-operationId <guid>] [<CommonParameters>]
```

## DESCRIPTION
Gets the status of an given operation id.

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-SKOperationStatus -operationId "someoperationId"
```

## PARAMETERS

### -operationId

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
