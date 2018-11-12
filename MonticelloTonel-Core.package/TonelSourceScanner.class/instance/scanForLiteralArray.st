scanning
scanForLiteralArray
	| literalCount |
	self isStartingLiteralArray ifFalse: [ ^ false ]. 
	literalCount := 1.
	self readUntil: [
		self scanForLiteralCharacter
			or: [ self scanForString
			or: [ self scanForComment
			or: [ char = $( ifTrue: [ literalCount := literalCount + 1 ].
					char = $) ifTrue: [ literalCount := literalCount - 1 ]]]].
		literalCount = 0 ].
	^true