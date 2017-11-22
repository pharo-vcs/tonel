scanning
scanForCommentIfMatch: aBlock
	self isStartingComment ifFalse: [ ^ self ]. 
	self readUntilTermination: $".
	aBlock value