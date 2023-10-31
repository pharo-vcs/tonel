private
packageNameForMethodDefinition: aMethodDefinition

	| protocol |
	self assert: aMethodDefinition protocol first = $*.
	protocol := aMethodDefinition protocol allButFirst.
	^ (MCWorkingCopy allWorkingCopies detect: [ :wc | protocol sameAs: wc packageName ]) packageName