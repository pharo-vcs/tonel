tests
testLoadTraitWithoutClassTraitCompositionDoesNotHaveTraitComposition
	
	| classDefinition |

	classDefinition := self 
		readDefinitionOfClass: 'SomeTrait' 
		fromPackage: 'MonticelloTonel-Tests'
		whitContent: [ :s | s << 
'Trait {
	#name : #SomeTrait,
	#category : #Kernel
}' ].

	self deny: classDefinition hasClassTraitComposition.