tests - selecting
testRemoveMethodOfDistinguishesInstanceAndClassSide

	| importer remaining |
	importer := TonelFileImporter fromString: self classFileContents , '
{ #category : #accessing }
TonelFITestFoo class >> alpha [
	^ 1
]
'.
	self assert: (importer methodsOf: #TonelFITestFoo) size equals: 5.
	importer removeMethod: #alpha of: #TonelFITestFoo.
	remaining := (importer methodsOf: #TonelFITestFoo) select: [ :each | each selector = #alpha ].
	self assert: remaining size equals: 1.
	self assert: remaining first classIsMeta.
	importer removeMethod: #alpha of: 'TonelFITestFoo class'.
	self assert: ((importer methodsOf: #TonelFITestFoo) noneSatisfy: [ :each | each selector = #alpha ])