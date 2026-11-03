tests - recognizing
testIsTonelFileWithoutCommentAndWithLeadingSpaces

	self assert: (TonelFileImporter isTonelFile: (self fileNamed: 'Foo.st' contents: '

  Class{ #name : #Foo }')).
	self assert: (TonelFileImporter isTonelFile: (self fileNamed: 'Bar.st' contents: '"a ""quoted"" comment"

Trait
{ #name : #TBar }'))