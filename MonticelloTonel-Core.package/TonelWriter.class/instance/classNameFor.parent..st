private
classNameFor: aMethodDefinition parent: aClassDefinition
	aClassDefinition ifNil: [ ^ aMethodDefinition fullClassName ].
	^ aMethodDefinition classIsMeta
		ifFalse: [ aMethodDefinition className ]
		ifTrue: [ 
			aClassDefinition isTraitDefinition
				ifFalse: [self className, ' class']
				ifTrue: [self className, ' classSide'] ]