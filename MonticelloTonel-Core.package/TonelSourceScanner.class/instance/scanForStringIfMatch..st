scanning
scanForStringIfMatch: aBlock
	self isStartingString ifFalse: [ ^ self ].
	self readUntil: [ char = $' and: [ prevChar ~= $' ] ].
	aBlock value