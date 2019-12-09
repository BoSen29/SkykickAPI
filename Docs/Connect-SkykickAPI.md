---
external help file: SkykickAPI-help.xml
Module Name: SkykickAPI
online version:
schema: 2.0.0
---


# Connect-SkykickAPI

## SYNOPSIS
Authenticate to the Skykick API, and store the auth token for future reference. Returns true on success and false on failure.

## SYNTAX

```
Connect-SkykickAPI [-apikey <string>] [-userid <string>] [-scope <string>] [<CommonParameters>]
```

## DESCRIPTION
Authenticate to the Skykick API, and store the auth token for future reference.

## EXAMPLES

### Example 1
```powershell
PS C:\> Connect-SkykickAPI -apikey "someapikey" -userid "someuserkey"
```

Authenticates to the Skykick API with the given apikey and userid

## PARAMETERS

### -apikey
APIKey to Skykick

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

### -userId
UserId to Skykick

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -scope
Scope to request access to.

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: Partner, Distributor

Required: false
Position: 2
Default value: Partner
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
