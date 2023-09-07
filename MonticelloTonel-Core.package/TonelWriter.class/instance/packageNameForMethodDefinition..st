private
packageNameForMethodDefinition: aMethodDefinition

	| category |
	self assert: aMethodDefinition category first = $*.
	category := aMethodDefinition category allButFirst.
	^ (MCWorkingCopy allWorkingCopies detect: [ :wc | category sameAs: wc packageName ]) packageName