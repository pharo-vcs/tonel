scanning
scanForLiteralCharacter
	self isStartingLiteralCharacter ifFalse: [ ^ false ]. 
	self readNext.
	^true