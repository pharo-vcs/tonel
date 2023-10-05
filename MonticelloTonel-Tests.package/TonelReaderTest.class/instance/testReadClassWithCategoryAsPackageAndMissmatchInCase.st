tests
testReadClassWithCategoryAsPackageAndMissmatchInCase

	| classDefinition |
	classDefinition := self readDefinitionOfClass: 'MTMockSubclassOfA' fromPackage: 'MonticelloTonel-Tests-Mocks' whitContent: '"
A comment
"
Class {
	#name : #MTMockSubclassOfA,
	#superclass : #MTMockClassA,
	#instVars : [
		''x''
	],
	#classVars : [
		''Y''
	],
	#category : #''MonticelloTonel-tests-mocks''
}'.

	self assert: classDefinition className equals: #MTMockSubclassOfA.
	self assert: classDefinition superclassName equals: #MTMockClassA.
	self assertCollection: classDefinition instVarNames hasSameElements: #( 'x' ).
	self assertCollection: classDefinition classVarNames hasSameElements: #( 'Y' ).
	self assert: classDefinition packageName equals: #'MonticelloTonel-tests-mocks'.
	self assert: classDefinition tagName isNil.
	self assert: classDefinition comment equals: 'A comment'