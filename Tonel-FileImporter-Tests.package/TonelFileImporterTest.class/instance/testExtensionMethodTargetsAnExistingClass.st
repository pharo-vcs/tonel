tests - browser protocol
testExtensionMethodTargetsAnExistingClass

	| method |
	method := (TonelFileImporter on: self extensionFile) methodDefinitions first.
	self assert: method existsBehavior.
	self assert: method targetClass identicalTo: String