
# CLI Sample Project

## gitSQL SQL Server Edition

### Purpose

To demonstrate usage of CLI features on gitSQL.

See https://gitsql.net/documentation for more detailed usage instructions.

### Usage Examples

1. `Import.bat` Imports AdventureWorks2012 from `source_control` into the desired SQL Server Instance as specified in the batch file. 


2. `Export.bat` 
 Exports AdventureWorks2012 into `source_control` from the desired SQL Server Instance as specified int he batch file. *Options file usage included*

3. `opts.json` Contains sample options which can be used as part of an export. N.B. This options is required for an Import where more than one DB is detected in the source control path.

### Options file

```
{
	"includeDrop": "false",
	"includeDependencies": "false",
	"includeIndexes" : "false",
	"includeConstraints": "false",
	"includeTriggers": "false",
	"replace":{
		"findMe": "SET QUOTED_IDENTIFIER ON",
		"replaceWith": ""
	},
	"db": "AdventureWorks2012"
}
```