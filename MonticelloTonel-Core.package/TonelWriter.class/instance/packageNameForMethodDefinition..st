private
packageNameForMethodDefinition: aMethodDefinition

	| category |
	self assert: aMethodDefinition category first = $*.
	category := aMethodDefinition category allButFirst.
	^ (MCWorkingCopy allWorkingCopies detect: ((category allSatisfy: #isLowercase)
			    ifTrue: [ [ :wc | category beginsWith: wc packageName asLowercase ] ]
			    ifFalse: [ [ :wc | category beginsWith: wc packageName ] ])) packageName