tests
testLoadClassWithoutClassTraitCompositionDoesNotHaveTraitComposition

	| classDefinition |
	classDefinition := self readDefinitionOfClass: 'SomeObject' fromPackage: 'Kernel' whitContent: 'Class {
	#name : #SomeObject,
	#superclass : #Object,
	#category : #Kernel,
	#package : #Kernel
}'.

	self deny: classDefinition hasClassTraitComposition