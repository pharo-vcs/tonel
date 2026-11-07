tests - browser protocol
testMethodDefinitionBrowserProtocol

	| tricky |
	tricky := (TonelFileImporter on: self classFile) methodDefinitions detect: [ :each | each selector = #tricky ].
	self assert: tricky contents equals: tricky source.
	self assert: tricky methodSelector equals: #tricky.
	self assert: tricky stamp equals: tricky timeStamp.
	self deny: tricky existsBehavior.
	self assert: tricky targetClass isNil