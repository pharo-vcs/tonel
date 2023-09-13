tests
testReadClass

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
	#category : #''MonticelloTonel-Tests-Mocks-Base'',
	#package : #''MonticelloTonel-Tests-Mocks'',
	#tag : #Base
}'.

	self assert: classDefinition className equals: #MTMockSubclassOfA.
	self assert: classDefinition superclassName equals: #MTMockClassA.
	self assertCollection: classDefinition instVarNames hasSameElements: #( 'x' ).
	self assertCollection: classDefinition classVarNames hasSameElements: #( 'Y' ).
	self assert: classDefinition packageName equals: #'MonticelloTonel-Tests-Mocks'.
	self assert: classDefinition tagName equals: #Base.
	self assert: classDefinition comment equals: 'A comment'