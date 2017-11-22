scanning
scanForStringIfMatch: aBlock
	self isStartingString ifFalse: [ ^ self ].
	self readUntil: [ char = $' and: [ stream peek ~= $' ] ].
	aBlock value