tests
testLoadClassWithoutClassTraitCompositionDoesNotHaveTraitComposition
	
	| classDefinition |

	classDefinition := self 
		readDefinitionOfClass: 'SomeObject' 
		fromPackage: 'MonticelloTonel-Tests'
		whitContent: [ :s | s << 
'Class {
	#name : #SomeObject,
	#superclass : #Object,
	#category : #Kernel
}' ].

	self deny: classDefinition hasClassTraitComposition.