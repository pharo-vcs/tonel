tests
testSplitMethodSourceIntoCorrupted
	| writer definition |
	writer := TonelWriter new.

	"Sometimes data loaded from old MCZs are corrupted and the selector doesn't match the source, resulting in infinite search loop."
	definition := MCMethodDefinition
		className: #SomeClass
		selector: #nameØY
		category: 'accessing'
		timeStamp: nil
		source:
			'named: aString
	^ self named: aString environment: self defaultEnvironment'.
	self
		should: [ writer splitMethodSource: definition into: [ :d :s |  ] ]
		raise: TonelWriteError