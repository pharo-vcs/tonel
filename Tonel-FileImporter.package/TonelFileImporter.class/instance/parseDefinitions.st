private
parseDefinitions
	"An empty or blank file has no definitions; otherwise let TonelParser signal its parse errors."

	self contents isAllSeparators ifTrue: [ ^ OrderedCollection new ].
	^ (TonelParser parseString: self contents) asOrderedCollection