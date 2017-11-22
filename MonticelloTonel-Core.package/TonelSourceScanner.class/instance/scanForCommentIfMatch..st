scanning
scanForCommentIfMatch: aBlock
	self isStartingComment ifFalse: [ ^ self ]. 
	self readUntil: [ char = $" and: [ stream peek ~= $" ] ].
	aBlock value