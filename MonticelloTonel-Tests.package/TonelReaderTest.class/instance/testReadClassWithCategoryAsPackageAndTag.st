tests
testReadClassWithCategoryAsPackageAndTag
	"While reading Tonel files from older version of Pharo we do not have the difference between packages and tags so we try to infer it from the category and the folder name"

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
	#category : #''MonticelloTonel-Tests-Mocks-Base''
}'.

	self assert: classDefinition className equals: #MTMockSubclassOfA.
	self assert: classDefinition superclassName equals: #MTMockClassA.
	self assertCollection: classDefinition instVarNames hasSameElements: #( 'x' ).
	self assertCollection: classDefinition classVarNames hasSameElements: #( 'Y' ).
	self assert: classDefinition packageName equals: #'MonticelloTonel-Tests-Mocks'.
	self assert: classDefinition tagName equals: #Base.
	self assert: classDefinition comment equals: 'A comment'