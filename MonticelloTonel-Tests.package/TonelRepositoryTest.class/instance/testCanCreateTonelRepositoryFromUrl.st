tests
testCanCreateTonelRepositoryFromUrl

	repository := MCRepository fromUrl:
		              (self homeDirectoryUrl scheme: #tonel) asString.
	self assert: (repository isKindOf: TonelRepository).

	repository := MCRepository fromUrl: 'tonel://.'.
	self assert: (repository isKindOf: TonelRepository)