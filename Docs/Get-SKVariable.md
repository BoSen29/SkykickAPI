---
external help file:
Module Name: SkykickAPI
online version:
schema: 2.0.0
---

# Get-SKVariable

## SYNOPSIS
Gets the variable with the given name. Will use $script if Universal Dashboard is not loaded.

## SYNTAX

```
Get-SKVariable [-name <string>] [<CommonParameters>]
```

## DESCRIPTION
Gets the variable with the given name. Will use $script if Universal Dashboard is not loaded.

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-SKVariable -name "somevariable"
```

Gets the relevant variable.

## PARAMETERS

### -name
Variable name.

```yaml
Type: string
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
