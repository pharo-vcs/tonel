accessing
packageDir
	^ packageDir 
		ifNotNil: [ self fileUtils directoryFromPath: packageDir relativeTo: self directoryReference ]
		ifNil: [ self directoryReference  ]