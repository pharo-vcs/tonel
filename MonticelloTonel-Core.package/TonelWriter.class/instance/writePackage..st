writing
writePackage: aDefinition

	packageDir := self obtainPackageDir: aDefinition.
	self flag: #todo. "this is lame... removing and rewriting full package needs to be rethink :)"
	(self fileUtils directoryExists: self packageDir) ifTrue: [ 
		self fileUtils deleteAll: self packageDir ].  
	self fileUtils ensureDirectoryExists: self packageDir.
	self fileUtils 
		writeStreamFor: 'package.st' 
		in: self packageDir 
		do: [ :s | 
			s 
				<< 'Package ' 
				<< (self toSTON: { #name ->  packageDir asSymbol } asDictionary) 
				<< self newLine ]