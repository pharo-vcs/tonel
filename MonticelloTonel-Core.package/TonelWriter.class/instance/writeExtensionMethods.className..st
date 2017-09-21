writing
writeExtensionMethods: methods className: className
	| nl |
	nl := self newLine.
	(self packageDir / (className, '.extension.st')) 
		ensureDelete;
		writeStreamDo: [ :s |
			s << 'Extension ' << (self toSTON: { #name -> className } asDictionary) << nl.
			(methods sorted: [ :a :b | a selector < b selector ])
				do: [ :each | self writeMethodDefinition: each on: stream ] ]