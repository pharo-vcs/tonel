scanning
scanNextChunk
	char := stream next.
	result nextPut: char.

	self scanForCommentIfMatch: [ ^ self ].
	self scanForStringIfMatch: [ ^ self ].
	self scanForLiteralArrayIfMatch: [ ^ self ].
	"is nothing of the previous, scan regularly"
	(char = $[ and: [  prevChar ~= $$ ]) ifTrue: [ count := count + 1 ].
	(char = $] and: [ prevChar ~= $$ ]) ifTrue: [ count := count - 1 ].
	count = 0 ifTrue: [ isFinished := true ].
	prevPrevChar := prevChar.
	prevChar := char