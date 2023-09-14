tests
testLoadTraitWithoutClassTraitCompositionDoesNotHaveTraitComposition

	| classDefinition |
	classDefinition := self readDefinitionOfClass: 'SomeTrait' fromPackage: 'Kernel' whitContent: 'Trait {
	#name : #SomeTrait,
	#category : #Kernel,
	#package : #Kernel
}'.

	self deny: classDefinition hasClassTraitComposition