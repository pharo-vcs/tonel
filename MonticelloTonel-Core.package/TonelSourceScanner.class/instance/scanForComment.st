scanning
scanForComment
	self isStartingComment ifFalse: [ ^ false ]. 
	self readUntilTermination: $".
	^true