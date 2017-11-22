private
readUntil: aBlock
	[ stream atEnd not ]
	whileTrue: [
		prevPrevChar := prevChar.
		prevChar := char.
		char := stream next. 
		result nextPut: char.
		aBlock value ifTrue: [ ^ self ] ]