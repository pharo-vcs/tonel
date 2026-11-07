fixtures
traitFileContents

	^ '"
I am a test fixture: a trait with an instance-side and a class-side method.
"
Trait {
	#name : #TTonelFITestTrait,
	#category : #''TonelFileImporterTestData-Core'',
	#package : #TonelFileImporterTestData,
	#tag : #Core
}

{ #category : #accessing }
TTonelFITestTrait classSide >> classTraitValue [

	^ 43
]

{ #category : #accessing }
TTonelFITestTrait >> traitValue [

	^ 42
]
'