writing
writeExtensionMethods: methods className: className

	| nl |
	nl := self newLine.
	self fileUtils
		writeStreamFor: className , '.extension.st'
		in: self packageDir
		do: [ :s | 
			| definition |
			definition := Dictionary new.
			self at: #name put: className in: definition.
			s << 'Extension ' << (self toSTON: definition) << nl.
			(methods sorted: [ :a :b | a selector < b selector ]) do: [ :each | 
				self writeMethodDefinition: each on: s ] ]