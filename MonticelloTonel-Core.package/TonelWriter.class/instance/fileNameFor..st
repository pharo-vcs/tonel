private
fileNameFor: aClassDefinition
	^ String
		streamContents: [ :s | 
			s
				<< aClassDefinition className;
				<< $.;
				<< (self typeOf: aClassDefinition) asLowercase;
				<< '.st' ]