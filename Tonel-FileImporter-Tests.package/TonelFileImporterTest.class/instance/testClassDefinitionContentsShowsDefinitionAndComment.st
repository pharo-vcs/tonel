tests - browser protocol
testClassDefinitionContentsShowsDefinitionAndComment

	| classDefinition |
	classDefinition := (TonelFileImporter on: self classFile) classDefinitions first.
	self assert: (classDefinition contents includesSubstring: 'Object subclass: #TonelFITestFoo').
	self assert: (classDefinition contents includesSubstring: '"comment" and methods contain ] and [')