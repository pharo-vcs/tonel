scanning
scanForCommentIfMatch: aBlock
	self isStartingComment ifFalse: [ ^ self ]. 
	self readUntil: [ :ch :prevCh | ch = $" and: [ prevCh ~= $" ] ].
	aBlock value
	