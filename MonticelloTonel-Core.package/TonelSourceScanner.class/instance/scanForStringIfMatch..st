scanning
scanForStringIfMatch: aBlock
	self isStartingString ifFalse: [ ^ self ].
	self readUntilTermination: $'.
	aBlock value.