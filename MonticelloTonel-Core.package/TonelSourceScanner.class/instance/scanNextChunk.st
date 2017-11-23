scanning
scanNextChunk
	self readNext.	
	self scanForBlockIfMatch: [ ^ self ].
	self scanForCommentIfMatch: [ ^ self ].
	self scanForStringIfMatch: [ ^ self ].
	self scanForLiteralArrayIfMatch: [ ^ self ]