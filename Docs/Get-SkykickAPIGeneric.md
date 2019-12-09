---
external help file: SkykickAPI-help.xml
Module Name: SkykickAPI
online version:
schema: 2.0.0
---

# Get-SkykickAPIGeneric

## SYNOPSIS
Performs an generic request to the Skykick api, to the specified endpoint with the specified method and adds the authenticated header.

## SYNTAX

```
Get-SkykickAPIGeneric [-endpoint <string>] [-method <string>] [<CommonParameters>]
```

## DESCRIPTION
Performs an generic request to the Skykick api, to the specified endpoint with the specified method and adds the authenticated header.

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-SkykickAPIGeneric -endpoint "backup/?" -method GET
```

## PARAMETERS

### -endpoint
URL after "https://apis.skykick.com/" for the rest-api.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -method
UserId to Skykick

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: GET, POST, PUT

Required: True
Position: 1
Default value: None
Accept pipeline input: False
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
