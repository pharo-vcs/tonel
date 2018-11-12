scanning
scanForString
	self isStartingString ifFalse: [ ^ false ].
	self readUntilTermination: $'.
	^true