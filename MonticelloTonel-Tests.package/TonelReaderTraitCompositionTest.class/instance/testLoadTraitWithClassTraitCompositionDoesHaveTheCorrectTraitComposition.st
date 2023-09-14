tests
testLoadTraitWithClassTraitCompositionDoesHaveTheCorrectTraitComposition

	| classDefinition |
	classDefinition := self readDefinitionOfClass: 'SomeTrait' fromPackage: 'MonticelloTonel-Tests' whitContent: 'Trait {
	#name : #SomeTrait,
	#traits : ''T1 + T1'',
	#classTraits : ''T1 classTrait + T2 classTrait'',
	#category : #''MonticelloTonel-Tests'',
	#package : #''MonticelloTonel-Tests''
}'.

	self assert: classDefinition classTraitComposition equals: 'T1 classTrait + T2 classTrait'