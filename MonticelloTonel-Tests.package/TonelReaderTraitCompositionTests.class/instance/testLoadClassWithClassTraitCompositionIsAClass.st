tests
testLoadClassWithClassTraitCompositionIsAClass
	| classDefinition |

	classDefinition := self 
		readDefinitionOfClass: 'SomeObject' 
		fromPackage: 'MonticelloTonel-Tests'
		whitContent: [ :s | s << 
'Class {
	#name : #SomeObject,
	#superclass : #Object,
	#traitComposition : ''T1 + T1'',
	#classTraits : ''T1 classTrait + T2 classTrait'',	
	#category : #''MonticelloTonel-Tests''
}' ].

	self assert: classDefinition isClassDefinition